USE [master]
GO
/****** Object:  Database [isaxtar]    Script Date: 26.12.2017 2:54:14 ******/
CREATE DATABASE [isaxtar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'isaxtar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\isaxtar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'isaxtar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\isaxtar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [isaxtar] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [isaxtar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [isaxtar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [isaxtar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [isaxtar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [isaxtar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [isaxtar] SET ARITHABORT OFF 
GO
ALTER DATABASE [isaxtar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [isaxtar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [isaxtar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [isaxtar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [isaxtar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [isaxtar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [isaxtar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [isaxtar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [isaxtar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [isaxtar] SET  DISABLE_BROKER 
GO
ALTER DATABASE [isaxtar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [isaxtar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [isaxtar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [isaxtar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [isaxtar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [isaxtar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [isaxtar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [isaxtar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [isaxtar] SET  MULTI_USER 
GO
ALTER DATABASE [isaxtar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [isaxtar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [isaxtar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [isaxtar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [isaxtar] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [isaxtar] SET QUERY_STORE = OFF
GO
USE [isaxtar]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [isaxtar]
GO
/****** Object:  Table [dbo].[Cinsler]    Script Date: 26.12.2017 2:54:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cinsler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cins] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Cinsler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CVler]    Script Date: 26.12.2017 2:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CVler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[Ata_adi] [nvarchar](50) NOT NULL,
	[CinsId] [int] NOT NULL,
	[Min_yashId] [int] NOT NULL,
	[Shekil] [nvarchar](50) NOT NULL,
	[TehsilId] [int] NOT NULL,
	[Ish_tecrubesiId] [int] NOT NULL,
	[KategoriyaId] [int] NOT NULL,
	[Vezife] [nvarchar](50) NOT NULL,
	[SheherId] [int] NOT NULL,
	[Min_maashId] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Telefon] [nvarchar](50) NOT NULL,
	[Elave_melumat] [text] NOT NULL,
 CONSTRAINT [PK_CVler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Elanlar]    Script Date: 26.12.2017 2:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elanlar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Telefon] [nvarchar](50) NOT NULL,
	[KategoriyaId] [int] NOT NULL,
	[Vezife] [nvarchar](100) NOT NULL,
	[Shirket_adi] [nvarchar](50) NOT NULL,
	[Min_maashId] [int] NOT NULL,
	[Max_maashId] [int] NOT NULL,
	[SheherId] [int] NOT NULL,
	[Min_yashId] [int] NOT NULL,
	[Max_yashId] [int] NOT NULL,
	[TehsilId] [int] NOT NULL,
	[Ish_tecrubesiId] [int] NOT NULL,
	[Elanin_tarixi] [date] NOT NULL,
	[Bitme_tarixi] [date] NOT NULL,
	[Elaqedar_shexs] [nvarchar](50) NOT NULL,
	[Ish_barede_melumat] [text] NOT NULL,
	[Namizede_telebler] [text] NOT NULL,
 CONSTRAINT [PK_Elanlar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ish_tecrubesi]    Script Date: 26.12.2017 2:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ish_tecrubesi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ili] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ish_tecrubesi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriya]    Script Date: 26.12.2017 2:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriya](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kategoriya] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Max_maash]    Script Date: 26.12.2017 2:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Max_maash](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mebleg] [int] NOT NULL,
 CONSTRAINT [PK_Max_maash] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Max_yashlar]    Script Date: 26.12.2017 2:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Max_yashlar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Max_yash] [int] NOT NULL,
 CONSTRAINT [PK_Max_yashlar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Min_maash]    Script Date: 26.12.2017 2:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Min_maash](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mebleg] [int] NOT NULL,
 CONSTRAINT [PK_Min_maash] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Min_yashlar]    Script Date: 26.12.2017 2:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Min_yashlar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Min_yash] [int] NOT NULL,
 CONSTRAINT [PK_Yashlar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nov]    Script Date: 26.12.2017 2:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nov](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[KateqoriyaId] [int] NOT NULL,
 CONSTRAINT [PK_Nov] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sheher]    Script Date: 26.12.2017 2:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sheher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sheher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tehsil]    Script Date: 26.12.2017 2:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tehsil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Derecesi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tehsil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cinsler] ON 

INSERT [dbo].[Cinsler] ([Id], [Cins]) VALUES (1, N'Kişi')
INSERT [dbo].[Cinsler] ([Id], [Cins]) VALUES (2, N'Qadın')
SET IDENTITY_INSERT [dbo].[Cinsler] OFF
SET IDENTITY_INSERT [dbo].[Ish_tecrubesi] ON 

INSERT [dbo].[Ish_tecrubesi] ([Id], [Ili]) VALUES (1, N'1 ildən aşağı')
INSERT [dbo].[Ish_tecrubesi] ([Id], [Ili]) VALUES (2, N'1 ildən 3 ilə qədər')
INSERT [dbo].[Ish_tecrubesi] ([Id], [Ili]) VALUES (3, N'3 ildən 5 ilə qədər')
INSERT [dbo].[Ish_tecrubesi] ([Id], [Ili]) VALUES (4, N'5 ildən artıq')
SET IDENTITY_INSERT [dbo].[Ish_tecrubesi] OFF
SET IDENTITY_INSERT [dbo].[Kategoriya] ON 

INSERT [dbo].[Kategoriya] ([Id], [Ad]) VALUES (1, N'Maliyyə')
INSERT [dbo].[Kategoriya] ([Id], [Ad]) VALUES (2, N'Marketing')
INSERT [dbo].[Kategoriya] ([Id], [Ad]) VALUES (3, N'İnformasiya Texnologiyaları')
INSERT [dbo].[Kategoriya] ([Id], [Ad]) VALUES (4, N'İnzibati')
INSERT [dbo].[Kategoriya] ([Id], [Ad]) VALUES (5, N'Satış')
INSERT [dbo].[Kategoriya] ([Id], [Ad]) VALUES (6, N'Dizayn')
INSERT [dbo].[Kategoriya] ([Id], [Ad]) VALUES (7, N'Hüquqşunaslıq')
INSERT [dbo].[Kategoriya] ([Id], [Ad]) VALUES (8, N'Təhsil və Elm')
INSERT [dbo].[Kategoriya] ([Id], [Ad]) VALUES (9, N'Sənaye və Kənd təsərrüfatı')
INSERT [dbo].[Kategoriya] ([Id], [Ad]) VALUES (10, N'Xidmət')
INSERT [dbo].[Kategoriya] ([Id], [Ad]) VALUES (11, N'Tibb və Əczaçılıq')
INSERT [dbo].[Kategoriya] ([Id], [Ad]) VALUES (12, N'Müxtəlif')
SET IDENTITY_INSERT [dbo].[Kategoriya] OFF
SET IDENTITY_INSERT [dbo].[Max_maash] ON 

INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (1, 200)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (2, 300)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (3, 400)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (4, 500)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (5, 600)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (6, 700)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (7, 800)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (8, 900)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (9, 1000)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (10, 1100)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (11, 1200)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (12, 1300)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (13, 1400)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (14, 1500)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (15, 1600)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (16, 1700)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (17, 1800)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (18, 1900)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (19, 2000)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (20, 2100)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (21, 2200)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (22, 2300)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (23, 2400)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (24, 2500)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (25, 3000)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (26, 4000)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (27, 5000)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (28, 6000)
INSERT [dbo].[Max_maash] ([Id], [Mebleg]) VALUES (29, 7000)
SET IDENTITY_INSERT [dbo].[Max_maash] OFF
SET IDENTITY_INSERT [dbo].[Max_yashlar] ON 

INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (1, 18)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (2, 19)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (3, 20)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (4, 21)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (5, 22)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (6, 23)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (7, 24)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (8, 25)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (9, 26)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (10, 27)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (11, 28)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (12, 29)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (13, 30)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (14, 31)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (15, 32)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (16, 33)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (17, 34)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (18, 35)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (19, 36)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (20, 37)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (21, 38)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (22, 39)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (23, 40)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (24, 41)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (25, 42)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (26, 43)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (27, 44)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (28, 45)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (29, 46)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (30, 47)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (31, 48)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (32, 49)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (33, 50)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (34, 51)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (35, 52)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (36, 53)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (37, 54)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (38, 55)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (39, 56)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (40, 57)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (41, 58)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (42, 59)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (43, 60)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (44, 61)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (45, 62)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (46, 63)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (47, 64)
INSERT [dbo].[Max_yashlar] ([Id], [Max_yash]) VALUES (48, 65)
SET IDENTITY_INSERT [dbo].[Max_yashlar] OFF
SET IDENTITY_INSERT [dbo].[Min_maash] ON 

INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (1, 100)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (2, 200)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (3, 300)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (4, 400)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (5, 500)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (6, 600)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (7, 700)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (8, 800)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (9, 900)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (10, 1000)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (11, 1100)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (12, 1200)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (13, 1300)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (14, 1400)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (15, 1500)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (16, 1600)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (17, 1700)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (18, 1800)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (19, 1900)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (20, 2000)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (21, 2100)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (22, 2200)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (23, 2300)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (24, 2400)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (25, 2500)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (26, 3000)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (27, 4000)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (28, 5000)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (29, 6000)
INSERT [dbo].[Min_maash] ([Id], [Mebleg]) VALUES (30, 7000)
SET IDENTITY_INSERT [dbo].[Min_maash] OFF
SET IDENTITY_INSERT [dbo].[Min_yashlar] ON 

INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (1, 18)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (2, 19)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (3, 20)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (4, 21)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (5, 22)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (6, 23)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (7, 24)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (8, 25)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (9, 26)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (10, 27)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (11, 28)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (12, 29)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (13, 30)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (14, 31)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (15, 32)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (16, 33)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (17, 34)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (18, 35)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (19, 36)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (20, 37)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (21, 38)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (22, 39)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (23, 40)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (24, 41)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (25, 42)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (26, 43)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (27, 44)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (28, 45)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (29, 46)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (30, 47)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (31, 48)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (32, 49)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (33, 50)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (34, 51)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (35, 52)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (36, 53)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (37, 54)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (38, 55)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (39, 56)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (40, 57)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (41, 58)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (42, 59)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (43, 60)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (44, 61)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (45, 62)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (46, 63)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (47, 64)
INSERT [dbo].[Min_yashlar] ([Id], [Min_yash]) VALUES (48, 65)
SET IDENTITY_INSERT [dbo].[Min_yashlar] OFF
SET IDENTITY_INSERT [dbo].[Tehsil] ON 

INSERT [dbo].[Tehsil] ([Id], [Derecesi]) VALUES (1, N'Orta')
INSERT [dbo].[Tehsil] ([Id], [Derecesi]) VALUES (2, N'Orta Xüsusi')
INSERT [dbo].[Tehsil] ([Id], [Derecesi]) VALUES (3, N'Orta Texniki')
INSERT [dbo].[Tehsil] ([Id], [Derecesi]) VALUES (4, N'Natamam Ali')
INSERT [dbo].[Tehsil] ([Id], [Derecesi]) VALUES (5, N'Ali')
INSERT [dbo].[Tehsil] ([Id], [Derecesi]) VALUES (6, N'Elmi Dərəcə')
SET IDENTITY_INSERT [dbo].[Tehsil] OFF
ALTER TABLE [dbo].[CVler]  WITH CHECK ADD  CONSTRAINT [FK_CVler_Cinsler] FOREIGN KEY([CinsId])
REFERENCES [dbo].[Cinsler] ([Id])
GO
ALTER TABLE [dbo].[CVler] CHECK CONSTRAINT [FK_CVler_Cinsler]
GO
ALTER TABLE [dbo].[CVler]  WITH CHECK ADD  CONSTRAINT [FK_CVler_Ish_tecrubesi] FOREIGN KEY([Ish_tecrubesiId])
REFERENCES [dbo].[Ish_tecrubesi] ([Id])
GO
ALTER TABLE [dbo].[CVler] CHECK CONSTRAINT [FK_CVler_Ish_tecrubesi]
GO
ALTER TABLE [dbo].[CVler]  WITH CHECK ADD  CONSTRAINT [FK_CVler_Kategoriya] FOREIGN KEY([KategoriyaId])
REFERENCES [dbo].[Kategoriya] ([Id])
GO
ALTER TABLE [dbo].[CVler] CHECK CONSTRAINT [FK_CVler_Kategoriya]
GO
ALTER TABLE [dbo].[CVler]  WITH CHECK ADD  CONSTRAINT [FK_CVler_Min_maash] FOREIGN KEY([Min_maashId])
REFERENCES [dbo].[Min_maash] ([Id])
GO
ALTER TABLE [dbo].[CVler] CHECK CONSTRAINT [FK_CVler_Min_maash]
GO
ALTER TABLE [dbo].[CVler]  WITH CHECK ADD  CONSTRAINT [FK_CVler_Min_yashlar] FOREIGN KEY([Min_yashId])
REFERENCES [dbo].[Min_yashlar] ([Id])
GO
ALTER TABLE [dbo].[CVler] CHECK CONSTRAINT [FK_CVler_Min_yashlar]
GO
ALTER TABLE [dbo].[CVler]  WITH CHECK ADD  CONSTRAINT [FK_CVler_Sheher] FOREIGN KEY([SheherId])
REFERENCES [dbo].[Sheher] ([Id])
GO
ALTER TABLE [dbo].[CVler] CHECK CONSTRAINT [FK_CVler_Sheher]
GO
ALTER TABLE [dbo].[CVler]  WITH CHECK ADD  CONSTRAINT [FK_CVler_Tehsil] FOREIGN KEY([TehsilId])
REFERENCES [dbo].[Tehsil] ([Id])
GO
ALTER TABLE [dbo].[CVler] CHECK CONSTRAINT [FK_CVler_Tehsil]
GO
ALTER TABLE [dbo].[Elanlar]  WITH CHECK ADD  CONSTRAINT [FK_Elanlar_Ish_tecrubesi] FOREIGN KEY([Ish_tecrubesiId])
REFERENCES [dbo].[Ish_tecrubesi] ([Id])
GO
ALTER TABLE [dbo].[Elanlar] CHECK CONSTRAINT [FK_Elanlar_Ish_tecrubesi]
GO
ALTER TABLE [dbo].[Elanlar]  WITH CHECK ADD  CONSTRAINT [FK_Elanlar_Kategoriya] FOREIGN KEY([KategoriyaId])
REFERENCES [dbo].[Kategoriya] ([Id])
GO
ALTER TABLE [dbo].[Elanlar] CHECK CONSTRAINT [FK_Elanlar_Kategoriya]
GO
ALTER TABLE [dbo].[Elanlar]  WITH CHECK ADD  CONSTRAINT [FK_Elanlar_Max_maash] FOREIGN KEY([Max_maashId])
REFERENCES [dbo].[Max_maash] ([Id])
GO
ALTER TABLE [dbo].[Elanlar] CHECK CONSTRAINT [FK_Elanlar_Max_maash]
GO
ALTER TABLE [dbo].[Elanlar]  WITH CHECK ADD  CONSTRAINT [FK_Elanlar_Max_yashlar] FOREIGN KEY([Max_yashId])
REFERENCES [dbo].[Max_yashlar] ([Id])
GO
ALTER TABLE [dbo].[Elanlar] CHECK CONSTRAINT [FK_Elanlar_Max_yashlar]
GO
ALTER TABLE [dbo].[Elanlar]  WITH CHECK ADD  CONSTRAINT [FK_Elanlar_Min_maash] FOREIGN KEY([Min_maashId])
REFERENCES [dbo].[Min_maash] ([Id])
GO
ALTER TABLE [dbo].[Elanlar] CHECK CONSTRAINT [FK_Elanlar_Min_maash]
GO
ALTER TABLE [dbo].[Elanlar]  WITH CHECK ADD  CONSTRAINT [FK_Elanlar_Min_yashlar] FOREIGN KEY([Min_yashId])
REFERENCES [dbo].[Min_yashlar] ([Id])
GO
ALTER TABLE [dbo].[Elanlar] CHECK CONSTRAINT [FK_Elanlar_Min_yashlar]
GO
ALTER TABLE [dbo].[Elanlar]  WITH CHECK ADD  CONSTRAINT [FK_Elanlar_Sheher] FOREIGN KEY([SheherId])
REFERENCES [dbo].[Sheher] ([Id])
GO
ALTER TABLE [dbo].[Elanlar] CHECK CONSTRAINT [FK_Elanlar_Sheher]
GO
ALTER TABLE [dbo].[Elanlar]  WITH CHECK ADD  CONSTRAINT [FK_Elanlar_Tehsil] FOREIGN KEY([TehsilId])
REFERENCES [dbo].[Tehsil] ([Id])
GO
ALTER TABLE [dbo].[Elanlar] CHECK CONSTRAINT [FK_Elanlar_Tehsil]
GO
ALTER TABLE [dbo].[Nov]  WITH CHECK ADD  CONSTRAINT [FK_Nov_Kategoriya] FOREIGN KEY([KateqoriyaId])
REFERENCES [dbo].[Kategoriya] ([Id])
GO
ALTER TABLE [dbo].[Nov] CHECK CONSTRAINT [FK_Nov_Kategoriya]
GO
USE [master]
GO
ALTER DATABASE [isaxtar] SET  READ_WRITE 
GO
