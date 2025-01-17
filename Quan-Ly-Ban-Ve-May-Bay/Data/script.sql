﻿USE [master]
GO
/****** Object:  Database [QuanLyBanVeMayBay]    Script Date: 05/06/2023 6:30:40 PM ******/
CREATE DATABASE [QuanLyBanVeMayBay]

GO
ALTER DATABASE [QuanLyBanVeMayBay] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanVeMayBay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyBanVeMayBay', N'ON'
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET QUERY_STORE = OFF
GO
USE [QuanLyBanVeMayBay]
GO
/****** Object:  Table [BANGTHAMSO]    Script Date: 05/06/2023 6:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BANGTHAMSO](
	[TenThamSo] [text] NOT NULL,
	[GiaTri] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CHUYENBAY]    Script Date: 05/06/2023 6:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHUYENBAY](
	[MaChuyenBay] [varchar](10) NOT NULL,
	[SanBayDi] [nvarchar](50) NOT NULL,
	[SanBayDen] [nvarchar](50) NOT NULL,
	[NgayKhoiHanh] [nvarchar](50) NOT NULL,
	[ThoiGianXuatPhat] [nvarchar](50) NOT NULL,
	[ThoiGianDuKien] [nvarchar](50) NOT NULL,
	[MaHangMayBay] [varchar](10) NOT NULL,
	[LoaiMayBay] [varchar](50) NOT NULL,
	[Gia] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyenBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CTHD]    Script Date: 05/06/2023 6:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CTHD](
	[MaCTHD] [varchar](10) NOT NULL,
	[MaHD] [varchar](10) NOT NULL,
	[MaVe] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HANGMAYBAY]    Script Date: 05/06/2023 6:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HANGMAYBAY](
	[MaHang] [varchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NOT NULL,
	[Logo] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HANGVE]    Script Date: 05/06/2023 6:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HANGVE](
	[MaHangVe] [varchar](10) NOT NULL,
	[TenHangVe] [nvarchar](50) NOT NULL,
	[TyLe] [varchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoCaoNam]    Script Date: 13/06/2023 3:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoNam](
	[Thang] [varchar](3) NOT NULL,
	[SoChuyenBay] [int] NULL,
	[DoanhThu] [varchar](50) NULL,
	[Tyle] [varchar](50) NULL,
	[Nam] [varchar](5) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoCaoThang]    Script Date: 13/06/2023 3:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoThang](
	[MaChuyenBay] [varchar](50) NOT NULL,
	[SoVeDaBan] [int] NULL,
	[DoanhThu] [varchar](50) NULL,
	[TyLe] [varchar](50) NULL,
	[Thang] [varchar](3) NOT NULL,
	[Nam] [varchar](5) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HOADON]    Script Date: 05/06/2023 6:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HOADON](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[ThanhTien] [int] NULL,
	[TinhTrang] [varchar](30) NULL,
	[MaTK] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [QuanLyHangVeChuyenBay]    Script Date: 05/06/2023 6:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QuanLyHangVeChuyenBay](
	[MaChuyenBay] [varchar](10) NOT NULL,
	[MaHangVe] [varchar](10) NOT NULL,
	[SoLuong] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyenBay] ASC,
	[MaHangVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SANBAY]    Script Date: 05/06/2023 6:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SANBAY](
	[MaSanBay] [varchar](10) NOT NULL,
	[TenSanBay] [nvarchar](50) NOT NULL,
	[Tinh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SANBAYTRUNGGIAN]    Script Date: 05/06/2023 6:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SANBAYTRUNGGIAN](
	[SanBayTrungGian] [nvarchar](50) NOT NULL,
	[MaChuyenBay] [varchar](10) NOT NULL,
	[ThoiGianDung] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TAIKHOAN]    Script Date: 05/06/2023 6:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TAIKHOAN](
	[MaTK] [varchar](20) NOT NULL,
	[TenDangNhap] [varchar](100) NOT NULL,
	[MatKhau] [varchar](10) NOT NULL,
	[Loai] [int] NOT NULL,
	[Email] [varchar](50) NULL,
	[TenHienThi] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VE]    Script Date: 05/06/2023 6:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VE](
	[MaVe] [varchar](20) NOT NULL,
	[MaChuyenBay] [varchar](10) NOT NULL,
	[SoGhe] [varchar](10) NOT NULL,
	[MaHK] [varchar](10) NULL,
	[TenHK] [nvarchar](100) NULL,
	[SDT] [varchar](11) NULL,
	[CMND] [varchar](9) NULL,
	[TinhTrang] [nvarchar](20) NOT NULL,
	[MaHangVe] [varchar](10) NOT NULL,
	[GiaVe] int null,
PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [BANGTHAMSO] ([TenThamSo], [GiaTri]) VALUES (N'ThoiGianBayToiThieu', 30)
INSERT [BANGTHAMSO] ([TenThamSo], [GiaTri]) VALUES (N'SoSanBayTrungGianToiDa', 2)
INSERT [BANGTHAMSO] ([TenThamSo], [GiaTri]) VALUES (N'ThoiGianDungToiThieu', 10)
INSERT [BANGTHAMSO] ([TenThamSo], [GiaTri]) VALUES (N'ThoiGianDungToiDa', 20)
INSERT [BANGTHAMSO] ([TenThamSo], [GiaTri]) VALUES (N'ThoiGianChamNhatChoPhepDatVe', 24)
INSERT [BANGTHAMSO] ([TenThamSo], [GiaTri]) VALUES (N'ThoiGianChamNhatChoPhepHuyVe', 24)
GO
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'QH101', N'SGN', N'HAN', N'02/04/2023', N'23:40', N'130', N'QH', N'BOEING', N'1800000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'QH001', N'SGN', N'HAN', N'02/08/2023', N'23:40', N'130', N'QH', N'BOEING', N'1800000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'QH002', N'SGN', N'HUI', N'02/08/2023', N'19:10', N'95', N'QH', N'BOEING', N'1200000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'QH003', N'HAN', N'VDO', N'02/07/2023', N'12:45', N'485', N'QH', N'BOEING', N'3800000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VJ001', N'SGN', N'HAN', N'02/07/2023', N'06:00', N'130', N'VJ', N'BOEING', N'1600000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VJ002', N'SGN', N'HAN', N'02/07/2023', N'18:00', N'130', N'VJ', N'BOEING', N'1700000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VJ003', N'HAN', N'VDO', N'02/07/2023', N'07:00', N'830', N'VJ', N'BOEING', N'3300000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VJ004', N'HAN', N'PQC', N'28/06/2023', N'18:15', N'130', N'VJ', N'BOEING', N'1400000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VJ005', N'HAN', N'PQC', N'28/06/2023', N'06:00', N'125', N'VJ', N'BOEING', N'1500000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VN001', N'SGN', N'HAN', N'02/07/2023', N'05:00', N'135', N'VNA', N'BOEING', N'1900000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VN002', N'SGN', N'HUI', N'02/07/2023', N'13:05', N'90', N'VNA', N'BOEING', N'1800000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VN003', N'HAN', N'PQC', N'27/05/2023', N'07:35', N'120', N'VNA', N'BOEING', N'1700000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VN004', N'CXR', N'DAD', N'27/05/2023', N'09:05', N'70', N'VNA', N'BOEING', N'1200000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VN005', N'CXR', N'DAD', N'27/04/2023', N'09:05', N'70', N'VNA', N'BOEING', N'2200000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VN006', N'HUI', N'DAD', N'23/03/2023', N'09:05', N'70', N'VNA', N'BOEING', N'2200000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VN007', N'HUI', N'DAD', N'22/03/2023', N'19:05', N'70', N'VNA', N'BOEING', N'2400000')
INSERT [CHUYENBAY] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [ThoiGianXuatPhat], [ThoiGianDuKien], [MaHangMayBay], [LoaiMayBay], [Gia]) VALUES (N'VN008', N'HUI', N'DAD', N'22/03/2023', N'10:05', N'70', N'VNA', N'BOEING', N'2400000')

GO
INSERT [HANGMAYBAY] ([MaHang], [TenHang], [Logo]) VALUES (N'BL', N'Jetstar Pacific Airlines', N'/Images/logo_Jetstar.png')
INSERT [HANGMAYBAY] ([MaHang], [TenHang], [Logo]) VALUES (N'QH', N'Bamboo Airways', N'/Images/logo_Bamboo.png')
INSERT [HANGMAYBAY] ([MaHang], [TenHang], [Logo]) VALUES (N'VJ', N'Vietjet Air', N'/Images/logo_Vietjet.png')
INSERT [HANGMAYBAY] ([MaHang], [TenHang], [Logo]) VALUES (N'VNA', N'VietNam Airlines', N'/Images/logo_VNA.png')
GO
INSERT [HANGVE] ([MaHangVe], [TenHangVe], [TyLe]) VALUES (N'HV229365', N'Hạng 2', N'100')
INSERT [HANGVE] ([MaHangVe], [TenHangVe], [TyLe]) VALUES (N'HV643717', N'Hạng 1', N'105')
GO
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VN008', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VN007', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VN006', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VN005', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'QH101', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'QH101', N'HV643717', N'18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'QH001', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'QH001', N'HV643717', N'18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'QH002', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'QH002', N'HV643717', N'18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'QH003', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'QH003', N'HV643717', N'18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VJ001', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VJ001', N'HV643717', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VJ002', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VJ002', N'HV643717', N'18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VJ003', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VJ003', N'HV643717', N'18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VJ004', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VJ004', N'HV643717', N'18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VJ005', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VJ005', N'HV643717', N'18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VN001', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VN001', N'HV643717', N'18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VN002', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VN002', N'HV643717', N'18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VN003', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VN003', N'HV643717', N'18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VN004', N'HV229365', N'12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay], [MaHangVe], [SoLuong]) VALUES (N'VN004', N'HV643717', N'18')
GO
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'CXR', N'San bay Quoc te Cam Ranh', N'Khanh Hoa')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'DAD', N'San bay Quoc te Da Nang', N'Da Nang')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'HAN', N'San bay Quoc te Noi Bai', N'Ha Noi')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'HND', N'San bay Quoc te Tokyo', N'Tokyo')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'HUI', N'San bay Quoc te Phu Bai', N'Thua Thien Hue')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'ICN', N'San bay Quoc te Incheon', N'Seoul')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'ITM', N'San bay Quoc te Osaka', N'Tokyo')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'PQC', N'San bay Quoc te Phu Quoc', N'Phu Quoc')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'SGN', N'San bay Quoc te Tan Son Nhat', N'Ho Chi Minh')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'VDO', N'San bay Quoc te Van Don', N'Quang Ninh')
GO
INSERT [SANBAYTRUNGGIAN] ([SanBayTrungGian], [MaChuyenBay], [ThoiGianDung], [GhiChu]) VALUES (N'SGN', N'VJ003', N'570', N'KHONG CO')
INSERT [SANBAYTRUNGGIAN] ([SanBayTrungGian], [MaChuyenBay], [ThoiGianDung], [GhiChu]) VALUES (N'SGN', N'QH003', N'220', N'KHONG CO')
GO
INSERT [TAIKHOAN] ([MaTK], [TenDangNhap], [MatKhau], [Loai], [Email], [TenHienThi]) VALUES (N'U000000', N'admin', N'123', 1, N'cattuong510@gmail.com', N'Admin')
INSERT [TAIKHOAN] ([MaTK], [TenDangNhap], [MatKhau], [Loai], [Email], [TenHienThi]) VALUES (N'U110400', N'nv1', N'123', 2, N'nhanvien1@gmail.com', N'Nhân viên 1')
INSERT [TAIKHOAN] ([MaTK], [TenDangNhap], [MatKhau], [Loai], [Email], [TenHienThi]) VALUES (N'U521952', N'abc', N'123', 3, N'abc@gmail.com', N'ahihi')
GO
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3210', N'VN007', N'2', N'22', N'Ha', N'343', N'341213', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3211', N'VN007', N'3', N'23', N'Ha', N'3343', N'3412133', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3212', N'VN007', N'4', N'24', N'Ha', N'3443', N'34123213', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3213', N'VN007', N'5', N'25', N'Ha', N'3420313', N'3412213', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3214', N'VN007', N'6', N'26', N'Ha', N'3402213', N'34012613', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3215', N'VN007', N'7', N'27', N'Ha', N'341423',N'341183', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3216', N'VN007', N'8', N'28', N'Ha', N'3421113', N'34213', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3217', N'VN007', N'9', N'29', N'Ha', N'3421013', N'34113', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3218', N'VN007', N'10', N'38', N'Ha', N'3402113', N'34104213', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3219', N'VN007', N'11', N'32', N'Ha', N'3042113', N'34014213', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3209', N'VN007', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3220', N'VN007', N'12', N'31', N'Ha', N'3421103', N'30414213', N'SOLD', N'HV229365',2400000)

INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3310', N'VN008', N'2', N'22', N'Ha', N'343', N'341213', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3331', N'VN008', N'3', N'23', N'Ha', N'3343', N'3412133', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3312', N'VN008', N'4', N'24', N'Ha', N'3443', N'34123213', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3313', N'VN008', N'5', N'25', N'Ha', N'3420313', N'3412213', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3314', N'VN008', N'6', N'26', N'Ha', N'3402213', N'34012613', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3315', N'VN008', N'7', N'27', N'Ha', N'341423',N'341183', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3316', N'VN008', N'8', N'28', N'Ha', N'3421113', N'34213', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3317', N'VN008', N'9', N'29', N'Ha', N'3421013', N'34113', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3318', N'VN008', N'10', N'38', N'Ha', N'3402113', N'34104213', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3319', N'VN008', N'11', N'32', N'Ha', N'3042113', N'34014213', N'SOLD', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3309', N'VN008', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',2400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3320', N'VN008', N'12', N'31', N'Ha', N'3421103', N'30414213', N'SOLD', N'HV229365',2400000)

INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3110', N'VN006', N'2', N'22', N'Ha', N'343', N'341213', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3111', N'VN006', N'3', N'23', N'Ha', N'3343', N'3412133', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3112', N'VN006', N'4', N'24', N'Ha', N'3443', N'34123213', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3113', N'VN006', N'5', N'25', N'Ha', N'3420313', N'3412213', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3114', N'VN006', N'6', N'26', N'Ha', N'3402213', N'34012613', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3115', N'VN006', N'7', N'27', N'Ha', N'341423',N'341183', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3116', N'VN006', N'8', N'28', N'Ha', N'3421113', N'34213', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3117', N'VN006', N'9', N'29', N'Ha', N'3421013', N'34113', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3118', N'VN006', N'10', N'38', N'Ha', N'3402113', N'34104213', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3119', N'VN006', N'11', N'32', N'Ha', N'3042113', N'34014213', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3109', N'VN006', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3120', N'VN006', N'12', N'31', N'Ha', N'3421103', N'30414213', N'SOLD', N'HV229365',2200000)

INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3510', N'VN005', N'2', N'22', N'Ha', N'343', N'341213', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3511', N'VN005', N'3', N'23', N'Ha', N'3343', N'3412133', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3512', N'VN005', N'4', N'24', N'Ha', N'3443', N'34123213', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3513', N'VN005', N'5', N'25', N'Ha', N'3420313', N'3412213', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3514', N'VN005', N'6', N'26', N'Ha', N'3402213', N'34012613', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3515', N'VN005', N'7', N'27', N'Ha', N'341423',N'341183', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3516', N'VN005', N'8', N'28', N'Ha', N'3421113', N'34213', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3517', N'VN005', N'9', N'29', N'Ha', N'3421013', N'34113', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3518', N'VN005', N'10', N'38', N'Ha', N'3402113', N'34104213', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3519', N'VN005', N'11', N'32', N'Ha', N'3042113', N'34014213', N'SOLD', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3509', N'VN005', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',2200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3520', N'VN005', N'12', N'31', N'Ha', N'3421103', N'30414213', N'SOLD', N'HV229365',2200000)

INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'510', N'QH101', N'2', N'22', N'Ha', N'343', N'341213', N'SOLD', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'511', N'QH101', N'3', N'23', N'Ha', N'3343', N'3412133', N'SOLD', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'512', N'QH101', N'4', N'24', N'Ha', N'3443', N'34123213', N'SOLD', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'513', N'QH101', N'5', N'25', N'Ha', N'342313', N'3412213', N'SOLD', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'514', N'QH101', N'6', N'26', N'Ha', N'34213', N'3412613', N'SOLD', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'515', N'QH101', N'7', N'27', N'Ha', N'34123',N'3412183', N'SOLD', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'516', N'QH101', N'8', N'28', N'Ha', N'342113', N'3414213', N'SOLD', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'517', N'QH101', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'518', N'QH101', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'519', N'QH101', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'509', N'QH101', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'520', N'QH101', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5307', N'QH101', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5308', N'QH101', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5309', N'QH101', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5310', N'QH101', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5311', N'QH101', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5512', N'QH101', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5513', N'QH101', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5514', N'QH101', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5515', N'QH101', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5516', N'QH101', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5517', N'QH101', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5518', N'QH101', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5519', N'QH101', N'13', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)

INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'4520', N'QH101', N'14', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'521', N'QH101', N'15', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'522', N'QH101', N'16', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'523', N'QH101', N'17', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'524', N'QH101', N'18', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)

INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'1', N'VJ001', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365', 1600000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'10', N'VJ001', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1600000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'100', N'VN004', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'101', N'VN004', N'5', N'1121', N'Chi Lin Nguyen', N'0987896576', N'1987876','SOLD', N'HV229365',1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'102', N'VN004', N'6', N'1124', N'Kim Lin Nguyen', N'0244896576', N'1184576','SOLD', N'HV229365', 1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'103', N'VN004', N'7', N'1123', N'Tran Lin Nguyen', N'0983446576', N'1436576','SOLD', N'HV229365', 1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'104', N'VN004', N'8', N'1125', N'An Lin Nguyen', N'0987834576', N'11986576', 'SOLD', N'HV229365',1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'105', N'VN004', N'9', N'1127', N'Ha Lin Nguyen', N'0987833576',N'1787576', 'SOLD', N'HV229365', 1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'106', N'VN004', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'107', N'VN004', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'108', N'VN004', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'109', N'QH001', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'11', N'VJ001', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1600000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'110', N'QH001', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'111', N'QH001', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'112', N'QH001', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'113', N'QH001', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'114', N'QH001', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'115', N'QH001', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'116', N'QH001', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'117', N'QH001', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'118', N'QH001', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'119', N'QH001', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'12', N'VJ001', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1600000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'120', N'QH001', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'121', N'QH002', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'122', N'QH002', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'123', N'QH002', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'124', N'QH002', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'125', N'QH002', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'126', N'QH002', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365', 1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'127', N'QH002', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'128', N'QH002', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365', 1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'129', N'QH002', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'13', N'VJ002', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'130', N'QH002', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'131', N'QH002', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'132', N'QH002', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1200000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'133', N'QH003', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'134', N'QH003', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'135', N'QH003', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'136', N'QH003', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'137', N'QH003', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'138', N'QH003', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'139', N'QH003', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'14', N'VJ002', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'140', N'QH003', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'141', N'QH003', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'142', N'QH003', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'143', N'QH003', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'144', N'QH003', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'145', N'VJ001', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'146', N'VJ001', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'147', N'VJ001', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'148', N'VJ001', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'149', N'VJ002', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'15', N'VJ002', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'150', N'VJ001', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'151', N'VJ001', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'152', N'VJ001', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'153', N'VJ001', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'154', N'VJ001', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'155', N'VJ001', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'156', N'VJ001', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'16',  N'VJ002', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'164', N'VJ002', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'165', N'VJ002', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'166', N'VJ002', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'167', N'VJ002', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'168', N'VJ002', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'169', N'VJ002', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'17', N'VJ002', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'170', N'VJ002', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'171', N'VJ002', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'172', N'VJ002', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'173', N'VJ002', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'174', N'VJ002', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'175', N'VJ002', N'13', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'177', N'VJ002', N'15', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'178', N'VJ002', N'16', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'179', N'VJ002', N'17', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'18', N'VJ002', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'180', N'VJ002', N'18', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'181', N'VJ003', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'182', N'VJ003', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'183', N'VJ003', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'184', N'VJ003', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'185', N'VJ003', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'186', N'VJ003', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'187', N'VJ003', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'188', N'VJ003', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'189', N'VJ003', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'19', N'VJ002', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'190', N'VJ003', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'191', N'VJ003', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'192', N'VJ003', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'193', N'VJ003', N'13', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'194', N'VJ003', N'14', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'195', N'VJ003', N'15', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'196', N'VJ003', N'16', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'197', N'VJ003', N'17', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'198', N'VJ003', N'18', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'199', N'VJ004', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'2', N'VJ001', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3465000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'20', N'VJ002', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'200', N'VJ004', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1600000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'201', N'VJ004', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'202', N'VJ004', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'203', N'VJ004', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'204', N'VJ004', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'205', N'VJ004', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'206', N'VJ004', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'207', N'VJ004', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'208', N'VJ004', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'209', N'VJ004', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'21', N'VJ002', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'210', N'VJ004', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'211', N'VJ004', N'13', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'212', N'VJ004', N'14', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'213', N'VJ004', N'15', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'214', N'VJ004', N'16', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'215', N'VJ004', N'17', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'216', N'VJ004', N'18', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'217', N'VJ005', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'218', N'VJ005', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1470000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'219', N'VJ005', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'22', N'VJ002', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'220', N'VJ005', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'221', N'VJ005', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'222', N'VJ005', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'223', N'VJ005', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'224', N'VJ005', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'225', N'VJ005', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'226', N'VJ005', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'227', N'VJ005', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'228', N'VJ005', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'229', N'VJ005', N'13', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'23', N'VJ002', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'230', N'VJ005', N'14', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'231', N'VJ005', N'15', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'232', N'VJ005', N'16', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'233', N'VJ005', N'17', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'234', N'VJ005', N'18', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'235', N'VN001', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'236', N'VN001', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1575000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'237', N'VN001', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'238', N'VN001', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'239', N'VN001', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'24', N'VJ002', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'240', N'VN001', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'241', N'VN001', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'242', N'VN001', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'243', N'VN001', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'244', N'VN001', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'245', N'VN001', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'500', N'VJ001', N'13', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717', 1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'501', N'VJ001', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717', 1680000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'246', N'VN001', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'247', N'VN001', N'13', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'248', N'VN001', N'14', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'249', N'VN001', N'15', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'25', N'VJ003', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'250', N'VN001', N'16', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'251', N'VN001', N'17', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'252', N'VN001', N'18', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'253', N'VN002', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'254', N'VN002', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1995000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'255', N'VN002', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'256', N'VN002', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'257', N'VN002', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'258', N'VN002', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'259', N'VN002', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'26', N'VJ003', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'260', N'VN002', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'261', N'VN002', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'262', N'VN002', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'263', N'VN002', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'264', N'VN002', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'265', N'VN002', N'13', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'266', N'VN002', N'14', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'267', N'VN002', N'15', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'268', N'VN002', N'16', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'269', N'VN002', N'17', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'27', N'VJ003', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'270', N'VN002', N'18', N'66', N'Kim',N'02321321', N'02321321', N'SOLD', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'271', N'VN003', N'1', N'67', N'Kim',N'09321321', N'2320321', N'SOLD', N'HV643717',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'272', N'VN003', N'2', N'67', N'Kim', N'09321321', N'2031321', N'SOLD', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'273', N'VN003', N'3', N'68', N'Kim', N'0021321', N'202321', N'SOLD', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'274', N'VN003', N'4', N'69', N'Kim', N'05321321', N'2320021', N'SOLD', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'275', N'VN003', N'5', N'61', N'Kim', N'06321321',N'231301', N'SOLD', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'276', N'VN003', N'6', N'62', N'Kim', N'07321321', N'23210321', N'SOLD', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'277', N'VN003', N'7', N'63', N'Kim', N'08321321', N'23201321', N'SOLD', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'278', N'VN003', N'8', N'64', N'Kim', N'03321321', N'23021321', N'SOLD', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'279', N'VN003', N'9', N'65', N'Kim', N'02221321', N'23201321', N'SOLD', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'28', N'VJ003', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'280', N'VN003', N'10', N'76', N'Kim', N'23201321', N'23210321', N'SOLD', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'281', N'VN003', N'11', N'77', N'Kim',N'23021321', N'2210321', N'SOLD', N'HV643717',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'282', N'VN003', N'12', N'78', N'Kim', N'23213021', N'23221', N'SOLD', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'283', N'VN003', N'13', N'79', N'Kim',N'23210321', N'2210321', N'SOLD', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'284', N'VN003', N'14', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'285', N'VN003', N'15', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'286', N'VN003', N'16', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'287', N'VN003', N'17', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'288', N'VN003', N'18', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'289', N'VN004', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'29', N'VJ003', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1785000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'290', N'VN004', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'291', N'VN004', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'292', N'VN004', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'293', N'VN004', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'294', N'VN004', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'295', N'VN004', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'296', N'VN004', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'297', N'VN004', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'298', N'VN004', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'299', N'VN004', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'3', N'VJ001', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'30', N'VJ003', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'300', N'VN004', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1600000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'301', N'VN004', N'13', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'302', N'VN004', N'14', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'303', N'VN004', N'15', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'304', N'VN004', N'16', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'305', N'VN004', N'17', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'306', N'VN004', N'18', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'307', N'QH001', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'308', N'QH001', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'309', N'QH001', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'31', N'VJ003', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'310', N'QH001', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'311', N'QH001', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'312', N'QH001', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'313', N'QH001', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'314', N'QH001', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'315', N'QH001', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'316', N'QH001', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'317', N'QH001', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'318', N'QH001', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'319', N'QH001', N'13', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'32', N'VJ003', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'320', N'QH001', N'14', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'321', N'QH001', N'15', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'322', N'QH001', N'16', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'323', N'QH001', N'17', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'324', N'QH001', N'18', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'325', N'QH002', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'326', N'QH002', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1890000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'327', N'QH002', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'328', N'QH002', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'329', N'QH002', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'33', N'VJ003', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'330', N'QH002', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'331', N'QH002', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'332', N'QH002', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'333', N'QH002', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'334', N'QH002', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'335', N'QH002', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'336', N'QH002', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'337', N'QH002', N'13', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'338', N'QH002', N'14', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'339', N'QH002', N'15', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'34', N'VJ003', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'340', N'QH002', N'16', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'341', N'QH002', N'17', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'342', N'QH002', N'18', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'343', N'QH003', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'344', N'QH003', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	1260000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'345', N'QH003', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'346', N'QH003', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'347', N'QH003', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'348', N'QH003', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'349', N'QH003', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'35', N'VJ003', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'350', N'QH003', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'351', N'QH003', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'352', N'QH003', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'353', N'QH003', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'354', N'QH003', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'355', N'QH003', N'13', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'356', N'QH003', N'14', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'357', N'QH003', N'15', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'358', N'QH003', N'16', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'359', N'QH003', N'17', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'36', N'VJ003', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'360', N'QH003', N'18', NULL, NULL, NULL, NULL, N'TRONG', N'HV643717',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'37', N'VJ004', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3300000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'38', N'VJ004', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	3990000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'39', N'VJ004', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'4', N'VJ001', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'40', N'VJ004', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'41', N'VJ004', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1600000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'42', N'VJ004', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'43', N'VJ004', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'44', N'VJ004', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'45', N'VJ004', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'46', N'VJ004', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'47', N'VJ004', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'48', N'VJ004', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'49', N'VJ005', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'5', N'VJ001', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1400000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'50', N'VJ005', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1500000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'51', N'VJ005', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1600000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'52', N'VJ005', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1500000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'53', N'VJ005', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1500000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'54', N'VJ005', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1500000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'55', N'VJ005', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1500000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'56', N'VJ005', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1500000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'57', N'VJ005', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1500000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'58', N'VJ005', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1500000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'59', N'VJ005', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1500000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'6', N'VJ001', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1500000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'60', N'VJ005', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1500000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'61', N'VN001', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1600000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'62', N'VN001', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1500000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'63', N'VN001', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1900000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'64', N'VN001', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1900000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'65', N'VN001', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1900000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'66', N'VN001', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1900000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'67', N'VN001', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1900000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'68', N'VN001', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1900000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'69', N'VN001', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1900000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'7', N'VJ001', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1900000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'70', N'VN001', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1900000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'71', N'VN001', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1600000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'72', N'VN001', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1900000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'73', N'VN002', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1900000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'74', N'VN002', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1900000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'75', N'VN002', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'76', N'VN002', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'77', N'VN002', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'78', N'VN002', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'79', N'VN002', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'8', N'VJ001', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'80', N'VN002', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'81', N'VN002', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1600000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'82', N'VN002', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'83', N'VN002', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'84', N'VN002', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'85', N'VN003', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'86', N'VN003', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1800000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'87', N'VN003', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'88', N'VN003', N'4', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'89', N'VN003', N'5', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'9', N'VJ001', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'90', N'VN003', N'6', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'91', N'VN003', N'7', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1600000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'92', N'VN003', N'8', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'93', N'VN003', N'9', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'94', N'VN003', N'10', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'95', N'VN003', N'11', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'96', N'VN003', N'12', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'97', N'VN004', N'1', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'98', N'VN004', N'2', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',	1700000)
INSERT [VE] ([MaVe], [MaChuyenBay], [SoGhe], [MaHK], [TenHK], [SDT], [CMND], [TinhTrang], [MaHangVe], [GiaVe]) VALUES (N'99', N'VN004', N'3', NULL, NULL, NULL, NULL, N'TRONG', N'HV229365',1200000)



GO
ALTER TABLE [CHUYENBAY]  WITH CHECK ADD FOREIGN KEY([MaHangMayBay])
REFERENCES [HANGMAYBAY] ([MaHang])
GO
ALTER TABLE [CHUYENBAY]  WITH CHECK ADD FOREIGN KEY([MaHangMayBay])
REFERENCES [HANGMAYBAY] ([MaHang])
GO
ALTER TABLE [CTHD]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [HOADON] ([MaHD])
GO
ALTER TABLE [CTHD]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [HOADON] ([MaHD])
GO
ALTER TABLE [CTHD]  WITH CHECK ADD FOREIGN KEY([MaVe])
REFERENCES [VE] ([MaVe])
GO
ALTER TABLE [CTHD]  WITH CHECK ADD FOREIGN KEY([MaVe])
REFERENCES [VE] ([MaVe])
GO
ALTER TABLE [HOADON]  WITH CHECK ADD FOREIGN KEY([MaTK])
REFERENCES [TAIKHOAN] ([MaTK])
GO
ALTER TABLE [HOADON]  WITH CHECK ADD FOREIGN KEY([MaTK])
REFERENCES [TAIKHOAN] ([MaTK])
GO
ALTER TABLE [QuanLyHangVeChuyenBay]  WITH CHECK ADD FOREIGN KEY([MaChuyenBay])
REFERENCES [CHUYENBAY] ([MaChuyenBay])
GO
ALTER TABLE [QuanLyHangVeChuyenBay]  WITH CHECK ADD FOREIGN KEY([MaChuyenBay])
REFERENCES [CHUYENBAY] ([MaChuyenBay])
GO
ALTER TABLE [QuanLyHangVeChuyenBay]  WITH CHECK ADD FOREIGN KEY([MaHangVe])
REFERENCES [HANGVE] ([MaHangVe])
GO
ALTER TABLE [QuanLyHangVeChuyenBay]  WITH CHECK ADD FOREIGN KEY([MaHangVe])
REFERENCES [HANGVE] ([MaHangVe])
GO
ALTER TABLE [SANBAYTRUNGGIAN]  WITH CHECK ADD FOREIGN KEY([MaChuyenBay])
REFERENCES [CHUYENBAY] ([MaChuyenBay])
GO
ALTER TABLE [SANBAYTRUNGGIAN]  WITH CHECK ADD FOREIGN KEY([MaChuyenBay])
REFERENCES [CHUYENBAY] ([MaChuyenBay])
GO
ALTER TABLE [VE]  WITH CHECK ADD FOREIGN KEY([MaChuyenBay])
REFERENCES [CHUYENBAY] ([MaChuyenBay])
GO
ALTER TABLE [VE]  WITH CHECK ADD FOREIGN KEY([MaChuyenBay])
REFERENCES [CHUYENBAY] ([MaChuyenBay])
GO
ALTER TABLE [VE]  WITH CHECK ADD FOREIGN KEY([MaHangVe])
REFERENCES [HANGVE] ([MaHangVe])
GO
ALTER TABLE [VE]  WITH CHECK ADD FOREIGN KEY([MaHangVe])
REFERENCES [HANGVE] ([MaHangVe])
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET  READ_WRITE 
GO

