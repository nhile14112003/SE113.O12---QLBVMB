using Quan_Ly_Ban_Ve_May_Bay.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quan_Ly_Ban_Ve_May_Bay.Service
{
    public class LoginService : ILoginService
    {
        private Func<IDbConnection> Factory { get; }

        public LoginService(Func<IDbConnection> factory)
        {
            this.Factory = factory;
        }

        public Account checkLogin(string username, string password)
        {
            IDbConnection connection = this.Factory.Invoke();
            IDbCommand command = connection.CreateCommand();
            // Stryker disable all
            command.CommandText =
                "SELECT * FROM [TAIKHOAN] WHERE (TenDangNhap=@Username OR Email=@Username) AND MatKhau=@Password";
            connection.Open();
            command.Parameters.Clear();
            command.Parameters.Add(new SqlParameter("@UserName", username));
            command.Parameters.Add(new SqlParameter("@Password", password));
            // Stryker restore all
            IDataReader reader = command.ExecuteReader();
            Account account = new Account();

            while (reader.Read())
            {
                account.id = reader["MaTK"].ToString();
                account.username = reader["TenDangNhap"].ToString();
                account.password = reader["MatKhau"].ToString();
                account.type = int.Parse(reader["Loai"].ToString());
                account.displayname = reader["TenHienThi"].ToString();
            }
            return account;
        }
    }
    public interface ILoginService
    {
        Account checkLogin(string username, string password);
    }
}
