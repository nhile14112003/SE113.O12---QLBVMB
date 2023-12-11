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
    public class UserManagementServiceTest
    {
        readonly UserManagementService userMananManagementService;
        readonly Mock<IDbConnection> moqConnection;
        public UserManagementServiceTest()
        {
            this.moqConnection = new Mock<IDbConnection>(MockBehavior.Strict);
            moqConnection.Setup(x => x.Open());
            moqConnection.Setup(x => x.Dispose());
            this.userMananManagementService = new UserManagementService(() => moqConnection.Object);
        }
        [TestMethod]
        public void checkLoginTest()
        {
            string connection_str = @"Data Source=.\SQLEXPRESS;Initial Catalog=QuanLyBanVeMayBay;Integrated Security=True";
            Assert.AreEqual(DataProvider.connectionStr, connection_str);
            var moqDataReader = new Mock<IDataReader>();
            moqDataReader.SetupSequence(x => x.Read())
                .Returns(true) // First call return a record: true
                .Returns(false); // Second call finish

            moqDataReader.SetupGet<object>(x => x["SoLuongTK"]).Returns(1);

            var commandMock = new Mock<IDbCommand>();

            // Because the SQL to mock has parameter we need to mock the parameter
            commandMock.Setup(m => m.Parameters.Add(It.IsAny<IDbDataParameter>())).Verifiable();
            commandMock.Setup(m => m.ExecuteReader())
                .Returns(moqDataReader.Object);

            // Now the mock if IDbConnection configure the command to be used
            this.moqConnection.Setup(m => m.CreateCommand()).Returns(commandMock.Object);

            // And we are ready to do the call.
            int result = this.userMananManagementService.checkAccountExist("admin");
            commandMock.Verify(x => x.Parameters.Add(It.IsAny<IDbDataParameter>()), Times.Exactly(1));
            Assert.AreEqual(1, result);
        }

        [TestMethod]
        public void loadDataAccountTest()
        {
            var moqDataReader = new Mock<IDataReader>();
            moqDataReader.SetupSequence(x => x.Read())
                .Returns(true) // First call return a record: true
                .Returns(false); // Second call finish

            moqDataReader.SetupGet<object>(x => x["MaTK"]).Returns("U000000");
            moqDataReader.SetupGet<object>(x => x["TenDangNhap"]).Returns("admin");
            moqDataReader.SetupGet<object>(x => x["MatKhau"]).Returns("123");
            moqDataReader.SetupGet<object>(x => x["Loai"]).Returns(1);
            moqDataReader.SetupGet<object>(x => x["Email"]).Returns("cattuong510@gmail.com");
            moqDataReader.SetupGet<object>(x => x["TenHienThi"]).Returns("Admin");
            var commandMock = new Mock<IDbCommand>();

            // Because the SQL to mock has parameter we need to mock the parameter
            commandMock.Setup(m => m.ExecuteReader()).Returns(moqDataReader.Object).Verifiable();

            // Now the mock if IDbConnection configure the command to be used
            this.moqConnection.Setup(m => m.CreateCommand()).Returns(commandMock.Object);

            // And we are ready to do the call.
            List<Account> result = this.userMananManagementService.loadDataAccount();
            Assert.AreEqual(1, result.Count);
            commandMock.Verify();
        }
        [TestMethod]
        public void deleteAccountTest()
        {
            var moqDataReader = new Mock<IDataReader>();
            moqDataReader.SetupSequence(x => x.Read())
                .Returns(true) // First call return a record: true
                .Returns(false); // Second call finish

            moqDataReader.SetupGet<object>(x => x["MaTK"]).Returns("U000000");
            moqDataReader.SetupGet<object>(x => x["TenDangNhap"]).Returns("admin");
            moqDataReader.SetupGet<object>(x => x["MatKhau"]).Returns("123");
            moqDataReader.SetupGet<object>(x => x["Loai"]).Returns(1);
            moqDataReader.SetupGet<object>(x => x["Email"]).Returns("cattuong510@gmail.com");
            moqDataReader.SetupGet<object>(x => x["TenHienThi"]).Returns("Admin");
            var commandMock = new Mock<IDbCommand>();

            // Because the SQL to mock has parameter we need to mock the parameter
            commandMock.Setup(c => c.ExecuteNonQuery()).Returns(1);

            // Now the mock if IDbConnection configure the command to be used
            this.moqConnection.Setup(m => m.CreateCommand()).Returns(commandMock.Object);

            // And we are ready to do the call.
            int result = this.userMananManagementService.deleteAccount("U000000");
            commandMock.Verify();
            Assert.AreEqual(1, result);
        }
    }
}
