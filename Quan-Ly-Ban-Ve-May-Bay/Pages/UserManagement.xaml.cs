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
    /// Interaction logic for UserManagement.xaml
    /// </summary>
    public partial class UserManagement : Page
    {
        UserManagementService userManagementService = new UserManagementService(() => new SqlConnection(DataProvider.connectionStr));
        public UserManagement()
        {
            InitializeComponent();
            UserTable.ItemsSource = userManagementService.loadDataAccount();
        }
        private void delete_Click(object sender, RoutedEventArgs e)
        {
            Account selectedAccount = UserTable.SelectedItem as Account;
            if (selectedAccount != null)
            {
                if (MessageBox.Show("Bạn có chắc muốn xóa tài khoản này không?", "Xác nhận xóa tài khoản", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                {
                    try
                    {
                        int t = userManagementService.deleteAccount(selectedAccount.id);
                        UserTable.ItemsSource = userManagementService.loadDataAccount();
                    }
                    catch (Exception ex) { Console.WriteLine(ex); }
                }
            }
            else
            {
                MessageBox.Show("Vui lòng chọn dòng bạn muốn xóa!", "Error");
            }
        }
    }
}
