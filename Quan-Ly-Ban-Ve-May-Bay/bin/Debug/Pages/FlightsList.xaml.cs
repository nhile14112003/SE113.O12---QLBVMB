using MaterialDesignColors;
using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Shapes;
using Quan_Ly_Ban_Ve_May_Bay.Model;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock;
using System.Diagnostics;
using System.Globalization;
using Quan_Ly_Ban_Ve_May_Bay.Converter;
using System.Drawing;

namespace Quan_Ly_Ban_Ve_May_Bay
{
    /// <summary>
    /// Interaction logic for FlightsList.xaml
    /// </summary>
    public partial class FlightsList : Page
    {
        public FlightsList()
        {
            InitializeComponent();
            addDataToLsvAirport();

        }
        private void addDataToLsvAirport()
        {
            SqlCommand sqlCommand = new SqlCommand(
            "select * from [HANGMAYBAY]", DataProvider.sqlConnection);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            List<string> listAirline = new List<string>();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                listAirline.Add(dr["TenHang"].ToString());
            }
            lvAirline.ItemsSource = listAirline;

        }
    }
}
