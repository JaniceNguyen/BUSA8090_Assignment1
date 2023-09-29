USE [master]
GO
/****** Object:  Database [Qatar2022WorldCup]    Script Date: 9/29/2023 7:44:57 PM ******/
CREATE DATABASE [Qatar2022WorldCup]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Qatar2022WorldCup', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Qatar2022WorldCup.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Qatar2022WorldCup_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Qatar2022WorldCup_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Qatar2022WorldCup] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Qatar2022WorldCup].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Qatar2022WorldCup] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET ARITHABORT OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Qatar2022WorldCup] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Qatar2022WorldCup] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Qatar2022WorldCup] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Qatar2022WorldCup] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Qatar2022WorldCup] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Qatar2022WorldCup] SET  MULTI_USER 
GO
ALTER DATABASE [Qatar2022WorldCup] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Qatar2022WorldCup] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Qatar2022WorldCup] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Qatar2022WorldCup] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Qatar2022WorldCup] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Qatar2022WorldCup] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Qatar2022WorldCup] SET QUERY_STORE = OFF
GO
USE [Qatar2022WorldCup]
GO
/****** Object:  Table [dbo].[fan_camp_room]    Script Date: 9/29/2023 7:44:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fan_camp_room](
	[fan_camp_room_id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[room_available] [int] NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[fan_camp_room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[game]    Script Date: 9/29/2023 7:44:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[game](
	[game_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[start_time] [datetime] NOT NULL,
	[venue] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[game_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 9/29/2023 7:44:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[ticket_id] [int] IDENTITY(1,1) NOT NULL,
	[game_id] [int] NOT NULL,
	[type] [varchar](255) NOT NULL,
	[quantity_available] [int] NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket_holder]    Script Date: 9/29/2023 7:44:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket_holder](
	[ticket_holder_id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[phone_number] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ticket_holder_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[train]    Script Date: 9/29/2023 7:44:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[train](
	[train_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[departure_time] [datetime] NOT NULL,
	[departure_location] [varchar](255) NOT NULL,
	[arrival_time] [datetime] NOT NULL,
	[arrival_location] [varchar](255) NOT NULL,
	[number_of_seats] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[train_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction]    Script Date: 9/29/2023 7:44:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[ticket_holder_id] [int] NOT NULL,
	[ticket_id] [int] NOT NULL,
	[fan_camp_room_id] [int] NOT NULL,
	[train_id] [int] NOT NULL,
	[method] [varchar](50) NOT NULL,
	[total_price] [decimal](10, 2) NOT NULL,
	[transaction_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[fan_camp_room] ON 
GO
INSERT [dbo].[fan_camp_room] ([fan_camp_room_id], [type], [room_available], [price]) VALUES (1, N'Single Room', 10, CAST(150.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[fan_camp_room] ([fan_camp_room_id], [type], [room_available], [price]) VALUES (2, N'Double Room', 20, CAST(250.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[fan_camp_room] ([fan_camp_room_id], [type], [room_available], [price]) VALUES (3, N'Family Room', 5, CAST(350.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[fan_camp_room] ([fan_camp_room_id], [type], [room_available], [price]) VALUES (4, N'VIP Suite', 3, CAST(500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[fan_camp_room] ([fan_camp_room_id], [type], [room_available], [price]) VALUES (5, N'Single Room', 8, CAST(150.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[fan_camp_room] ([fan_camp_room_id], [type], [room_available], [price]) VALUES (6, N'Double Room', 15, CAST(250.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[fan_camp_room] ([fan_camp_room_id], [type], [room_available], [price]) VALUES (7, N'Family Room', 3, CAST(350.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[fan_camp_room] ([fan_camp_room_id], [type], [room_available], [price]) VALUES (8, N'VIP Suite', 2, CAST(500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[fan_camp_room] ([fan_camp_room_id], [type], [room_available], [price]) VALUES (9, N'Single Room', 12, CAST(150.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[fan_camp_room] ([fan_camp_room_id], [type], [room_available], [price]) VALUES (10, N'Double Room', 22, CAST(250.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[fan_camp_room] ([fan_camp_room_id], [type], [room_available], [price]) VALUES (11, N'Family Room', 7, CAST(350.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[fan_camp_room] ([fan_camp_room_id], [type], [room_available], [price]) VALUES (12, N'VIP Suite', 5, CAST(500.00 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[fan_camp_room] OFF
GO
SET IDENTITY_INSERT [dbo].[game] ON 
GO
INSERT [dbo].[game] ([game_id], [name], [start_time], [venue]) VALUES (1, N'Group Stage - Match 3', CAST(N'2022-11-24T16:00:00.000' AS DateTime), N'Khalifa International Stadium')
GO
INSERT [dbo].[game] ([game_id], [name], [start_time], [venue]) VALUES (2, N'Group Stage - Match 4', CAST(N'2022-11-25T15:00:00.000' AS DateTime), N'Al Rayyan Stadium')
GO
INSERT [dbo].[game] ([game_id], [name], [start_time], [venue]) VALUES (3, N'Group Stage - Match 5', CAST(N'2022-11-26T17:30:00.000' AS DateTime), N'Al Thumama Stadium')
GO
INSERT [dbo].[game] ([game_id], [name], [start_time], [venue]) VALUES (4, N'Round of 16 - Match 1', CAST(N'2022-11-28T14:30:00.000' AS DateTime), N'Al Bayt Stadium')
GO
INSERT [dbo].[game] ([game_id], [name], [start_time], [venue]) VALUES (5, N'Round of 16 - Match 2', CAST(N'2022-11-29T15:00:00.000' AS DateTime), N'Al Janoub Stadium')
GO
INSERT [dbo].[game] ([game_id], [name], [start_time], [venue]) VALUES (6, N'Quarterfinal - Match 1', CAST(N'2022-12-05T16:00:00.000' AS DateTime), N'Education City Stadium')
GO
INSERT [dbo].[game] ([game_id], [name], [start_time], [venue]) VALUES (7, N'Semifinal - Match 1', CAST(N'2022-12-12T18:30:00.000' AS DateTime), N'Lusail Iconic Stadium')
GO
SET IDENTITY_INSERT [dbo].[game] OFF
GO
SET IDENTITY_INSERT [dbo].[ticket] ON 
GO
INSERT [dbo].[ticket] ([ticket_id], [game_id], [type], [quantity_available], [price]) VALUES (1, 3, N'VIP', 30, CAST(450.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[ticket] ([ticket_id], [game_id], [type], [quantity_available], [price]) VALUES (2, 3, N'Standard', 150, CAST(200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[ticket] ([ticket_id], [game_id], [type], [quantity_available], [price]) VALUES (3, 4, N'VIP', 20, CAST(500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[ticket] ([ticket_id], [game_id], [type], [quantity_available], [price]) VALUES (4, 4, N'Standard', 100, CAST(250.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[ticket] ([ticket_id], [game_id], [type], [quantity_available], [price]) VALUES (5, 5, N'VIP', 40, CAST(400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[ticket] ([ticket_id], [game_id], [type], [quantity_available], [price]) VALUES (6, 5, N'Standard', 200, CAST(180.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[ticket] ([ticket_id], [game_id], [type], [quantity_available], [price]) VALUES (7, 6, N'VIP', 15, CAST(600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[ticket] ([ticket_id], [game_id], [type], [quantity_available], [price]) VALUES (8, 6, N'Standard', 80, CAST(300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[ticket] ([ticket_id], [game_id], [type], [quantity_available], [price]) VALUES (9, 7, N'VIP', 25, CAST(700.00 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[ticket] OFF
GO
SET IDENTITY_INSERT [dbo].[ticket_holder] ON 
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (1, N'Michael Johnson', N'michael@example.com', N'+1122334455')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (2, N'Sara White', N'sara@example.com', N'+9988776655')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (3, N'Kevin Anderson', N'kevin@example.com', N'+1234509876')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (4, N'Laura Smith', N'laura@example.com', N'+9876543210')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (5, N'Daniel Brown', N'daniel@example.com', N'+2345678901')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (6, N'Sophia Davis', N'sophia@example.com', N'+3456789012')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (7, N'Ethan Lee', N'ethan@example.com', N'+4567890123')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (8, N'Olivia Taylor', N'olivia@example.com', N'+5678901234')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (9, N'Aiden Harris', N'aiden@example.com', N'+6789012345')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (10, N'Mia Jackson', N'mia@example.com', N'+7890123456')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (11, N'Liam Wilson', N'liam@example.com', N'+8901234567')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (12, N'Emma Martinez', N'emma@example.com', N'+9012345678')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (13, N'Noah Smith', N'noah@example.com', N'+0123456789')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (14, N'Oliver Lee', N'oliver@example.com', N'+0987654321')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (15, N'Ava Johnson', N'ava@example.com', N'+9876543210')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (16, N'James Brown', N'james@example.com', N'+8765432109')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (17, N'John Doe', N'john@example.com', N'+1234567890')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (18, N'Jane Smith', N'jane@example.com', N'+9876543210')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (19, N'Robert Johnson', N'robert@example.com', N'+4567890123')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (20, N'Emily Davis', N'emily@example.com', N'+7890123456')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (21, N'William Wilson', N'william@example.com', N'+2345678901')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (22, N'Sophia Brown', N'sophia@example.com', N'+8901234567')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (23, N'Ella Martinez', N'ella@example.com', N'+3456789012')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (24, N'Ethan Lee', N'ethan@example.com', N'+6789012345')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (25, N'Olivia Taylor', N'olivia@example.com', N'+2345678901')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (26, N'Michael Johnson', N'michael@example.com', N'+1234509876')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (27, N'Ava Jackson', N'ava@example.com', N'+9012345678')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (28, N'Noah Smith', N'noah@example.com', N'+5678901234')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (29, N'Oliver Lee', N'oliver@example.com', N'+4567890123')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (30, N'Sophia Davis', N'sophia@example.com', N'+0123456789')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (31, N'Liam Wilson', N'liam@example.com', N'+7890123456')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (32, N'Mia Jackson', N'mia@example.com', N'+2345678901')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (33, N'Ella Smith', N'ella@example.com', N'+6789012345')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (34, N'Ethan Martinez', N'ethan@example.com', N'+3456789012')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (35, N'Aiden Harris', N'aiden@example.com', N'+1234509876')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (36, N'Emma Davis', N'emma@example.com', N'+0987654321')
GO
INSERT [dbo].[ticket_holder] ([ticket_holder_id], [full_name], [email], [phone_number]) VALUES (37, N'Ava Johnson', N'ava@example.com', N'+0123456789')
GO
SET IDENTITY_INSERT [dbo].[ticket_holder] OFF
GO
SET IDENTITY_INSERT [dbo].[train] ON 
GO
INSERT [dbo].[train] ([train_id], [name], [departure_time], [departure_location], [arrival_time], [arrival_location], [number_of_seats]) VALUES (1, N'Train 21', CAST(N'2022-12-01T08:00:00.000' AS DateTime), N'Doha Central Station', CAST(N'2022-12-01T10:30:00.000' AS DateTime), N'Al Bayt Stadium Station', 200)
GO
INSERT [dbo].[train] ([train_id], [name], [departure_time], [departure_location], [arrival_time], [arrival_location], [number_of_seats]) VALUES (2, N'Train 22', CAST(N'2022-12-03T09:00:00.000' AS DateTime), N'Doha Central Station', CAST(N'2022-12-03T11:30:00.000' AS DateTime), N'Al Janoub Stadium Station', 150)
GO
INSERT [dbo].[train] ([train_id], [name], [departure_time], [departure_location], [arrival_time], [arrival_location], [number_of_seats]) VALUES (3, N'Train 23', CAST(N'2022-12-06T10:00:00.000' AS DateTime), N'Doha Central Station', CAST(N'2022-12-06T12:30:00.000' AS DateTime), N'Education City Stadium Station', 200)
GO
INSERT [dbo].[train] ([train_id], [name], [departure_time], [departure_location], [arrival_time], [arrival_location], [number_of_seats]) VALUES (4, N'Train 24', CAST(N'2022-12-09T11:00:00.000' AS DateTime), N'Doha Central Station', CAST(N'2022-12-09T13:30:00.000' AS DateTime), N'Lusail Iconic Stadium Station', 250)
GO
INSERT [dbo].[train] ([train_id], [name], [departure_time], [departure_location], [arrival_time], [arrival_location], [number_of_seats]) VALUES (5, N'Train 25', CAST(N'2022-12-16T12:00:00.000' AS DateTime), N'Doha Central Station', CAST(N'2022-12-16T14:30:00.000' AS DateTime), N'Khalifa International Stadium Station', 150)
GO
SET IDENTITY_INSERT [dbo].[train] OFF
GO
SET IDENTITY_INSERT [dbo].[transaction] ON 
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (1, 1, 1, 1, 1, N'Credit Card', CAST(500.00 AS Decimal(10, 2)), CAST(N'2022-11-22T10:30:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (2, 2, 2, 2, 2, N'PayPal', CAST(400.00 AS Decimal(10, 2)), CAST(N'2022-11-23T11:45:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (3, 3, 3, 3, 3, N'Credit Card', CAST(550.00 AS Decimal(10, 2)), CAST(N'2022-11-25T14:15:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (4, 4, 4, 4, 4, N'Credit Card', CAST(250.00 AS Decimal(10, 2)), CAST(N'2022-11-29T17:00:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (5, 5, 1, 5, 5, N'PayPal', CAST(400.00 AS Decimal(10, 2)), CAST(N'2022-12-05T09:30:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (6, 6, 2, 6, 1, N'Credit Card', CAST(600.00 AS Decimal(10, 2)), CAST(N'2022-12-10T16:45:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (7, 7, 3, 7, 2, N'Credit Card', CAST(700.00 AS Decimal(10, 2)), CAST(N'2022-12-12T22:15:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (8, 8, 4, 8, 3, N'PayPal', CAST(200.00 AS Decimal(10, 2)), CAST(N'2022-12-15T13:30:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (9, 9, 9, 9, 4, N'Credit Card', CAST(250.00 AS Decimal(10, 2)), CAST(N'2022-12-18T08:45:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (10, 10, 1, 10, 5, N'PayPal', CAST(300.00 AS Decimal(10, 2)), CAST(N'2022-12-20T09:00:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (11, 11, 2, 11, 1, N'Credit Card', CAST(450.00 AS Decimal(10, 2)), CAST(N'2022-12-22T14:30:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (12, 12, 3, 12, 2, N'Credit Card', CAST(350.00 AS Decimal(10, 2)), CAST(N'2022-12-24T10:15:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (13, 13, 4, 1, 3, N'PayPal', CAST(275.00 AS Decimal(10, 2)), CAST(N'2022-12-26T11:00:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (14, 14, 5, 2, 4, N'Credit Card', CAST(225.00 AS Decimal(10, 2)), CAST(N'2022-12-28T17:45:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (15, 15, 6, 3, 5, N'PayPal', CAST(350.00 AS Decimal(10, 2)), CAST(N'2022-12-30T08:30:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (16, 16, 7, 4, 1, N'Credit Card', CAST(500.00 AS Decimal(10, 2)), CAST(N'2023-01-02T16:15:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (17, 17, 8, 5, 2, N'Credit Card', CAST(275.00 AS Decimal(10, 2)), CAST(N'2023-01-04T14:00:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (18, 18, 9, 6, 3, N'PayPal', CAST(325.00 AS Decimal(10, 2)), CAST(N'2023-01-06T11:30:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (19, 19, 1, 7, 4, N'Credit Card', CAST(375.00 AS Decimal(10, 2)), CAST(N'2023-01-08T09:45:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (20, 20, 2, 8, 5, N'PayPal', CAST(425.00 AS Decimal(10, 2)), CAST(N'2023-01-10T17:00:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (21, 21, 4, 9, 1, N'Credit Card', CAST(475.00 AS Decimal(10, 2)), CAST(N'2023-01-12T15:30:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (22, 22, 3, 10, 2, N'Credit Card', CAST(525.00 AS Decimal(10, 2)), CAST(N'2023-01-14T13:15:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (23, 23, 5, 11, 3, N'PayPal', CAST(575.00 AS Decimal(10, 2)), CAST(N'2023-01-16T10:45:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (24, 24, 6, 12, 4, N'Credit Card', CAST(625.00 AS Decimal(10, 2)), CAST(N'2023-01-18T08:00:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (25, 25, 7, 1, 5, N'PayPal', CAST(675.00 AS Decimal(10, 2)), CAST(N'2023-01-20T16:30:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (26, 26, 8, 2, 1, N'Credit Card', CAST(725.00 AS Decimal(10, 2)), CAST(N'2023-01-22T14:15:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (27, 27, 9, 3, 2, N'Credit Card', CAST(775.00 AS Decimal(10, 2)), CAST(N'2023-01-24T12:30:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (28, 28, 8, 4, 3, N'PayPal', CAST(825.00 AS Decimal(10, 2)), CAST(N'2023-01-26T10:00:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (29, 29, 1, 5, 4, N'Credit Card', CAST(875.00 AS Decimal(10, 2)), CAST(N'2023-01-28T08:15:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (30, 30, 2, 6, 5, N'PayPal', CAST(925.00 AS Decimal(10, 2)), CAST(N'2023-01-30T16:45:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (31, 31, 9, 7, 1, N'Credit Card', CAST(975.00 AS Decimal(10, 2)), CAST(N'2023-02-01T14:00:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (32, 32, 2, 8, 2, N'Credit Card', CAST(325.00 AS Decimal(10, 2)), CAST(N'2023-02-03T12:30:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (33, 33, 3, 9, 3, N'PayPal', CAST(275.00 AS Decimal(10, 2)), CAST(N'2023-02-05T10:45:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (34, 34, 4, 10, 4, N'Credit Card', CAST(225.00 AS Decimal(10, 2)), CAST(N'2023-02-07T17:00:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (35, 35, 5, 11, 5, N'PayPal', CAST(350.00 AS Decimal(10, 2)), CAST(N'2023-02-09T08:30:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (36, 36, 6, 12, 1, N'Credit Card', CAST(500.00 AS Decimal(10, 2)), CAST(N'2023-02-11T16:15:00.000' AS DateTime))
GO
INSERT [dbo].[transaction] ([transaction_id], [ticket_holder_id], [ticket_id], [fan_camp_room_id], [train_id], [method], [total_price], [transaction_date]) VALUES (37, 37, 7, 1, 2, N'Credit Card', CAST(275.00 AS Decimal(10, 2)), CAST(N'2023-02-13T14:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[transaction] OFF
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_ticket_game] FOREIGN KEY([game_id])
REFERENCES [dbo].[game] ([game_id])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_ticket_game]
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FK_transaction_fan_camp_room] FOREIGN KEY([fan_camp_room_id])
REFERENCES [dbo].[fan_camp_room] ([fan_camp_room_id])
GO
ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FK_transaction_fan_camp_room]
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FK_transaction_ticket] FOREIGN KEY([ticket_id])
REFERENCES [dbo].[ticket] ([ticket_id])
GO
ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FK_transaction_ticket]
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FK_transaction_ticket_holder] FOREIGN KEY([ticket_holder_id])
REFERENCES [dbo].[ticket_holder] ([ticket_holder_id])
GO
ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FK_transaction_ticket_holder]
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FK_transaction_train] FOREIGN KEY([train_id])
REFERENCES [dbo].[train] ([train_id])
GO
ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FK_transaction_train]
GO
USE [master]
GO
ALTER DATABASE [Qatar2022WorldCup] SET  READ_WRITE 
GO
