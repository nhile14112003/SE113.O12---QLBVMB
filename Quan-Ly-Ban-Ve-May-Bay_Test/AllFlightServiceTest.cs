using Moq;
using Quan_Ly_Ban_Ve_May_Bay.Model;
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

    public class AllFlightServiceTest
    {
        readonly AllFlightService allFlightService;
        readonly Mock<IDbConnection> moqConnection;
        public AllFlightServiceTest()
        {
            this.moqConnection = new Mock<IDbConnection>(MockBehavior.Strict);
            moqConnection.Setup(x => x.Open());
            moqConnection.Setup(x => x.Dispose());
            this.allFlightService = new AllFlightService(() => moqConnection.Object);
        }
        [TestMethod]
        public void flightListTest()
        {
            var moqDataReader = new Mock<IDataReader>();
            moqDataReader.SetupSequence(x => x.Read())
                .Returns(true) // First call return a record: true
                .Returns(false); // Second call finish

            moqDataReader.SetupGet<object>(x => x["MaChuyenBay"]).Returns("VN004");
            moqDataReader.SetupGet<object>(x => x["SanBayDi"]).Returns("CXR");
            moqDataReader.SetupGet<object>(x => x["SanBayDen"]).Returns("DAD");
            moqDataReader.SetupGet<object>(x => x["NgayKhoiHanh"]).Returns("27/05/2023");
            moqDataReader.SetupGet<object>(x => x["ThoiGianXuatPhat"]).Returns("09:05");
            moqDataReader.SetupGet<object>(x => x["ThoiGianDuKien"]).Returns("70");
            moqDataReader.SetupGet<object>(x => x["MaHangMayBay"]).Returns("VNA");
            moqDataReader.SetupGet<object>(x => x["LoaiMayBay"]).Returns("BOEING");
            moqDataReader.SetupGet<object>(x => x["Gia"]).Returns("1200000");
            moqDataReader.SetupGet<object>(x => x["Logo"]).Returns("/Images/logo_VNA.png");
            moqDataReader.SetupGet<object>(x => x["TenHang"]).Returns("VietNam Airlines");
            moqDataReader.SetupGet<object>(x => x["SoSBTG"]).Returns(0);
            moqDataReader.SetupGet<object>(x => x["SoVeTrong"]).Returns(25);
            moqDataReader.SetupGet<object>(x => x["SoVeDat"]).Returns(5);
            var commandMock = new Mock<IDbCommand>();

            commandMock.Setup(m => m.ExecuteReader()).Returns(moqDataReader.Object).Verifiable();

            // Now the mock if IDbConnection configure the command to be used
            this.moqConnection.Setup(m => m.CreateCommand()).Returns(commandMock.Object);

            // And we are ready to do the call.
            List<Flight> result = this.allFlightService.flightList();
            Assert.AreEqual(1, result.Count);
            commandMock.Verify();

        }

    }
}
