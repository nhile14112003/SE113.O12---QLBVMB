using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quan_Ly_Ban_Ve_May_Bay.Service
{
    public class FlightListService : IFlightListService
    {
        private Func<IDbConnection> Factory { get; }

        public FlightListService(Func<IDbConnection> factory)
        {
            this.Factory = factory;
        }

        public List<string> addDataToLsvAirport()
        {
            IDbConnection connection = this.Factory.Invoke();
            IDbCommand command = connection.CreateCommand();
            // Stryker disable all
            command.CommandText =
                "select TenHang from [HANGMAYBAY]";
            connection.Open();
            // Stryker restore all
            IDataReader reader = command.ExecuteReader();
            List<string> listAirline = new List<string>();
            while (reader.Read())
            {

                listAirline.Add(reader["TenHang"].ToString());

            }

            return listAirline;
        }
    }
    public interface IFlightListService
    {
        List<string> addDataToLsvAirport();
    }
}
