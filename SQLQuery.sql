USE [master]
GO
/****** Object:  Database [ProductsData]    Script Date: 2/1/2023 12:41:05 PM ******/
CREATE DATABASE [ProductsData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProductsData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProductsData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProductsData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProductsData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProductsData] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProductsData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProductsData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProductsData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProductsData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProductsData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProductsData] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProductsData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProductsData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProductsData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProductsData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProductsData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProductsData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProductsData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProductsData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProductsData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProductsData] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProductsData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProductsData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProductsData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProductsData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProductsData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProductsData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProductsData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProductsData] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProductsData] SET  MULTI_USER 
GO
ALTER DATABASE [ProductsData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProductsData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProductsData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProductsData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProductsData] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProductsData] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProductsData] SET QUERY_STORE = OFF
GO
USE [ProductsData]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/1/2023 12:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] NULL,
	[ProductName] [varchar](255) NULL,
	[CategoryId] [int] NULL,
	[CategoryName] [varchar](255) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (9, N'Evocus Bottle', 1005, N'Drinking Bottle')
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (8, N'Pearl Earings', 1008, N'Earings')
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (3, N'white green shoes', 1003, N'Shoes')
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (4, N'Light Pink Yoga mat', 1004, N'Mats')
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (5, N'Jaipuri Handmade Kalamkari Cotton rug', 1005, N'Jaipur Rugs')
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (7, N'Hiking BackPack', 1007, N'Bags')
GO
USE [master]
GO
ALTER DATABASE [ProductsData] SET  READ_WRITE 
GO
