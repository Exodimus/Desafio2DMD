USE [master]
GO
/****** Object:  Database [CovidMovilidad]    Script Date: 3/6/2023 20:46:58 ******/
CREATE DATABASE [CovidMovilidad]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CovidMovilidad', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CovidMovilidad.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CovidMovilidad_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CovidMovilidad_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CovidMovilidad] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CovidMovilidad].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CovidMovilidad] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CovidMovilidad] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CovidMovilidad] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CovidMovilidad] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CovidMovilidad] SET ARITHABORT OFF 
GO
ALTER DATABASE [CovidMovilidad] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CovidMovilidad] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CovidMovilidad] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CovidMovilidad] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CovidMovilidad] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CovidMovilidad] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CovidMovilidad] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CovidMovilidad] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CovidMovilidad] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CovidMovilidad] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CovidMovilidad] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CovidMovilidad] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CovidMovilidad] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CovidMovilidad] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CovidMovilidad] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CovidMovilidad] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CovidMovilidad] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CovidMovilidad] SET RECOVERY FULL 
GO
ALTER DATABASE [CovidMovilidad] SET  MULTI_USER 
GO
ALTER DATABASE [CovidMovilidad] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CovidMovilidad] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CovidMovilidad] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CovidMovilidad] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CovidMovilidad] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CovidMovilidad] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CovidMovilidad', N'ON'
GO
ALTER DATABASE [CovidMovilidad] SET QUERY_STORE = OFF
GO
USE [CovidMovilidad]
GO
/****** Object:  Table [dbo].[report]    Script Date: 3/6/2023 20:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report](
	[country_region_code] [varchar](50) NULL,
	[country_region] [varchar](50) NULL,
	[sub_region_1] [varchar](50) NULL,
	[sub_region_2] [varchar](50) NULL,
	[metro_area] [varchar](50) NULL,
	[iso_3166_2_code] [varchar](50) NULL,
	[census_fips_code] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[retail_and_recreation_percent_change_from_baseline] [varchar](50) NULL,
	[grocery_and_pharmacy_percent_change_from_baseline] [varchar](50) NULL,
	[parks_percent_change_from_baseline] [varchar](50) NULL,
	[transit_stations_percent_change_from_baseline] [varchar](50) NULL,
	[workplaces_percent_change_from_baseline] [varchar](50) NULL,
	[residential_percent_change_from_baseline] [varchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [CovidMovilidad] SET  READ_WRITE 
GO
