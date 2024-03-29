USE [master]
GO
/****** Object:  Database [mariacofe]    Script Date: 4/19/2019 12:07:59 AM ******/
CREATE DATABASE [mariacofe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mariacofe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\mariacofe.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'mariacofe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\mariacofe_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [mariacofe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mariacofe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mariacofe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mariacofe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mariacofe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mariacofe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mariacofe] SET ARITHABORT OFF 
GO
ALTER DATABASE [mariacofe] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [mariacofe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mariacofe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mariacofe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mariacofe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mariacofe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mariacofe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mariacofe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mariacofe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mariacofe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [mariacofe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mariacofe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mariacofe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mariacofe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mariacofe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mariacofe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mariacofe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mariacofe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [mariacofe] SET  MULTI_USER 
GO
ALTER DATABASE [mariacofe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mariacofe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mariacofe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mariacofe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [mariacofe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [mariacofe]
GO
/****** Object:  Table [dbo].[Cake]    Script Date: 4/19/2019 12:07:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cake](
	[ID] [int] NOT NULL,
	[ImgLink] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[ShortDesc] [nvarchar](100) NULL,
	[LongDesc] [nvarchar](200) NULL,
	[Price] [float] NULL,
	[Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactFind]    Script Date: 4/19/2019 12:07:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactFind](
	[ID] [int] NOT NULL,
	[Phone] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[ImgLink] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactHome]    Script Date: 4/19/2019 12:07:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactHome](
	[ID] [int] NOT NULL,
	[Phone] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[Content] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Intro]    Script Date: 4/19/2019 12:07:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intro](
	[ID] [int] NOT NULL,
	[ImgLink] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Description] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OpeningHouse]    Script Date: 4/19/2019 12:07:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeningHouse](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Content] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Cake] ([ID], [ImgLink], [Title], [ShortDesc], [LongDesc], [Price], [Date]) VALUES (1, N'cake1.jpg', N'In the Afternoon', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat', 19, CAST(N'2019-02-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Cake] ([ID], [ImgLink], [Title], [ShortDesc], [LongDesc], [Price], [Date]) VALUES (2, N'cake2.jpg', N'Traditional Cakes', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', 10, CAST(N'2019-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Cake] ([ID], [ImgLink], [Title], [ShortDesc], [LongDesc], [Price], [Date]) VALUES (3, N'cake2.jpg', N'Bambo Food', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', 20, CAST(N'2018-04-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Cake] ([ID], [ImgLink], [Title], [ShortDesc], [LongDesc], [Price], [Date]) VALUES (4, N'cake3.jpg', N'Fun Food', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', 50, CAST(N'2019-01-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Cake] ([ID], [ImgLink], [Title], [ShortDesc], [LongDesc], [Price], [Date]) VALUES (5, N'cake1.jpg', N'Sad Food', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', 25, CAST(N'2019-02-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Cake] ([ID], [ImgLink], [Title], [ShortDesc], [LongDesc], [Price], [Date]) VALUES (6, N'cake3.jpg', N'Hot Food', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', 50, CAST(N'2019-02-23 00:00:00.000' AS DateTime))
INSERT [dbo].[Cake] ([ID], [ImgLink], [Title], [ShortDesc], [LongDesc], [Price], [Date]) VALUES (7, N'cake2.jpg', N'Test Food', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', 10, CAST(N'2019-02-24 00:00:00.000' AS DateTime))
INSERT [dbo].[Cake] ([ID], [ImgLink], [Title], [ShortDesc], [LongDesc], [Price], [Date]) VALUES (10, N'cake1.jpg', N'Cake 10', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', 10, CAST(N'2019-03-02 00:00:00.000' AS DateTime))
INSERT [dbo].[Cake] ([ID], [ImgLink], [Title], [ShortDesc], [LongDesc], [Price], [Date]) VALUES (15, N'cake2.jpg', N'Cake 15', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', 15, CAST(N'2019-03-02 00:00:00.000' AS DateTime))
INSERT [dbo].[Cake] ([ID], [ImgLink], [Title], [ShortDesc], [LongDesc], [Price], [Date]) VALUES (17, N'cake1.jpg', N'Cake 17', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed', 17, CAST(N'2019-03-02 00:00:00.000' AS DateTime))
INSERT [dbo].[ContactFind] ([ID], [Phone], [Email], [Address], [ImgLink]) VALUES (1, N'123456', N'your-email@your-email.com', N'Coperhagen, Denmark', N'map.jpg')
INSERT [dbo].[ContactFind] ([ID], [Phone], [Email], [Address], [ImgLink]) VALUES (2, N'0374075522', N'thangfptk12@gmail.com', N'Vinh Tuong, Vinh Phuc', N'map.jpg')
INSERT [dbo].[ContactHome] ([ID], [Phone], [Address], [Content]) VALUES (1, N'12 1234 1234', N'Gammel Tony, Coperhagen', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.')
INSERT [dbo].[Intro] ([ID], [ImgLink], [Title], [Description]) VALUES (1, N'intro.jpg', N'Maria''s Cosy Cafe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica')
INSERT [dbo].[OpeningHouse] ([ID], [Name], [Content]) VALUES (1, N'Monday', N'Closed')
INSERT [dbo].[OpeningHouse] ([ID], [Name], [Content]) VALUES (2, N'Tuesday-Friday', N'10:00 - 20:00')
INSERT [dbo].[OpeningHouse] ([ID], [Name], [Content]) VALUES (3, N'Saturday and Sunday', N'11:00 - 21:00')
USE [master]
GO
ALTER DATABASE [mariacofe] SET  READ_WRITE 
GO
