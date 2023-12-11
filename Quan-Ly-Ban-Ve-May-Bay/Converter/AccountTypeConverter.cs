using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace Quan_Ly_Ban_Ve_May_Bay.Converter
{
    public class AccountTypeConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            int accountType = (int)value;
            switch (accountType)
            {
                case 1:
                    return "Admin";
                case 2:
                    return "Nhân viên";
                case 3:
                    return "Khách hàng";
                default:
                    return "";
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
