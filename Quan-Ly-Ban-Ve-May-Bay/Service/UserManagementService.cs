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
    public class UserManagementService : IUserManagementService
    {
        private Func<IDbConnection> Factory { get; }

        public UserManagementService(Func<IDbConnection> factory)
        {
            this.Factory = factory;
        }

        public int checkAccountExist(string username)
        {
            IDbConnection connection = this.Factory.Invoke();
            IDbCommand command = connection.CreateCommand();
            // Stryker disable all
            command.CommandText =
                "SELECT COUNT(MaTK) SoLuongTK FROM [TAIKHOAN] WHERE TenDangNhap=@Username";
            connection.Open();
            command.Parameters.Clear();
            command.Parameters.Add(new SqlParameter("@UserName", username));
            // Stryker restore all
            IDataReader reader = command.ExecuteReader();
            int soluong = 0;
            while (reader.Read())
            {
                soluong = int.Parse(reader["SoLuongTK"].ToString());
            }

            return soluong;
        }

        public List<Account> loadDataAccount()
        {
            IDbConnection connection = this.Factory.Invoke();
            IDbCommand command = connection.CreateCommand();
            // Stryker disable all
            command.CommandText =
                "SELECT * FROM TAIKHOAN";
            connection.Open();
            // Stryker restore all
            IDataReader reader = command.ExecuteReader();
            List<Account> accounts = new List<Account>();

            while (reader.Read())
            {
                string id = reader["MaTK"].ToString();
                string username = reader["TenDangNhap"].ToString();
                string password = reader["MatKhau"].ToString();
                int type = int.Parse(reader["Loai"].ToString());
                string displayname = reader["TenHienThi"].ToString();
                string email = reader["Email"].ToString();
                accounts.Add(new Account(id, username, password, type, email, displayname));
            }
            return accounts;
        }

        public int deleteAccount(string id)
        {
            IDbConnection connection = this.Factory.Invoke();
            IDbCommand command = connection.CreateCommand();
            // Stryker disable all
            command.CommandText = "Delete from[TAIKHOAN]  where MaTK = '" + id + "'";
            connection.Open();
            // Stryker restore all
            int rows = 0;
            rows = command.ExecuteNonQuery();
            return rows;
        }
    }
    public interface IUserManagementService
    {
        int checkAccountExist(string username);
        List<Account> loadDataAccount();
        int deleteAccount(string id);
    }
}
