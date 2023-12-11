using Quan_Ly_Ban_Ve_May_Bay.Model;
using Quan_Ly_Ban_Ve_May_Bay.Pages;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Quan_Ly_Ban_Ve_May_Bay
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
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
                    btn_UserManagement.Visibility = Visibility.Collapsed;
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
            if (MainWindow.curAccount.type == 1)
            {
                btn_UserManagement.Visibility = Visibility.Visible;
                //btn_SalesmanRight.Visibility = Visibility.Visible;
                //btn_ChangeRule.Visibility = Visibility.Visible;
            }
        }

        private void btnAllFlight_Click(object sender, RoutedEventArgs e)
        {
            allFlight = new AllFlight();
            fContainer.Content = allFlight;
        }
        private void userManagement_Click(object sender, RoutedEventArgs e)
        {
            UserManagement userManagement = new UserManagement();
            fContainer.Content = userManagement;
        }
    }
}