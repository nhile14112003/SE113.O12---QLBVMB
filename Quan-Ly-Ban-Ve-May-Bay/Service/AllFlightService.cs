using Quan_Ly_Ban_Ve_May_Bay.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quan_Ly_Ban_Ve_May_Bay.Service
{
    public class AllFlightService : IAllFlightService
    {
        private Func<IDbConnection> Factory { get; }

        public AllFlightService(Func<IDbConnection> factory)
        {
            this.Factory = factory;
        }

        public List<Flight> flightList()
        {
            IDbConnection connection = this.Factory.Invoke();
            IDbCommand command = connection.CreateCommand();
            // Stryker disable all
            command.CommandText =
                "select [c].*, Logo, TenHang, (select count(*) from [SANBAYTRUNGGIAN] [sbtg] where [sbtg].MaChuyenBay = [c].MaChuyenBay) SoSBTG, " +
                "(select count(*) from [VE] [v1] where [v1].MaChuyenBay = [c].MaChuyenBay and [v1].TinhTrang = 'TRONG') SoVeTrong, " +
                "(select count(*) from [VE] [v2] where [v2].MaChuyenBay = [c].MaChuyenBay and [v2].TinhTrang != 'TRONG') SoVeDat " +
                "from [CHUYENBAY] [c], [SANBAY] [s1], [SANBAY] [s2], [HANGMAYBAY] [hmb] " +
                "where [c].SanBayDi=[s1].MaSanBay " +
                "and [c].SanBayDen=[s2].MaSanBay " +
                "and [c].MaHangMayBay=[hmb].MaHang ";
            connection.Open();
            // Stryker restore all
            IDataReader reader = command.ExecuteReader();
            List<Flight> flight_list = new List<Flight>();
            while (reader.Read())
            {
                string flightID = reader["MaChuyenBay"].ToString();
                string airlineLogo = reader["Logo"].ToString();
                string airlineName = reader["TenHang"].ToString();
                string airportDepartureName = reader["SanBayDi"].ToString();
                string airportDestinationName = reader["SanBayDen"].ToString();
                string ngayGioXuatPhat =
                    reader["NgayKhoiHanh"].ToString() + " " + reader["ThoiGianXuatPhat"].ToString();
                CultureInfo provider = CultureInfo.InvariantCulture;
                string format = "d/M/yyyy HH:mm";
                TimeSpan time = TimeSpan.FromMinutes(double.Parse(reader["ThoiGianDuKien"].ToString()));

                DateTime dateTimeDeparture = DateTime.ParseExact(ngayGioXuatPhat, format, provider);
                DateTime dateTimeDestination = dateTimeDeparture.Add(time);

                // Stryker disable all
                string timeDeparture = dateTimeDeparture.ToString("HH:mm");
                string timeDestination = dateTimeDestination.ToString("HH:mm");

                // Stryker restore all
                int stop = int.Parse(reader["SoSBTG"].ToString());
                long price = long.Parse(reader["Gia"].ToString());
                int availableSeats = int.Parse(reader["SoVeTrong"].ToString());
                int bookedSeats = int.Parse(reader["SoVeDat"].ToString());
                flight_list.Add(new Flight(flightID, airlineLogo, airlineName, airportDepartureName,
                    airportDestinationName, timeDestination, timeDeparture, time, dateTimeDeparture,
                    dateTimeDestination, stop, price, availableSeats, bookedSeats));

            }

            return flight_list;
        }
    }
    public interface IAllFlightService
    {
        List<Flight> flightList();
    }
}
