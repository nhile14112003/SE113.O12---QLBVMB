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
    public class HomeServiceTest
    {
        readonly HomeService homeService;
        readonly Mock<IDbConnection> moqConnection;
        public HomeServiceTest()
        {
            this.moqConnection = new Mock<IDbConnection>(MockBehavior.Strict);
            moqConnection.Setup(x => x.Open());
            moqConnection.Setup(x => x.Dispose());
            this.homeService = new HomeService(() => moqConnection.Object);
        }
        [TestMethod]
        public void addDataToCCBDestinationTest()
        {
            var moqDataReader = new Mock<IDataReader>();
            moqDataReader.SetupSequence(x => x.Read())
                .Returns(true) // First call return a record: true
                .Returns(false); // Second call finish

            // Because the SQL to mock has parameter we need to mock the parameter
            moqDataReader.SetupGet<object>(x => x["Tinh"]).Returns("Ho Chi Minh");
            var commandMock = new Mock<IDbCommand>();

            commandMock.Setup(m => m.ExecuteReader()).Returns(moqDataReader.Object).Verifiable();

            // Now the mock if IDbConnection configure the command to be used
            this.moqConnection.Setup(m => m.CreateCommand()).Returns(commandMock.Object);

            // And we are ready to do the call.
            List<string> result = this.homeService.addDataToCCBDestination();
            Assert.AreEqual(1, result.Count);
            commandMock.Verify();

        }
        [TestMethod]
        public void addDataToCCBDepartureTest()
        {
            var moqDataReader = new Mock<IDataReader>();
            moqDataReader.SetupSequence(x => x.Read())
                .Returns(true) // First call return a record: true
                .Returns(false); // Second call finish

            // Because the SQL to mock has parameter we need to mock the parameter
            moqDataReader.SetupGet<object>(x => x["Tinh"]).Returns("Ho Chi Minh");
            var commandMock = new Mock<IDbCommand>();

            commandMock.Setup(m => m.ExecuteReader()).Returns(moqDataReader.Object).Verifiable();

            // Now the mock if IDbConnection configure the command to be used
            this.moqConnection.Setup(m => m.CreateCommand()).Returns(commandMock.Object);

            // And we are ready to do the call.
            List<string> result = this.homeService.addDataToCCBDeparture();
            Assert.AreEqual(1, result.Count);
            commandMock.Verify();

        }

        [TestMethod]
        public void addDataToClassTest()
        {
            var moqDataReader = new Mock<IDataReader>();
            moqDataReader.SetupSequence(x => x.Read())
                .Returns(true) // First call return a record: true
                .Returns(false); // Second call finish

            // Because the SQL to mock has parameter we need to mock the parameter
            moqDataReader.SetupGet<object>(x => x["TenHangVe"]).Returns("Hang 1");
            var commandMock = new Mock<IDbCommand>();

            commandMock.Setup(m => m.ExecuteReader()).Returns(moqDataReader.Object).Verifiable();

            // Now the mock if IDbConnection configure the command to be used
            this.moqConnection.Setup(m => m.CreateCommand()).Returns(commandMock.Object);

            // And we are ready to do the call.
            List<string> result = this.homeService.addDataToClass();
            Assert.AreEqual(1, result.Count);
            commandMock.Verify();

        }
    }
}
