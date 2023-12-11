using Quan_Ly_Ban_Ve_May_Bay.Converter;
using System.Globalization;

namespace Quan_Ly_Ban_Ve_May_Bay_Test
{
    [TestClass]
    public class ConverterTest
    {
        [TestMethod]
        public void DateConvertTest()
        {
            DateTime date = DateTime.Now;
            DateConverter convert = new DateConverter();
            String expectedResult = date.ToString("dd/MM/yyyy");
            String actualResult = (String)convert.Convert(date, typeof(String), null, CultureInfo.InvariantCulture);// datetime not null
            Assert.AreEqual(expectedResult, actualResult);
            Assert.AreEqual(null, convert.Convert(null, typeof(String), null, CultureInfo.InvariantCulture));//datetime is null
        }
        [TestMethod]
        public void TimeConvertTest()
        {
            DateTime date = DateTime.Now;
            TimeConverter convert = new TimeConverter();
            String expectedResult = date.ToString("HH:mm");
            String actualResult = (String)convert.Convert(date, typeof(String), null, CultureInfo.InvariantCulture);// datetime not null
            Assert.AreEqual(expectedResult, actualResult);
            Assert.AreEqual(null, convert.Convert(null, typeof(String), null, CultureInfo.InvariantCulture));//datetime is null
        }
        [TestMethod]
        public void DurationConvertTest()
        {
            DurationConverter convert = new DurationConverter();
            TimeSpan timeSpan1 = TimeSpan.FromMinutes(double.Parse("30"));
            String expectedResult1 = "30'";
            String actualResult1 = (String)convert.Convert(timeSpan1, typeof(String), null, CultureInfo.InvariantCulture);
            TimeSpan timeSpan2 = TimeSpan.FromMinutes(double.Parse("150"));
            String expectedResult2 = "02:30";
            String actualResult2 = (String)convert.Convert(timeSpan2, typeof(String), null, CultureInfo.InvariantCulture);
            TimeSpan timeSpan3 = TimeSpan.FromMinutes(double.Parse("60"));
            String expectedResult3 = "01:00";
            String actualResult3 = (String)convert.Convert(timeSpan3, typeof(String), null, CultureInfo.InvariantCulture);
            Assert.AreEqual(expectedResult1, actualResult1);
            Assert.AreEqual(expectedResult2, actualResult2);
            Assert.AreEqual(expectedResult3, actualResult3);
        }
        [TestMethod]
        public void TimeSpanConvertTest()
        {
            TimeSpan timeSpan = DateTime.Now.TimeOfDay;
            TimeSpanConverter convert = new TimeSpanConverter();
            String expectedResult = timeSpan.ToString(@"hh\:mm");
            String actualResult = (String)convert.Convert(timeSpan, typeof(String), null, CultureInfo.InvariantCulture);// datetime not null
            Assert.AreEqual(expectedResult, actualResult);
        }
        [TestMethod]
        [DataRow(1, "Admin")]
        [DataRow(2, "Nhân viên")]
        [DataRow(3, "Khách hàng")]
        [DataRow(0, "")]
        public void AccountTypeConverterTest(int type, string stringType)
        {
            AccountTypeConverter convert = new AccountTypeConverter();
            String actualResult = (String)convert.Convert(type, typeof(String), null, CultureInfo.InvariantCulture);
            Assert.AreEqual(stringType, actualResult);
        }


        [TestMethod]
        [ExpectedException(typeof(NotImplementedException))]
        public void TimeSpanConvertBackTest()
        {
            TimeSpan timeSpan = DateTime.Now.TimeOfDay;
            TimeSpanConverter convert = new TimeSpanConverter();
            var actualResult1 = (String)convert.ConvertBack(timeSpan, typeof(String), null, CultureInfo.InvariantCulture);
        }
        [TestMethod]
        [ExpectedException(typeof(NotImplementedException))]
        public void DurationConvertBackTest()
        {
            TimeSpan timeSpan = DateTime.Now.TimeOfDay;
            DurationConverter convert = new DurationConverter();
            var actualResult1 = (String)convert.ConvertBack(timeSpan, typeof(String), null, CultureInfo.InvariantCulture);
        }
        [TestMethod]
        [ExpectedException(typeof(NotImplementedException))]
        public void DateConvertBackTest()
        {
            DateTime datetime = DateTime.Now;
            DateConverter convert = new DateConverter();
            var actualResult1 = (String)convert.ConvertBack(datetime, typeof(String), null, CultureInfo.InvariantCulture);
        }
        [TestMethod]
        [ExpectedException(typeof(NotImplementedException))]
        public void TimeConvertBackTest()
        {
            DateTime datetime = DateTime.Now;
            TimeConverter convert = new TimeConverter();
            var actualResult1 = (String)convert.ConvertBack(datetime, typeof(String), null, CultureInfo.InvariantCulture);

        }
        [TestMethod]
        [ExpectedException(typeof(NotImplementedException))]
        public void AccountTypeConverterBackTest()
        {
            AccountTypeConverter convert = new AccountTypeConverter();
            var actualResult1 = (String)convert.ConvertBack(1, typeof(String), null, CultureInfo.InvariantCulture);
        }
    }
}