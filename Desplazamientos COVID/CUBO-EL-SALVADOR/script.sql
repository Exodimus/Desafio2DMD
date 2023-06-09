USE [master]
GO
/****** Object:  Database [2020_SV_Region_Mobility_Report_normalized]    Script Date: 3/6/2023 03:55:37 p. m. ******/
CREATE DATABASE [2020_SV_Region_Mobility_Report_normalized]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'2020_SV_Region_Mobility_Report_normalized', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\2020_SV_Region_Mobility_Report_normalized.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'2020_SV_Region_Mobility_Report_normalized_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\2020_SV_Region_Mobility_Report_normalized_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [2020_SV_Region_Mobility_Report_normalized].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET ARITHABORT OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET  DISABLE_BROKER 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET  MULTI_USER 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET DB_CHAINING OFF 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET QUERY_STORE = ON
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [2020_SV_Region_Mobility_Report_normalized]
GO
/****** Object:  Table [dbo].[CensusFIPS]    Script Date: 3/6/2023 03:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CensusFIPS](
	[id] [int] NOT NULL,
	[census_fips_code] [varchar](50) NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_CensusFIPS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 3/6/2023 03:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[id] [int] NOT NULL,
	[country_region_code] [varchar](50) NOT NULL,
	[country_region] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Data]    Script Date: 3/6/2023 03:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data](
	[id] [int] NOT NULL,
	[date] [varchar](50) NOT NULL,
	[country_id] [int] NOT NULL,
	[sub_region_id] [int] NOT NULL,
	[metro_area_id] [int] NOT NULL,
	[iso3166_id] [int] NOT NULL,
	[census_fips_id] [int] NOT NULL,
	[retail_and_recreation_percent_change_from_baseline] [varchar](50) NOT NULL,
	[grocery_and_pharmacy_percent_change_from_baseline] [varchar](50) NOT NULL,
	[parks_percent_change_from_baseline] [varchar](50) NOT NULL,
	[transit_stations_percent_change_from_baseline] [varchar](50) NOT NULL,
	[workplaces_percent_change_from_baseline] [varchar](50) NOT NULL,
	[residential_percent_change_from_baseline] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ISO3166]    Script Date: 3/6/2023 03:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ISO3166](
	[id] [int] NOT NULL,
	[iso_3166_2_code] [varchar](50) NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_ISO3166] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetroArea]    Script Date: 3/6/2023 03:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetroArea](
	[id] [int] NOT NULL,
	[metro_area] [varchar](50) NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_MetroArea] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubRegion]    Script Date: 3/6/2023 03:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubRegion](
	[id] [int] NOT NULL,
	[country_id] [int] NOT NULL,
	[sub_region_1] [varchar](50) NOT NULL,
	[sub_region_2] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SubRegion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CensusFIPS]  WITH CHECK ADD  CONSTRAINT [FK_CensusFIPS_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[CensusFIPS] CHECK CONSTRAINT [FK_CensusFIPS_Country]
GO
ALTER TABLE [dbo].[Data]  WITH CHECK ADD  CONSTRAINT [FK_Data_CensusFIPS] FOREIGN KEY([census_fips_id])
REFERENCES [dbo].[CensusFIPS] ([id])
GO
ALTER TABLE [dbo].[Data] CHECK CONSTRAINT [FK_Data_CensusFIPS]
GO
ALTER TABLE [dbo].[Data]  WITH CHECK ADD  CONSTRAINT [FK_Data_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[Data] CHECK CONSTRAINT [FK_Data_Country]
GO
ALTER TABLE [dbo].[Data]  WITH CHECK ADD  CONSTRAINT [FK_Data_ISO3166] FOREIGN KEY([iso3166_id])
REFERENCES [dbo].[ISO3166] ([id])
GO
ALTER TABLE [dbo].[Data] CHECK CONSTRAINT [FK_Data_ISO3166]
GO
ALTER TABLE [dbo].[Data]  WITH CHECK ADD  CONSTRAINT [FK_Data_MetroArea] FOREIGN KEY([metro_area_id])
REFERENCES [dbo].[MetroArea] ([id])
GO
ALTER TABLE [dbo].[Data] CHECK CONSTRAINT [FK_Data_MetroArea]
GO
ALTER TABLE [dbo].[Data]  WITH CHECK ADD  CONSTRAINT [FK_Data_SubRegion] FOREIGN KEY([sub_region_id])
REFERENCES [dbo].[SubRegion] ([id])
GO
ALTER TABLE [dbo].[Data] CHECK CONSTRAINT [FK_Data_SubRegion]
GO
ALTER TABLE [dbo].[ISO3166]  WITH CHECK ADD  CONSTRAINT [FK_ISO3166_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[ISO3166] CHECK CONSTRAINT [FK_ISO3166_Country]
GO
ALTER TABLE [dbo].[MetroArea]  WITH CHECK ADD  CONSTRAINT [FK_MetroArea_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[MetroArea] CHECK CONSTRAINT [FK_MetroArea_Country]
GO
ALTER TABLE [dbo].[SubRegion]  WITH CHECK ADD  CONSTRAINT [FK_SubRegion_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[SubRegion] CHECK CONSTRAINT [FK_SubRegion_Country]
GO
USE [master]
GO
ALTER DATABASE [2020_SV_Region_Mobility_Report_normalized] SET  READ_WRITE 
GO
