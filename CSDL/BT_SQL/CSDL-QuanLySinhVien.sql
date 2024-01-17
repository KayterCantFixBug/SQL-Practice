USE [master]
GO
/****** Object:  Database [QuanLySinhVien]    Script Date: 6/4/18 10:38:12 PM ******/
CREATE DATABASE [QuanLySinhVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLySinhVien', FILENAME = N'D:\Database\QuanLySinhVien.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLySinhVien_log', FILENAME = N'D:\Database\QuanLySinhVien_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLySinhVien] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLySinhVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLySinhVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLySinhVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLySinhVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLySinhVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLySinhVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLySinhVien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLySinhVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLySinhVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLySinhVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLySinhVien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLySinhVien] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLySinhVien', N'ON'
GO
ALTER DATABASE [QuanLySinhVien] SET QUERY_STORE = OFF
GO
USE [QuanLySinhVien]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QuanLySinhVien]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 6/4/18 10:38:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Tuoi] [int] NULL,
	[MaLop] [nchar](10) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Tuoi], [MaLop]) VALUES (N'S01       ', N'Nguyen Van An', 18, N'L1        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Tuoi], [MaLop]) VALUES (N'S02       ', N'Tran Thi Ngoc Chau', 19, N'L2        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Tuoi], [MaLop]) VALUES (N'S03       ', N'Huynh Minh Tri', 20, N'L3        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Tuoi], [MaLop]) VALUES (N'S04       ', N'Truong Quoc Tri An', 19, N'L1        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Tuoi], [MaLop]) VALUES (N'S05       ', N'Huynh Ngoc Minh Anh', 18, N'L2        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Tuoi], [MaLop]) VALUES (N'S06       ', N'Dang Tran Khanh', 19, N'L2        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Tuoi], [MaLop]) VALUES (N'S07       ', N'Pham Tuong Hai', 18, N'L3        ')
USE [master]
GO
ALTER DATABASE [QuanLySinhVien] SET  READ_WRITE 
GO
