using Quan_Ly_Ban_Ve_May_Bay.Service;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
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
using Quan_Ly_Ban_Ve_May_Bay.Model;

namespace Quan_Ly_Ban_Ve_May_Bay.Pages
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
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
            try
            {
                var loginService = new LoginService(() => new SqlConnection(DataProvider.connectionStr));
                var account = loginService.checkLogin(Username.Text, PasswordBox.Password);
                if (account.id != null)
                {
                    MessageBox.Show("Đăng nhập thành công!", "Success");
                    MainWindow.curAccount = account;
                    loginSuccess?.Invoke(this, new RoutedEventArgs());
                }

                else
                {
                    txblError.Text = "Sai tài khoản hoặc mật khẩu!";
                }

            }
            catch (Exception ex) { Console.WriteLine(ex); }

        }
    }
}
