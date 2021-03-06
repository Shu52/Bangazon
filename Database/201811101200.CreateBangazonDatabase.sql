USE [master]
GO
/****** Object:  Database [NewBangazon]    Script Date: 11/10/2018 12:00:20 PM ******/
CREATE DATABASE [NewBangazon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NewBangazon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\NewBangazon.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NewBangazon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\NewBangazon_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NewBangazon] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NewBangazon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NewBangazon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NewBangazon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NewBangazon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NewBangazon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NewBangazon] SET ARITHABORT OFF 
GO
ALTER DATABASE [NewBangazon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NewBangazon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NewBangazon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NewBangazon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NewBangazon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NewBangazon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NewBangazon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NewBangazon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NewBangazon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NewBangazon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NewBangazon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NewBangazon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NewBangazon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NewBangazon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NewBangazon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NewBangazon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NewBangazon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NewBangazon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NewBangazon] SET  MULTI_USER 
GO
ALTER DATABASE [NewBangazon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NewBangazon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NewBangazon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NewBangazon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NewBangazon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NewBangazon] SET QUERY_STORE = OFF
GO
USE [NewBangazon]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
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
USE [NewBangazon]
GO
/****** Object:  Table [dbo].[Computers]    Script Date: 11/10/2018 12:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
 CONSTRAINT [PK__Computer__3214EC078CAC61A2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/10/2018 12:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActiveOrder] [bit] NULL,
	[FirstName] [varchar](255) NULL,
	[LastName] [varchar](255) NULL,
 CONSTRAINT [PK__Customer__3214EC0723FBB10C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomersPaymentTypes]    Script Date: 11/10/2018 12:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomersPaymentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[PaymentTypeId] [int] NULL,
 CONSTRAINT [PK__Customer__3214EC07FD055CBE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 11/10/2018 12:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SupervisorId] [int] NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK__Departme__3214EC0734E35052] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 11/10/2018 12:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
 CONSTRAINT [PK__Employee__3214EC079461285E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesTrainingPrograms]    Script Date: 11/10/2018 12:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesTrainingPrograms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[TrainingProgramId] [int] NULL,
 CONSTRAINT [PK__Employee__3214EC076A010796] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLines]    Script Date: 11/10/2018 12:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLines](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK__OrderLin__3214EC07AE280F45] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/10/2018 12:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[PaymentTypeId] [int] NULL,
 CONSTRAINT [PK__Orders__3214EC076C8809BF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 11/10/2018 12:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK__PaymentT__3214EC07AF4D1F62] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/10/2018 12:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeId] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[Title] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Quantity] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK__Products__3214EC071EDF6FA7] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 11/10/2018 12:00:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [varchar](255) NULL,
 CONSTRAINT [PK__ProductT__3214EC078EF611FE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingPrograms]    Script Date: 11/10/2018 12:00:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingPrograms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK__Training__3214EC07D406A7DA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Computers] ON 

INSERT [dbo].[Computers] ([Id], [EmployeeId]) VALUES (9, 2)
INSERT [dbo].[Computers] ([Id], [EmployeeId]) VALUES (10, 3)
INSERT [dbo].[Computers] ([Id], [EmployeeId]) VALUES (11, 4)
INSERT [dbo].[Computers] ([Id], [EmployeeId]) VALUES (12, 5)
INSERT [dbo].[Computers] ([Id], [EmployeeId]) VALUES (13, 6)
SET IDENTITY_INSERT [dbo].[Computers] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [ActiveOrder], [FirstName], [LastName]) VALUES (1, NULL, N'Drake', N'Morrison')
INSERT [dbo].[Customers] ([Id], [ActiveOrder], [FirstName], [LastName]) VALUES (2, NULL, N'Brian', N'Wright')
INSERT [dbo].[Customers] ([Id], [ActiveOrder], [FirstName], [LastName]) VALUES (3, NULL, N'Anna', N'Dolan')
INSERT [dbo].[Customers] ([Id], [ActiveOrder], [FirstName], [LastName]) VALUES (4, NULL, N'Mehret', N'Kulala')
INSERT [dbo].[Customers] ([Id], [ActiveOrder], [FirstName], [LastName]) VALUES (5, NULL, N'Jack', N'Smith')
INSERT [dbo].[Customers] ([Id], [ActiveOrder], [FirstName], [LastName]) VALUES (6, NULL, N'Dude', N'Awesome')
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[CustomersPaymentTypes] ON 

INSERT [dbo].[CustomersPaymentTypes] ([Id], [CustomerId], [PaymentTypeId]) VALUES (1, 1, 1)
INSERT [dbo].[CustomersPaymentTypes] ([Id], [CustomerId], [PaymentTypeId]) VALUES (2, 2, 2)
INSERT [dbo].[CustomersPaymentTypes] ([Id], [CustomerId], [PaymentTypeId]) VALUES (3, 3, 3)
INSERT [dbo].[CustomersPaymentTypes] ([Id], [CustomerId], [PaymentTypeId]) VALUES (4, 4, 4)
INSERT [dbo].[CustomersPaymentTypes] ([Id], [CustomerId], [PaymentTypeId]) VALUES (5, 5, 1)
SET IDENTITY_INSERT [dbo].[CustomersPaymentTypes] OFF
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [SupervisorId], [Name]) VALUES (3, 2, N'Purchasing')
INSERT [dbo].[Departments] ([Id], [SupervisorId], [Name]) VALUES (4, 3, N'HR')
INSERT [dbo].[Departments] ([Id], [SupervisorId], [Name]) VALUES (5, 4, N'IT')
INSERT [dbo].[Departments] ([Id], [SupervisorId], [Name]) VALUES (6, 5, N'Marketing')
INSERT [dbo].[Departments] ([Id], [SupervisorId], [Name]) VALUES (8, 6, N'Cafeteria')
SET IDENTITY_INSERT [dbo].[Departments] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [DepartmentId], [FirstName], [LastName]) VALUES (1, NULL, N'John', N'Wick')
INSERT [dbo].[Employees] ([Id], [DepartmentId], [FirstName], [LastName]) VALUES (2, 3, N'Bob', N'Jerry')
INSERT [dbo].[Employees] ([Id], [DepartmentId], [FirstName], [LastName]) VALUES (3, 4, N'Ben', N'Harrington')
INSERT [dbo].[Employees] ([Id], [DepartmentId], [FirstName], [LastName]) VALUES (4, 5, N'Martin', N'Cross')
INSERT [dbo].[Employees] ([Id], [DepartmentId], [FirstName], [LastName]) VALUES (5, 6, N'Nathan', N'Gonzalez')
INSERT [dbo].[Employees] ([Id], [DepartmentId], [FirstName], [LastName]) VALUES (6, 8, N'Maken', N'Hubbard')
INSERT [dbo].[Employees] ([Id], [DepartmentId], [FirstName], [LastName]) VALUES (7, NULL, N'Greg', N'Winston')
INSERT [dbo].[Employees] ([Id], [DepartmentId], [FirstName], [LastName]) VALUES (8, NULL, N'Un', N'Forgivable')
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[EmployeesTrainingPrograms] ON 

INSERT [dbo].[EmployeesTrainingPrograms] ([Id], [EmployeeId], [TrainingProgramId]) VALUES (1, NULL, 1)
INSERT [dbo].[EmployeesTrainingPrograms] ([Id], [EmployeeId], [TrainingProgramId]) VALUES (2, NULL, 2)
INSERT [dbo].[EmployeesTrainingPrograms] ([Id], [EmployeeId], [TrainingProgramId]) VALUES (3, NULL, 3)
INSERT [dbo].[EmployeesTrainingPrograms] ([Id], [EmployeeId], [TrainingProgramId]) VALUES (4, NULL, 4)
INSERT [dbo].[EmployeesTrainingPrograms] ([Id], [EmployeeId], [TrainingProgramId]) VALUES (5, NULL, 5)
SET IDENTITY_INSERT [dbo].[EmployeesTrainingPrograms] OFF
SET IDENTITY_INSERT [dbo].[OrderLines] ON 

INSERT [dbo].[OrderLines] ([Id], [OrderId], [ProductId]) VALUES (3, 1, 7)
INSERT [dbo].[OrderLines] ([Id], [OrderId], [ProductId]) VALUES (4, 2, 8)
INSERT [dbo].[OrderLines] ([Id], [OrderId], [ProductId]) VALUES (5, 3, 6)
INSERT [dbo].[OrderLines] ([Id], [OrderId], [ProductId]) VALUES (6, 4, 5)
INSERT [dbo].[OrderLines] ([Id], [OrderId], [ProductId]) VALUES (7, 5, 4)
SET IDENTITY_INSERT [dbo].[OrderLines] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [CustomerId], [PaymentTypeId]) VALUES (1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [PaymentTypeId]) VALUES (2, 2, 2)
INSERT [dbo].[Orders] ([Id], [CustomerId], [PaymentTypeId]) VALUES (3, 3, 3)
INSERT [dbo].[Orders] ([Id], [CustomerId], [PaymentTypeId]) VALUES (4, 4, 4)
INSERT [dbo].[Orders] ([Id], [CustomerId], [PaymentTypeId]) VALUES (5, 5, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[PaymentTypes] ON 

INSERT [dbo].[PaymentTypes] ([Id], [Name]) VALUES (1, N'Visa')
INSERT [dbo].[PaymentTypes] ([Id], [Name]) VALUES (2, N'MasterCard')
INSERT [dbo].[PaymentTypes] ([Id], [Name]) VALUES (3, N'Discovery')
INSERT [dbo].[PaymentTypes] ([Id], [Name]) VALUES (4, N'PayPal')
SET IDENTITY_INSERT [dbo].[PaymentTypes] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductTypeId], [Price], [Title], [Description], [Quantity], [CustomerId]) VALUES (4, 1, CAST(24 AS Decimal(18, 0)), N'Epic thing', N'super awesome thing', 3, 2)
INSERT [dbo].[Products] ([Id], [ProductTypeId], [Price], [Title], [Description], [Quantity], [CustomerId]) VALUES (5, 1, CAST(50000000 AS Decimal(18, 0)), N'Another Epic Thing', N'Almost equal to your life', 1, 3)
INSERT [dbo].[Products] ([Id], [ProductTypeId], [Price], [Title], [Description], [Quantity], [CustomerId]) VALUES (6, 2, CAST(41 AS Decimal(18, 0)), N'Thing', N'this is great', 2, 4)
INSERT [dbo].[Products] ([Id], [ProductTypeId], [Price], [Title], [Description], [Quantity], [CustomerId]) VALUES (7, 3, CAST(55 AS Decimal(18, 0)), N'Cloak Of Hiding', N'this cloak makes it easy to hide', 3, 5)
INSERT [dbo].[Products] ([Id], [ProductTypeId], [Price], [Title], [Description], [Quantity], [CustomerId]) VALUES (8, 4, CAST(2 AS Decimal(18, 0)), N'Ring Of Vanishing', N'when you wear this ring you disappear! Like Frodo!', 1, 6)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 

INSERT [dbo].[ProductTypes] ([Id], [Category]) VALUES (1, N'Material')
INSERT [dbo].[ProductTypes] ([Id], [Category]) VALUES (2, N'Epic')
INSERT [dbo].[ProductTypes] ([Id], [Category]) VALUES (3, N'Ethereal')
INSERT [dbo].[ProductTypes] ([Id], [Category]) VALUES (4, N'Dope')
INSERT [dbo].[ProductTypes] ([Id], [Category]) VALUES (5, N'Weapons')
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
SET IDENTITY_INSERT [dbo].[TrainingPrograms] ON 

INSERT [dbo].[TrainingPrograms] ([Id], [EmployeeId], [StartDate], [EndDate]) VALUES (1, 2, CAST(N'2018-11-10' AS Date), CAST(N'2018-11-26' AS Date))
INSERT [dbo].[TrainingPrograms] ([Id], [EmployeeId], [StartDate], [EndDate]) VALUES (2, 3, CAST(N'2018-12-25' AS Date), CAST(N'2018-12-31' AS Date))
INSERT [dbo].[TrainingPrograms] ([Id], [EmployeeId], [StartDate], [EndDate]) VALUES (3, 4, CAST(N'2018-12-31' AS Date), CAST(N'2019-12-31' AS Date))
INSERT [dbo].[TrainingPrograms] ([Id], [EmployeeId], [StartDate], [EndDate]) VALUES (4, 5, CAST(N'2029-05-12' AS Date), CAST(N'2030-05-23' AS Date))
INSERT [dbo].[TrainingPrograms] ([Id], [EmployeeId], [StartDate], [EndDate]) VALUES (5, 6, CAST(N'2078-09-06' AS Date), CAST(N'2087-05-21' AS Date))
SET IDENTITY_INSERT [dbo].[TrainingPrograms] OFF
ALTER TABLE [dbo].[Computers]  WITH CHECK ADD  CONSTRAINT [FK__Computers__Emplo__4E88ABD4] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[Computers] CHECK CONSTRAINT [FK__Computers__Emplo__4E88ABD4]
GO
ALTER TABLE [dbo].[CustomersPaymentTypes]  WITH CHECK ADD  CONSTRAINT [FK__Customers__Custo__5441852A] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[CustomersPaymentTypes] CHECK CONSTRAINT [FK__Customers__Custo__5441852A]
GO
ALTER TABLE [dbo].[CustomersPaymentTypes]  WITH CHECK ADD  CONSTRAINT [FK__Customers__Payme__5535A963] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypes] ([Id])
GO
ALTER TABLE [dbo].[CustomersPaymentTypes] CHECK CONSTRAINT [FK__Customers__Payme__5535A963]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK__Departmen__Super__4D94879B] FOREIGN KEY([SupervisorId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK__Departmen__Super__4D94879B]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK__Employees__Depar__4CA06362] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK__Employees__Depar__4CA06362]
GO
ALTER TABLE [dbo].[EmployeesTrainingPrograms]  WITH CHECK ADD  CONSTRAINT [FK__Employees__Emplo__4F7CD00D] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[EmployeesTrainingPrograms] CHECK CONSTRAINT [FK__Employees__Emplo__4F7CD00D]
GO
ALTER TABLE [dbo].[EmployeesTrainingPrograms]  WITH CHECK ADD  CONSTRAINT [FK__Employees__Train__5070F446] FOREIGN KEY([TrainingProgramId])
REFERENCES [dbo].[TrainingPrograms] ([Id])
GO
ALTER TABLE [dbo].[EmployeesTrainingPrograms] CHECK CONSTRAINT [FK__Employees__Train__5070F446]
GO
ALTER TABLE [dbo].[OrderLines]  WITH CHECK ADD  CONSTRAINT [FK__OrderLine__Order__571DF1D5] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderLines] CHECK CONSTRAINT [FK__OrderLine__Order__571DF1D5]
GO
ALTER TABLE [dbo].[OrderLines]  WITH CHECK ADD  CONSTRAINT [FK__OrderLine__Produ__5812160E] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderLines] CHECK CONSTRAINT [FK__OrderLine__Produ__5812160E]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__Customer__534D60F1] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__Customer__534D60F1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__PaymentT__5629CD9C] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypes] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__PaymentT__5629CD9C]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Custom__52593CB8] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Custom__52593CB8]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Produc__5165187F] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductTypes] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Produc__5165187F]
GO
USE [master]
GO
ALTER DATABASE [NewBangazon] SET  READ_WRITE 
GO
