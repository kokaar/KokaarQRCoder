USE [master]
GO
/****** Object:  Database [KokaarQrCoderDev]    Script Date: 2022-03-10 16:42:19 ******/
CREATE DATABASE [KokaarQrCoderDev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KokaarQrCoderDev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KokaarQrCoderDev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KokaarQrCoderDev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KokaarQrCoderDev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KokaarQrCoderDev] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KokaarQrCoderDev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KokaarQrCoderDev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET ARITHABORT OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [KokaarQrCoderDev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KokaarQrCoderDev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KokaarQrCoderDev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KokaarQrCoderDev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KokaarQrCoderDev] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [KokaarQrCoderDev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KokaarQrCoderDev] SET  MULTI_USER 
GO
ALTER DATABASE [KokaarQrCoderDev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KokaarQrCoderDev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KokaarQrCoderDev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KokaarQrCoderDev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KokaarQrCoderDev] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KokaarQrCoderDev] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KokaarQrCoderDev] SET QUERY_STORE = OFF
GO
USE [KokaarQrCoderDev]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2022-03-10 16:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agencies]    Script Date: 2022-03-10 16:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agencies](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[LocationUrl] [nvarchar](max) NOT NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
 CONSTRAINT [PK_Agencies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 2022-03-10 16:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2022-03-10 16:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2022-03-10 16:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2022-03-10 16:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2022-03-10 16:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2022-03-10 16:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2022-03-10 16:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CompanyId] [uniqueidentifier] NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2022-03-10 16:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 2022-03-10 16:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[WebSite] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[AdditionnalInformations] [nvarchar](max) NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialNetworkAccounts]    Script Date: 2022-03-10 16:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialNetworkAccounts](
	[Id] [uniqueidentifier] NOT NULL,
	[Account] [nvarchar](max) NOT NULL,
	[SocialNetworkId] [uniqueidentifier] NOT NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
 CONSTRAINT [PK_SocialNetworkAccounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialNetworks]    Script Date: 2022-03-10 16:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialNetworks](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
 CONSTRAINT [PK_SocialNetworks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210827120940_InitialMigration', N'5.0.9')
GO
INSERT [dbo].[Agencies] ([Id], [Name], [LocationUrl], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'fd12129f-6365-422f-baaf-6d44bb34857a', N'Québec', N'https://goo.gl/maps/Fm8ryL34v7gcHHK27', N'd9d91f02-cf99-406e-8ce8-6858756aa88d', NULL, NULL, NULL, NULL)
INSERT [dbo].[Agencies] ([Id], [Name], [LocationUrl], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'3273a238-29c1-4e4d-966e-93623adc741e', N'Akwa', N'https://goo.gl/maps/NERkGgGKGRPYyRpy5', N'b61fafc1-c972-48ad-872a-62639cf70d45', NULL, NULL, NULL, NULL)
INSERT [dbo].[Agencies] ([Id], [Name], [LocationUrl], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'eca35462-6389-4e20-bfb6-d471d6081d32', N'Bonamoussadi', N'https://goo.gl/maps/Fm8ryL34v7gcHHK26', N'b61fafc1-c972-48ad-872a-62639cf70d45', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Agents] ([Id], [Number], [Name], [PhoneNumber], [Email], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'9d75bb72-a9d6-47f5-b3ab-36881ba6489b', N'005', N'KODJOU Simya Leona', N'99655907', N'simya@secel.com', N'b61fafc1-c972-48ad-872a-62639cf70d45', NULL, NULL, NULL, NULL)
INSERT [dbo].[Agents] ([Id], [Number], [Name], [PhoneNumber], [Email], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'7491d318-38fe-4eb3-b9f3-4c15442cb14b', N'002', N'ZEBAZE ZANZI Stephanie', N'99655904', N'stephanie@secel.fr', N'b61fafc1-c972-48ad-872a-62639cf70d45', NULL, NULL, NULL, NULL)
INSERT [dbo].[Agents] ([Id], [Number], [Name], [PhoneNumber], [Email], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'57c4c5f6-8113-47a5-95e1-64d0724c4bc0', N'006', N'NGAKAM Carole', N'4189963252', N'ngakam@kc.com', N'd9d91f02-cf99-406e-8ce8-6858756aa88d', NULL, NULL, NULL, NULL)
INSERT [dbo].[Agents] ([Id], [Number], [Name], [PhoneNumber], [Email], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'47af821a-51de-481c-bbdf-763a1cd39263', N'004', N'KAMDEM Bony Nathema', N'99655906', N'bony@secel.com', N'b61fafc1-c972-48ad-872a-62639cf70d45', NULL, NULL, NULL, NULL)
INSERT [dbo].[Agents] ([Id], [Number], [Name], [PhoneNumber], [Email], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'994507a9-ab25-494f-949c-ba34ee30ca70', N'008', N'JIONGO Alain', N'5819375698', N'jiongo@kc.com', N'd9d91f02-cf99-406e-8ce8-6858756aa88d', NULL, NULL, NULL, NULL)
INSERT [dbo].[Agents] ([Id], [Number], [Name], [PhoneNumber], [Email], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'709d9957-2e29-4852-b839-be1bbb0e1ad1', N'003', N'MOGUE NAKEU Estelle', N'99655905', N'estelle@secel.com', N'b61fafc1-c972-48ad-872a-62639cf70d45', NULL, NULL, NULL, NULL)
INSERT [dbo].[Agents] ([Id], [Number], [Name], [PhoneNumber], [Email], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'a09916d5-3bc6-4911-af8b-beced2c7c69d', N'007', N'MAGUIA Chantal', N'5818896363', N'maguia@kc.com', N'd9d91f02-cf99-406e-8ce8-6858756aa88d', NULL, NULL, NULL, NULL)
INSERT [dbo].[Agents] ([Id], [Number], [Name], [PhoneNumber], [Email], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'9313e44e-f278-4135-b30f-cec0193e70b5', N'001', N'DJOUMESSI NGUEGUIM Innocent Brice', N'99655903', N'brice@secel.com', N'b61fafc1-c972-48ad-872a-62639cf70d45', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'01b168fe-810b-432d-9010-233ba0b380e9', N'Simple user', N'SIMPLE USER', N'54ff9ce6-688e-4d37-9148-15479dfd3909')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'78a7570f-3ce5-48ba-9461-80283ed1d94d', N'Administrator', N'ADMINISTRATOR', N'13f5ccf4-8a5d-4943-a286-61ea9f8fb506')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7d9b7113-a8f8-4035-99a7-a20dd400f6a3', N'Super administrator', N'SUPER ADMINISTRATOR', N'85e5e1ae-3c80-41cd-a672-83e170a8f4c5')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'936da01f-9abd-4d9d-80c7-02af85c822a8', N'01b168fe-810b-432d-9010-233ba0b380e9', N'ApplicationUserRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'b22698b8-42a2-4115-9631-1c2d1e2ac5f7', N'7d9b7113-a8f8-4035-99a7-a20dd400f6a3', N'ApplicationUserRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'f9168c5e-ceb2-4faa-b6bf-329bf39fa1e4', N'01b168fe-810b-432d-9010-233ba0b380e9', N'ApplicationUserRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'0f8fad5b-d9cb-469f-a165-70867728950e', N'78a7570f-3ce5-48ba-9461-80283ed1d94d', N'ApplicationUserRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'7c9e6679-7425-40de-944b-e07fc1f90ae7', N'78a7570f-3ce5-48ba-9461-80283ed1d94d', N'ApplicationUserRole')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [CompanyId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'936da01f-9abd-4d9d-80c7-02af85c822a8', N'Carmand User', N'b61fafc1-c972-48ad-872a-62639cf70d45', N'user.carmand', N'USER.CARMAND', N'user.carmand@gmail.com', N'USER.CARMAND@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEG3K4rzRssCoG9Jf/qE0nkUO2KPnhxDAR0K0chinFHLhTHgG4omSgFieW0yzfplXtw==', N'731522da-657c-4d21-95a5-f73e552196f9', N'49ef7baf-221e-47ca-9840-1e85cbe2fd83', NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [CompanyId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b22698b8-42a2-4115-9631-1c2d1e2ac5f7', N'Super administrator', NULL, N'super.admin', N'SUPER.ADMIN', N'armand.kamdem.dev@gmail.com', N'ARMAND.KAMDEM.DEV@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDXGle15JCdE5RiyFSML/ThwWQgCrbYLChkVCklyVP+t/jZgA7oe1OiYUUdcS1bCGA==', N'a26e622f-8160-404e-88ca-ff1c82962976', N'e83a6e2f-8531-4e86-ba11-c80c5ed1ef20', NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [CompanyId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f9168c5e-ceb2-4faa-b6bf-329bf39fa1e4', N'KC User', N'd9d91f02-cf99-406e-8ce8-6858756aa88d', N'user.kc', N'USER.KC', N'user.kc@gmail.com', N'USER.KC@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMFFlYkVzjnh0IQ9MmyWGqXsjESGb0tNEqtf3ZDHAS6FEc1khfT2ZLNj7hYb7nsmhw==', N'6e307607-5f23-4207-bda6-cc2a168c1b1e', N'7740815b-c4a0-4e2d-b0b9-e6304af0a267', NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [CompanyId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0f8fad5b-d9cb-469f-a165-70867728950e', N'KC Administrator', N'd9d91f02-cf99-406e-8ce8-6858756aa88d', N'admin.kc', N'ADMIN.KC', N'admin.kc@gmail.com', N'ADMIN.KC@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDJ+OPkF8DAoS70K8iRxXkFh2e9Tl0n8FlKAW6bI3VB4DKQ2XwY7f5fzjaKy9sjv3A==', N'658ef6ac-46b2-48e7-8cd7-f49d1ac094b4', N'41afc718-1cc5-4f83-ac6e-f362a4f8a0c3', NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [CompanyId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7c9e6679-7425-40de-944b-e07fc1f90ae7', N'Carmand Administrator', N'b61fafc1-c972-48ad-872a-62639cf70d45', N'admin.carmand', N'ADMIN.CARMAND', N'admin.carmand@gmail.com', N'ADMIN.CARMAND@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJgAQJfthRtariLZnVlASCUimUOjm4x+DZhbZyI+Dt/8fUe61XBMHiJ8ty9tP9CB6Q==', N'7707b39d-8a4b-4880-b6fe-76ed0ef3df13', N'595e1aca-1c5e-4930-9ade-d8710729a057', NULL, 1, 0, NULL, 0, 0)
GO
INSERT [dbo].[Companies] ([Id], [Name], [Address], [PhoneNumber], [WebSite], [Email], [AdditionnalInformations], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'b61fafc1-c972-48ad-872a-62639cf70d45', N'Carmand', N'Bonamoussadi, Douala - Cameroun', N'655458007', N'https://carmand.com/', N'info@camand.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Companies] ([Id], [Name], [Address], [PhoneNumber], [WebSite], [Email], [AdditionnalInformations], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'd9d91f02-cf99-406e-8ce8-6858756aa88d', N'K and C Conseils Inc', N'1650, Av Banville, QuÃ©bec, QC, G1K1R9', N'5816698785', N'www.kc.com', N'info@kc.com', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SocialNetworkAccounts] ([Id], [Account], [SocialNetworkId], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'9464ac51-48aa-493b-aefb-16c334811c08', N'secel@facebook.com', N'22dab9a5-8d38-491c-b133-c20d77dbbcce', N'b61fafc1-c972-48ad-872a-62639cf70d45', NULL, NULL, NULL, NULL)
INSERT [dbo].[SocialNetworkAccounts] ([Id], [Account], [SocialNetworkId], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'5f7fc731-b180-4a0f-8b3b-32a6a0acb1a3', N'kc@linkedin.com', N'1d8c0f9a-1276-4fa4-aa88-d9a5a2601994', N'd9d91f02-cf99-406e-8ce8-6858756aa88d', NULL, NULL, NULL, NULL)
INSERT [dbo].[SocialNetworkAccounts] ([Id], [Account], [SocialNetworkId], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'7ae32a5d-a8e0-4537-b27f-4284a903b660', N'kc@twitter.com', N'8808ccb0-12ce-4297-800b-68fa77969681', N'd9d91f02-cf99-406e-8ce8-6858756aa88d', NULL, NULL, NULL, NULL)
INSERT [dbo].[SocialNetworkAccounts] ([Id], [Account], [SocialNetworkId], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'36208a40-56cf-4b67-9cb0-b689f56fd358', N'secel@instagram.com', N'09904f1f-653d-4748-b512-a960cd2421b6', N'b61fafc1-c972-48ad-872a-62639cf70d45', NULL, NULL, NULL, NULL)
INSERT [dbo].[SocialNetworkAccounts] ([Id], [Account], [SocialNetworkId], [CompanyId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'a58d95ff-afb2-4f80-8637-ef0eff1702c1', N'kc@facebook.com', N'22dab9a5-8d38-491c-b133-c20d77dbbcce', N'd9d91f02-cf99-406e-8ce8-6858756aa88d', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SocialNetworks] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'8808ccb0-12ce-4297-800b-68fa77969681', N'Twitter', NULL, NULL, NULL, NULL)
INSERT [dbo].[SocialNetworks] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'09904f1f-653d-4748-b512-a960cd2421b6', N'Instagram', NULL, NULL, NULL, NULL)
INSERT [dbo].[SocialNetworks] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'22dab9a5-8d38-491c-b133-c20d77dbbcce', N'Facebook', NULL, NULL, NULL, NULL)
INSERT [dbo].[SocialNetworks] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser]) VALUES (N'1d8c0f9a-1276-4fa4-aa88-d9a5a2601994', N'LinkedIn', NULL, NULL, NULL, NULL)
GO
/****** Object:  Index [IX_Agencies_CompanyId]    Script Date: 2022-03-10 16:42:20 ******/
CREATE NONCLUSTERED INDEX [IX_Agencies_CompanyId] ON [dbo].[Agencies]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Agents_CompanyId]    Script Date: 2022-03-10 16:42:20 ******/
CREATE NONCLUSTERED INDEX [IX_Agents_CompanyId] ON [dbo].[Agents]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2022-03-10 16:42:20 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2022-03-10 16:42:20 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2022-03-10 16:42:20 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2022-03-10 16:42:20 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2022-03-10 16:42:20 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2022-03-10 16:42:20 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_CompanyId]    Script Date: 2022-03-10 16:42:20 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_CompanyId] ON [dbo].[AspNetUsers]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2022-03-10 16:42:20 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SocialNetworkAccounts_CompanyId]    Script Date: 2022-03-10 16:42:20 ******/
CREATE NONCLUSTERED INDEX [IX_SocialNetworkAccounts_CompanyId] ON [dbo].[SocialNetworkAccounts]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SocialNetworkAccounts_SocialNetworkId]    Script Date: 2022-03-10 16:42:20 ******/
CREATE NONCLUSTERED INDEX [IX_SocialNetworkAccounts_SocialNetworkId] ON [dbo].[SocialNetworkAccounts]
(
	[SocialNetworkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agencies]  WITH CHECK ADD  CONSTRAINT [FK_Agencies_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agencies] CHECK CONSTRAINT [FK_Agencies_Companies_CompanyId]
GO
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_Agents_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_Agents_Companies_CompanyId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Companies_CompanyId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[SocialNetworkAccounts]  WITH CHECK ADD  CONSTRAINT [FK_SocialNetworkAccounts_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SocialNetworkAccounts] CHECK CONSTRAINT [FK_SocialNetworkAccounts_Companies_CompanyId]
GO
ALTER TABLE [dbo].[SocialNetworkAccounts]  WITH CHECK ADD  CONSTRAINT [FK_SocialNetworkAccounts_SocialNetworks_SocialNetworkId] FOREIGN KEY([SocialNetworkId])
REFERENCES [dbo].[SocialNetworks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SocialNetworkAccounts] CHECK CONSTRAINT [FK_SocialNetworkAccounts_SocialNetworks_SocialNetworkId]
GO
USE [master]
GO
ALTER DATABASE [KokaarQrCoderDev] SET  READ_WRITE 
GO
