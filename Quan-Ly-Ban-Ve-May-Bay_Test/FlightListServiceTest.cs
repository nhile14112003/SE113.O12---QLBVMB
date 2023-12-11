using Moq;
using Quan_Ly_Ban_Ve_May_Bay.Service;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quan_Ly_Ban_Ve_May_Bay_Test
{
    [TestClass]
    public class FlightListServiceTest
    {
        readonly FlightListService flightListService;
        readonly Mock<IDbConnection> moqConnection;
        public FlightListServiceTest()
        {
            this.moqConnection = new Mock<IDbConnection>(MockBehavior.Strict);
            moqConnection.Setup(x => x.Open());
            moqConnection.Setup(x => x.Dispose());
            this.flightListService = new FlightListService(() => moqConnection.Object);
        }
        [TestMethod]
        public void flightListTest()
        {
            var moqDataReader = new Mock<IDataReader>();
            moqDataReader.SetupSequence(x => x.Read())
                .Returns(true) // First call return a record: true
                .Returns(false); // Second call finish


            moqDataReader.SetupGet<object>(x => x["TenHang"]).Returns("VietNam Airlines");
            var commandMock = new Mock<IDbCommand>();

            commandMock.Setup(m => m.ExecuteReader()).Returns(moqDataReader.Object).Verifiable();

            // Now the mock if IDbConnection configure the command to be used
            this.moqConnection.Setup(m => m.CreateCommand()).Returns(commandMock.Object);

            // And we are ready to do the call.
            List<string> result = this.flightListService.addDataToLsvAirport();
            Assert.AreEqual(1, result.Count);
            commandMock.Verify();

        }

    }
}
