﻿using Quan_Ly_Ban_Ve_May_Bay.Service;
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
    /// Interaction logic for AllFlight.xaml
    /// </summary>
    public partial class AllFlight : Page
    {

        public AllFlight()
        {
            InitializeComponent();
            var allFlightService = new AllFlightService(() => new SqlConnection(DataProvider.connectionStr));
            lvFlight.ItemsSource = allFlightService.flightList();

        }
    }
}
