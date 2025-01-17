USE [master]
GO
/****** Object:  Database [QLyLuong]    Script Date: 11/12/2023 10:26:07 PM ******/
CREATE DATABASE [QLyLuong]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLyLuong', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLyLuong.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLyLuong_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLyLuong_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLyLuong] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLyLuong].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLyLuong] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLyLuong] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLyLuong] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLyLuong] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLyLuong] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLyLuong] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLyLuong] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLyLuong] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLyLuong] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLyLuong] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLyLuong] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLyLuong] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLyLuong] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLyLuong] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLyLuong] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLyLuong] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLyLuong] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLyLuong] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLyLuong] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLyLuong] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLyLuong] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLyLuong] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLyLuong] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLyLuong] SET  MULTI_USER 
GO
ALTER DATABASE [QLyLuong] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLyLuong] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLyLuong] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLyLuong] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLyLuong] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLyLuong] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLyLuong] SET QUERY_STORE = OFF
GO
USE [QLyLuong]
GO
/****** Object:  Table [dbo].[ChamCong]    Script Date: 11/12/2023 10:26:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCong](
	[maCN] [nvarchar](10) NOT NULL,
	[maCD] [nvarchar](10) NOT NULL,
	[ngayCham] [date] NULL,
	[chiTieu] [int] NULL,
	[soLuongHoanThanh] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongDoan]    Script Date: 11/12/2023 10:26:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongDoan](
	[maCD] [nvarchar](10) NOT NULL,
	[tenCD] [nvarchar](50) NOT NULL,
	[luongTheoSP] [float] NULL,
	[maSP] [nvarchar](10) NULL,
	[thuTu] [int] NULL,
 CONSTRAINT [PK_CongDoan] PRIMARY KEY CLUSTERED 
(
	[maCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongNhanSanXuat]    Script Date: 11/12/2023 10:26:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongNhanSanXuat](
	[maCN] [nvarchar](10) NOT NULL,
	[hoTenCN] [nvarchar](50) NOT NULL,
	[gioiTinh] [bit] NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](255) NULL,
	[CCCD] [nvarchar](50) NULL,
	[SDT] [nvarchar](20) NULL,
	[ngayVao] [date] NULL,
	[maToSX] [int] NULL,
	[trangThai] [bit] NULL,
	[bangCap] [nvarchar](50) NULL,
	[tayNghe] [int] NULL,
	[luongSanPham] [float] NULL,
	[phuCap] [float] NULL,
 CONSTRAINT [PK_CongNhanSanXuat] PRIMARY KEY CLUSTERED 
(
	[maCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemDanh]    Script Date: 11/12/2023 10:26:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemDanh](
	[maNV] [nvarchar](10) NOT NULL,
	[ngayCham] [date] NOT NULL,
	[trangThai] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongCongNhanSanXuat]    Script Date: 11/12/2023 10:26:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongCongNhanSanXuat](
	[maBangLuongCN] [nvarchar](10) NOT NULL,
	[ngayTinhLuong] [date] NULL,
	[nam] [int] NULL,
	[thang] [int] NULL,
	[luongSanPham] [float] NULL,
	[tienTamUng] [float] NULL,
	[baoHiemXaHoi] [float] NULL,
	[baoHiemYTe] [float] NULL,
	[baoHiemThatNghiep] [float] NULL,
	[thueTNCN] [float] NULL,
	[luongThucLanh] [float] NULL,
	[maCN] [nvarchar](10) NULL,
 CONSTRAINT [PK_LuongCongNhanSanXuat] PRIMARY KEY CLUSTERED 
(
	[maBangLuongCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongNhanVienHanhChinh]    Script Date: 11/12/2023 10:26:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongNhanVienHanhChinh](
	[maBangLuongHC] [nvarchar](10) NOT NULL,
	[ngayTinhLuong] [date] NULL,
	[nam] [int] NULL,
	[thang] [int] NULL,
	[luongChinh] [float] NULL,
	[tienTamUng] [float] NULL,
	[baoHiemXaHoi] [float] NULL,
	[baoHiemYTe] [float] NULL,
	[baoHiemThatNghiep] [float] NULL,
	[thueTNCN] [float] NULL,
	[luongThucLanh] [float] NULL,
	[maNV] [nvarchar](10) NULL,
 CONSTRAINT [PK_LuongNhanVienHanhChinh] PRIMARY KEY CLUSTERED 
(
	[maBangLuongHC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVienHanhChinh]    Script Date: 11/12/2023 10:26:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVienHanhChinh](
	[maNV] [nvarchar](10) NOT NULL,
	[hoTenNV] [nvarchar](50) NOT NULL,
	[gioiTinh] [bit] NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](255) NULL,
	[CCCD] [nvarchar](20) NULL,
	[SDT] [nvarchar](20) NULL,
	[ngayVao] [date] NULL,
	[maPhongBan] [nvarchar](10) NULL,
	[trangThai] [bit] NULL,
	[bangCap] [nvarchar](50) NULL,
	[luongCoBan] [float] NULL,
	[phuCap] [float] NULL,
	[heSoLuong] [float] NULL,
	[tenTK] [nvarchar](20) NULL,
	[email] [nvarchar](255) NULL,
 CONSTRAINT [PK_NhanVienHanhChinh] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 11/12/2023 10:26:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[maPhongBan] [nvarchar](10) NOT NULL,
	[tenPhongBan] [nvarchar](50) NOT NULL,
	[soLuongNV] [int] NOT NULL,
	[moTa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[maPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/12/2023 10:26:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSP] [nvarchar](10) NOT NULL,
	[tenSP] [nvarchar](50) NOT NULL,
	[soLuongTon] [int] NULL,
	[giaThanh] [money] NULL,
	[trangThai] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/12/2023 10:26:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[tenTK] [nvarchar](20) NOT NULL,
	[matKhau] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[tenTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToSanXuat]    Script Date: 11/12/2023 10:26:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToSanXuat](
	[maToSX] [int] NOT NULL,
	[moTa] [nvarchar](50) NOT NULL,
	[soLuongCN] [int] NOT NULL,
 CONSTRAINT [PK_ToSanXuat] PRIMARY KEY CLUSTERED 
(
	[maToSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChamCong_CongDoan] FOREIGN KEY([maCD])
REFERENCES [dbo].[CongDoan] ([maCD])
GO
ALTER TABLE [dbo].[ChamCong] CHECK CONSTRAINT [FK_ChamCong_CongDoan]
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChamCong_CongNhanSanXuat] FOREIGN KEY([maCN])
REFERENCES [dbo].[CongNhanSanXuat] ([maCN])
GO
ALTER TABLE [dbo].[ChamCong] CHECK CONSTRAINT [FK_ChamCong_CongNhanSanXuat]
GO
ALTER TABLE [dbo].[CongDoan]  WITH CHECK ADD  CONSTRAINT [FK_CongDoan_SanPham] FOREIGN KEY([maSP])
REFERENCES [dbo].[SanPham] ([maSP])
GO
ALTER TABLE [dbo].[CongDoan] CHECK CONSTRAINT [FK_CongDoan_SanPham]
GO
ALTER TABLE [dbo].[CongNhanSanXuat]  WITH CHECK ADD  CONSTRAINT [FK_CongNhanSanXuat_ToSanXuat] FOREIGN KEY([maToSX])
REFERENCES [dbo].[ToSanXuat] ([maToSX])
GO
ALTER TABLE [dbo].[CongNhanSanXuat] CHECK CONSTRAINT [FK_CongNhanSanXuat_ToSanXuat]
GO
ALTER TABLE [dbo].[DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_NgayNghi_NhanVienHanhChinh] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVienHanhChinh] ([maNV])
GO
ALTER TABLE [dbo].[DiemDanh] CHECK CONSTRAINT [FK_NgayNghi_NhanVienHanhChinh]
GO
ALTER TABLE [dbo].[LuongCongNhanSanXuat]  WITH CHECK ADD  CONSTRAINT [FK_LuongCongNhanSanXuat_CongNhanSanXuat] FOREIGN KEY([maCN])
REFERENCES [dbo].[CongNhanSanXuat] ([maCN])
GO
ALTER TABLE [dbo].[LuongCongNhanSanXuat] CHECK CONSTRAINT [FK_LuongCongNhanSanXuat_CongNhanSanXuat]
GO
ALTER TABLE [dbo].[LuongNhanVienHanhChinh]  WITH CHECK ADD  CONSTRAINT [FK_LuongNhanVienHanhChinh_NhanVienHanhChinh] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVienHanhChinh] ([maNV])
GO
ALTER TABLE [dbo].[LuongNhanVienHanhChinh] CHECK CONSTRAINT [FK_LuongNhanVienHanhChinh_NhanVienHanhChinh]
GO
ALTER TABLE [dbo].[NhanVienHanhChinh]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienHanhChinh_PhongBan] FOREIGN KEY([maPhongBan])
REFERENCES [dbo].[PhongBan] ([maPhongBan])
GO
ALTER TABLE [dbo].[NhanVienHanhChinh] CHECK CONSTRAINT [FK_NhanVienHanhChinh_PhongBan]
GO
ALTER TABLE [dbo].[NhanVienHanhChinh]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienHanhChinh_TaiKhoan] FOREIGN KEY([tenTK])
REFERENCES [dbo].[TaiKhoan] ([tenTK])
GO
ALTER TABLE [dbo].[NhanVienHanhChinh] CHECK CONSTRAINT [FK_NhanVienHanhChinh_TaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [QLyLuong] SET  READ_WRITE 
GO
