using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quan_Ly_Ban_Ve_May_Bay.Service
{
    public class HomeService : IHomeService
    {
        private Func<IDbConnection> Factory { get; }

        public HomeService(Func<IDbConnection> factory)
        {
            this.Factory = factory;
        }

        public List<string> addDataToCCBDestination()
        {
            IDbConnection connection = this.Factory.Invoke();
            IDbCommand command = connection.CreateCommand();
            // Stryker disable all
            command.CommandText =
                "select distinct Tinh from [SANBAY] [s], [CHUYENBAY] [c] where [s].MaSanBay = [c].SanBayDen";
            connection.Open();
            // Stryker restore all
            IDataReader reader = command.ExecuteReader();
            List<string> listDestination = new List<string>();
            while (reader.Read())
            {
                listDestination.Add(reader["Tinh"].ToString());
            }

            return listDestination;
        }
        public List<string> addDataToCCBDeparture()
        {
            IDbConnection connection = this.Factory.Invoke();
            IDbCommand command = connection.CreateCommand();
            // Stryker disable all
            command.CommandText =
                "select distinct Tinh from [SANBAY] [s], [CHUYENBAY] [c] where [s].MaSanBay = [c].SanBayDen";
            connection.Open();
            // Stryker restore all
            IDataReader reader = command.ExecuteReader();
            List<string> listDeparture = new List<string>();
            while (reader.Read())
            {
                listDeparture.Add(reader["Tinh"].ToString());
            }

            return listDeparture;
        }

        public List<string> addDataToClass()
        {
            IDbConnection connection = this.Factory.Invoke();
            IDbCommand command = connection.CreateCommand();
            // Stryker disable all
            command.CommandText =
                "select TenHangVe from [HANGVE]";
            connection.Open();
            // Stryker restore all
            IDataReader reader = command.ExecuteReader();
            List<string> listDeparture = new List<string>();
            while (reader.Read())
            {
                listDeparture.Add(reader["TenHangVe"].ToString());
            }

            return listDeparture;
        }
    }

    public interface IHomeService
    {
        List<string> addDataToCCBDestination();
        List<string> addDataToCCBDeparture();
        List<string> addDataToClass();
    }
}
