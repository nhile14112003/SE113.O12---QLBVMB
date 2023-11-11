﻿using MaterialDesignColors;
using Quan_Ly_Ban_Ve_May_Bay.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace Quan_Ly_Ban_Ve_May_Bay.Pages
{


    public partial class Login : Page
    {
        public event RoutedEventHandler loginSuccess;
        public Login()
        {
            InitializeComponent();
        }

        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            if (Username.Text == "" || PasswordBox.Password == "")
            {
                txblError.Text = "Vui lòng nhập đầy đủ thông tin!";
                return;
            }
            SqlConnection sqlCon = DataProvider.sqlConnection;
            try
            {
                if (sqlCon.State == ConnectionState.Closed)
                {
                    sqlCon.Open();
                    String query = "SELECT * FROM [TAIKHOAN] WHERE (TenDangNhap=@Username OR Email=@Username) AND MatKhau=@Password";
                    SqlParameter param1 = new SqlParameter("@UserName", Username.Text);
                    SqlParameter param2 = new SqlParameter("@Password", PasswordBox.Password);
                    DataTable dt;
                    using (SqlDataReader reader = DataProvider.ExecuteReader(query, CommandType.Text, param1, param2))
                    {
                        dt = new DataTable();
                        if (reader.HasRows)
                        {
                            MessageBox.Show("Đăng nhập thành công!", "Success");
                            dt.Load(reader);
                            DataRow dr = dt.Rows[0];
                            String sql = dr[0].ToString();
                            MainWindow.curAccount = new Account();
                            MainWindow.curAccount.id = dr[0].ToString();
                            MainWindow.curAccount.username = dr[1].ToString();
                            MainWindow.curAccount.password = dr[2].ToString();
                            MainWindow.curAccount.type = dr.Field<int>(3);
                            MainWindow.curAccount.email = dr[4].ToString();
                            MainWindow.curAccount.displayname = dr[5].ToString();
                            loginSuccess?.Invoke(this, new RoutedEventArgs());
                        }
                        else
                        {
                            txblError.Text = "Sai tài khoản hoặc mật khẩu!";
                        }
                    }
                }
            }
            catch (Exception ex){ Console.WriteLine(ex); }
            finally { sqlCon.Close(); }
        }
    }
}
