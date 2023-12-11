using Moq;
using Quan_Ly_Ban_Ve_May_Bay.Model;
using Quan_Ly_Ban_Ve_May_Bay.Service;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Quan_Ly_Ban_Ve_May_Bay_Test
{
    [TestClass]
    public class LoginServiceTest
    {
        readonly LoginService loginService;
        readonly Mock<IDbConnection> moqConnection;
        public LoginServiceTest()
        {
            this.moqConnection = new Mock<IDbConnection>(MockBehavior.Strict);
            moqConnection.Setup(x => x.Open());
            moqConnection.Setup(x => x.Dispose());
            this.loginService = new LoginService(() => moqConnection.Object);
        }
        [TestMethod]
        public void checkLoginTest()
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
            commandMock.Setup(m => m.Parameters.Add(It.IsAny<IDbDataParameter>())).Verifiable();
            commandMock.Setup(m => m.ExecuteReader())
                .Returns(moqDataReader.Object);

            // Now the mock if IDbConnection configure the command to be used
            this.moqConnection.Setup(m => m.CreateCommand()).Returns(commandMock.Object);

            // And we are ready to do the call.
            Account result = this.loginService.checkLogin("admin", "123");
            Account actualResult = new Account()
            {
                id = "U000000",
                username = "admin",
                password = "123",
                type = 1,
                displayname = "Admin"
            };
            commandMock.Verify(x => x.Parameters.Add(It.IsAny<IDbDataParameter>()), Times.Exactly(2));
            Assert.AreEqual(JsonSerializer.Serialize(result), JsonSerializer.Serialize(actualResult));
        }
    }
}
