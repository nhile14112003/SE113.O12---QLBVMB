using System;
using System.Collections.Generic;
using System.ComponentModel;
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
using System.Data;
using System.Data.SqlClient;
using Quan_Ly_Ban_Ve_May_Bay.Pages;
using Quan_Ly_Ban_Ve_May_Bay.Model;
using System.Windows.Threading;
using System.Globalization;

namespace Quan_Ly_Ban_Ve_May_Bay
{

    public partial class MainWindow : Window
    {   
        private Home home;
        private FlightsList flights;
        public static Account curAccount = null;
        private AllFlight allFlight;
        public MainWindow()
        {
            InitializeComponent();

            //main code
            home = new Home();
            allFlight = new AllFlight();
            home.Search += Home_Search;

            flights = new FlightsList();
            fContainer.Content = home;
        }

        private void btnHome_Click(object sender, RoutedEventArgs e)
        {
            home = new Home();
            home.Search += Home_Search;
            fContainer.Content = home;
        }

        private void Home_Search(object sender, RoutedEventArgs e)
        {
            flights = new FlightsList();
            fContainer.Content = flights;

        }

        private void loginBtn_Click(object sender, RoutedEventArgs e)
        {
            if (MainWindow.curAccount == null)
            {
                Login login = new Login();
                login.loginSuccess += Login_loginSuccess;
                fContainer.Content = login;
            }
            else
            {
                if (MessageBox.Show("Bạn có chắc muốn đăng xuất khỏi tài khoản này?", "Đăng xuất", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                {
                    MainWindow.curAccount = null;
                    tblLogin.Text = "Đăng nhập";
                    BitmapImage bitmap = new BitmapImage(new Uri("/Images/login.png", UriKind.Relative));
                    imgLogin.Source = bitmap;
                    btnHome_Click(sender, e);
                }
            }
        }

        private void Login_loginSuccess(object sender, RoutedEventArgs e)
        {
            btnHome_Click(sender, e);
            tblLogin.Text = "Đăng xuất";
            BitmapImage bitmap = new BitmapImage(new Uri("/Images/logout.png", UriKind.Relative));
            imgLogin.Source = bitmap;
        }

        private void btnAllFlight_Click(object sender, RoutedEventArgs e)
        {
            allFlight = new AllFlight();
            fContainer.Content = allFlight;
        }
        
        private void contactsUs_click(object sender, RoutedEventArgs e)
        {
            ContactUs contactUs = new ContactUs();
            fContainer.Content = contactUs;
        }
        
    }
}