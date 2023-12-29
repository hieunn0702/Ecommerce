USE [AdvanceEshop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/12/2023 10:11:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
	[Occupation] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
	[CategoryPhoto] [nvarchar](300) NOT NULL,
	[CategoryOrder] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[ColorId] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](30) NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[OrderCode] [nvarchar](max) NULL,
	[ProductId] [bigint] NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[Quantity] [int] NOT NULL,
	[ProductId1] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderCode] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[ProductPrice] [decimal](10, 2) NULL,
	[ProductDiscount] [decimal](2, 2) NULL,
	[ProductPhoto] [nvarchar](300) NULL,
	[SizeId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[IsTrandy] [bit] NOT NULL,
	[IsArrived] [bit] NOT NULL,
	[ImageAlt] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 11/12/2023 10:11:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[SizeId] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [nvarchar](10) NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231012033326_Initial', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231127042559_AddPropertiesUser', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231130023009_CreateCheckout', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231130030628_EditDecimalPrice', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231130095043_EditOrderDetailANDChangeModelCart', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231204050132_NewMigration', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231208114136_ImageAlt', N'6.0.23')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Occupation]) VALUES (N'2fd4ea82-af06-42cd-afbf-2527eeeea7b3', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEI/WVNmn318jBiTfOAk09U+Cj5K4eG4P7nOxJPm2CbJZnaRY9mSpZdkZTlq20MIaPQ==', N'MR6RKKR2TCZCJANYBH2PHW2QB7YOSMYS', N'eb297d73-f9e0-4993-8631-af3cf7f72d68', NULL, 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Occupation]) VALUES (N'350b0e10-aef7-4bd7-9925-57185f2a463e', N'myadmin', N'MYADMIN', N'myadmin@gmail.com', N'MYADMIN@GMAIL.COM', 0, NULL, N'CFGSFH2TORQ4DO5TKKZYEYR3BNHOSXKZ', N'189d186f-718a-4dca-8474-25767f91dcb8', NULL, 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Occupation]) VALUES (N'49662652-c350-4adb-b22b-90e9a5d20a27', N'Nhut', N'NHUT', N'nhut@gmail.com', N'NHUT@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKoC9gz5R78TKN4lUGIvF0xoYL01SPzez2Uk2+PDumnQoafJ5oU4MCt5sRCq+9h4GQ==', N'I3UUU5XODFNWQKHAJTEYMZHIH7POVO6K', N'ee363503-1f3e-449f-abc0-e1c39d1ff31c', NULL, 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Occupation]) VALUES (N'606fe590-2cc2-4bcd-b874-6906affd7144', N'user1@gmail.com', N'USER1@GMAIL.COM', N'user1@gmail.com', N'USER1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBkWQjgrshcVtW688bgrdyWkomiZq0KTcwNLeB8t3KShz0AJXBbyV1FkTSdbmC1sOA==', N'G2BAQA5KAVAP3XEBW4LUKNOAEGODLKO2', N'7264f0ea-ca48-4afc-9dcf-898e5b1009db', NULL, 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Occupation]) VALUES (N'a1472917-f604-444c-b5ed-20a441f3236f', N'trung', N'TRUNG', N'trung@gmail.com', N'TRUNG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGHSsJr7ZGDvZkKKUKGrY8KHd5bM0TTnOCM2RXLTLGCfonRq3g2RDOb+XJ67713ooQ==', N'3F7ZG253FRQYQWQS4APLGOUYRSMDCSWF', N'08a3a7c8-e4a9-4518-af03-b1424241f929', NULL, 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Occupation]) VALUES (N'afa1e01d-9cde-43b0-8343-0f234ac9e296', N'123456', N'123456', N'123456@gmail.com', N'123456@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOfgwOKitm0rGqJ703SEMcfbpwKfL5HbZv9Shw5CunaLBdUYI6O9nxDQUKD+63uOOw==', N'XXL6DQLVI7GFLAILW27NC6DQGI3BZ5FV', N'4b564965-50e7-4e8d-937b-f70707a0b144', NULL, 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Occupation]) VALUES (N'bc10d7bb-e87a-450d-9c9f-e14db4c41622', N'abc@gmail.com', N'ABC@GMAIL.COM', N'abc@gmail.com', N'ABC@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDVdnusi0u05a3YTKdadOu+qMkFpyKC0ltIeXX6ESKK88sdnd7tEF5VU5m5zrTEb+w==', N'3GZUC52XM4QL3TFKUOI5LSKBRGM43SUW', N'2504fdaa-434d-4591-b755-d56ae3d0ce81', NULL, 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Occupation]) VALUES (N'd86141e1-3cbf-4f47-8a73-eb72376ebd66', N'test@gmail.com', N'TEST@GMAIL.COM', N'test@gmail.com', N'TEST@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAENApCHRALgPYzOvUTJYvj805fpi7xkqSFlkwj92VsPFVf43DgtUbKXtLSXBcMp51bQ==', N'HXKEIMED53SR7VXAS3PT5TPXTZKKU2J7', N'd422199f-e8c6-43ce-ab76-123cae87b595', NULL, 0, 0, NULL, 1, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOrder]) VALUES (32, N'All Products', N'ab31ce90-bd19-42f0-991d-e9f086cefb73_slider_3.jpg', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOrder]) VALUES (33, N'Áo', N'265d4af8-7d23-4378-9cb3-265491829a87_chiem-nguong-bst-tui-mlb-monogram-cross-bag-da-lam-nen-ten-tuoi-cho-mlb.jpg', 2)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([ColorId], [ColorName]) VALUES (1, N'Black')
INSERT [dbo].[Colors] ([ColorId], [ColorName]) VALUES (2, N'White')
INSERT [dbo].[Colors] ([ColorId], [ColorName]) VALUES (3, N'Red')
INSERT [dbo].[Colors] ([ColorId], [ColorName]) VALUES (4, N'Blue')
INSERT [dbo].[Colors] ([ColorId], [ColorName]) VALUES (5, N'Green')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductId1]) VALUES (1, N'trung@gmail.com', N'52e03c7f-63eb-4fe2-b946-37e4f71e48cc', 40, CAST(200.00 AS Decimal(18, 2)), 4, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductId1]) VALUES (2, N'trung@gmail.com', N'52e03c7f-63eb-4fe2-b946-37e4f71e48cc', 44, CAST(200.00 AS Decimal(18, 2)), 2, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductId1]) VALUES (3, N'trung@gmail.com', N'd476d000-59d6-46d5-8c87-fdca3dafef8c', 49, CAST(200.00 AS Decimal(18, 2)), 3, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductId1]) VALUES (4, N'trung@gmail.com', N'd476d000-59d6-46d5-8c87-fdca3dafef8c', 46, CAST(200.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductId1]) VALUES (5, N'trung@gmail.com', N'd476d000-59d6-46d5-8c87-fdca3dafef8c', 40, CAST(200.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductId1]) VALUES (6, N'trung@gmail.com', N'b1416f6f-e6c8-403d-a60a-cc73584d8bc3', 46, CAST(200.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductId1]) VALUES (7, N'trung@gmail.com', N'a5274126-90fc-499a-9c87-06f516af8c64', 40, CAST(200.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductId1]) VALUES (8, N'trung@gmail.com', N'a5274126-90fc-499a-9c87-06f516af8c64', 44, CAST(200.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductId1]) VALUES (9, N'nhut@gmail.com', N'4c3696c5-794d-4c55-9893-5d0e68231dcf', 46, CAST(200.00 AS Decimal(18, 2)), 2, NULL)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (1, N'94dfb80b-b668-41bf-8b84-c7399f78cfab', N'trung@gmail.com', CAST(N'2023-11-30T09:41:53.6496501' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (2, N'33a31ee0-4d6d-45b4-b5e4-c068ba5e40c6', N'trung@gmail.com', CAST(N'2023-11-30T09:43:35.7481371' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (3, N'6b386dc6-061c-4935-8661-4fa305ee7af6', N'trung@gmail.com', CAST(N'2023-11-30T09:45:11.3285295' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (4, N'895c1539-0490-422e-8d34-1411f75245f5', N'trung@gmail.com', CAST(N'2023-11-30T10:11:06.0529319' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (5, N'f510ec07-d425-4c95-9ec1-0f9d6ad6e1c5', N'trung@gmail.com', CAST(N'2023-11-30T10:14:28.8960222' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (6, N'a6a266aa-92ad-43e6-b9a0-0245db655259', N'trung@gmail.com', CAST(N'2023-11-30T10:14:45.0089176' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (7, N'748c4f81-67e3-466a-8008-f4cb85cfa092', N'trung@gmail.com', CAST(N'2023-11-30T10:16:19.7442894' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (8, N'3ab1e193-6968-4d62-a368-f6e0cd3fd1b7', N'trung@gmail.com', CAST(N'2023-11-30T10:18:54.5729933' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (9, N'd6ee2f95-ae9b-408f-aa80-0e100cc7a2c9', N'trung@gmail.com', CAST(N'2023-11-30T10:22:47.9478763' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (10, N'c4bb8da5-c1b0-468b-b206-ee7bee6ad0ef', N'trung@gmail.com', CAST(N'2023-11-30T10:40:50.6000075' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (11, N'cab91676-d29f-4182-b9a0-da1639888ef0', N'trung@gmail.com', CAST(N'2023-11-30T10:45:33.7004579' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (12, N'861caf12-c030-4cf9-a3a8-ff1b6e60998d', N'trung@gmail.com', CAST(N'2023-11-30T10:48:15.4942311' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (13, N'6718b8c3-2133-49c5-b090-fc62f878a6dd', N'trung@gmail.com', CAST(N'2023-11-30T10:49:37.7205684' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (14, N'96c195f8-51ef-4c9a-94f1-4071e6fd7f61', N'trung@gmail.com', CAST(N'2023-11-30T10:53:38.3548946' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (15, N'7f5ef876-9d0c-42b6-824e-4a0bd1d20519', N'trung@gmail.com', CAST(N'2023-11-30T10:59:11.8298045' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (16, N'bd38bcb0-8767-4423-9bfb-fc2a061ad80c', N'trung@gmail.com', CAST(N'2023-11-30T11:00:52.3660966' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (17, N'579601d2-bc0f-4dbe-8d4e-f02a5ec2ef24', N'trung@gmail.com', CAST(N'2023-11-30T11:03:37.3437360' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (18, N'4ad420ef-ecac-4886-a408-bff1bde55f82', N'trung@gmail.com', CAST(N'2023-11-30T11:05:25.7072118' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (19, N'dc911a04-c3d4-440f-966a-bd399e1aee69', N'trung@gmail.com', CAST(N'2023-11-30T11:06:41.0608667' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (20, N'dfb23bd6-edb2-4406-aeac-bfa91767dea4', N'trung@gmail.com', CAST(N'2023-11-30T11:15:17.0185856' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (21, N'4731643e-3006-463b-9212-f6956672a4ff', N'trung@gmail.com', CAST(N'2023-11-30T11:20:12.0662044' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (22, N'48f76625-8b37-490d-88b4-380b7f86758f', N'trung@gmail.com', CAST(N'2023-11-30T11:34:46.6241817' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (23, N'318fd672-f9bb-4c1b-b164-de4bd623bb17', N'trung@gmail.com', CAST(N'2023-11-30T11:38:25.8687117' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (24, N'99bcab06-d2eb-478f-894a-329ce631694b', N'trung@gmail.com', CAST(N'2023-11-30T11:40:58.0609263' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (25, N'7bcce49e-7489-4e90-a875-fa02c725b658', N'trung@gmail.com', CAST(N'2023-11-30T11:50:34.2682443' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (26, N'dba18afc-c666-4440-8123-7bc826507599', N'trung@gmail.com', CAST(N'2023-11-30T11:58:53.1688883' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (27, N'8f068eda-1f82-400f-84fc-d476fc954938', N'trung@gmail.com', CAST(N'2023-11-30T12:06:09.5172811' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (28, N'ff2a8296-93ea-4567-8e98-c70411906ab7', N'trung@gmail.com', CAST(N'2023-11-30T12:06:09.5172847' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (29, N'7ac91642-2cc8-498c-9137-41656f91e742', N'trung@gmail.com', CAST(N'2023-11-30T12:08:13.8546122' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (30, N'3663616e-fc64-4215-991f-ddc29b234d31', N'trung@gmail.com', CAST(N'2023-11-30T12:08:56.8242281' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (31, N'7d910816-8d43-4079-909a-a93f09cf1c26', N'trung@gmail.com', CAST(N'2023-11-30T12:30:50.2760420' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (32, N'18c36623-a877-48e0-9575-0852b007baf1', N'trung@gmail.com', CAST(N'2023-11-30T12:31:54.7008931' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (33, N'dbce01fb-0c42-4da1-8fab-04a0f433c55b', N'trung@gmail.com', CAST(N'2023-11-30T12:34:33.6160881' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (34, N'30445b3f-cfa8-4fd7-babf-f4c2ab788b27', N'trung@gmail.com', CAST(N'2023-11-30T12:43:16.1635778' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (35, N'2b7d495d-c00e-4fef-b871-8663eec94b34', N'trung@gmail.com', CAST(N'2023-11-30T12:49:02.4481670' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (36, N'6c7cb298-0938-499a-a5ad-2da91475f44e', N'trung@gmail.com', CAST(N'2023-11-30T12:49:30.5051089' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (37, N'a4116635-1c6c-4ef3-9e35-ce804801359c', N'trung@gmail.com', CAST(N'2023-11-30T12:50:40.3506914' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (38, N'9f0760e5-f587-4c44-a6b4-d0f8f937c0d3', N'trung@gmail.com', CAST(N'2023-11-30T12:56:03.5403781' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (39, N'e906adbb-2369-497a-8533-a0265cc1bf58', N'trung@gmail.com', CAST(N'2023-11-30T13:00:50.6834979' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (40, N'a129d653-0810-483f-ab6f-87d289e183c0', N'trung@gmail.com', CAST(N'2023-11-30T13:17:08.1671435' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (41, N'2c56b579-60f4-4d53-ad98-a6f8df3b1e71', N'trung@gmail.com', CAST(N'2023-11-30T13:23:14.0497130' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (42, N'cb6dd11b-dc50-4e1b-b00b-da885fce8e22', N'trung@gmail.com', CAST(N'2023-11-30T13:28:00.1584012' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (43, N'd85150d9-ca15-4288-ba8e-eb0cafc9834a', N'trung@gmail.com', CAST(N'2023-11-30T13:32:37.6256788' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (44, N'1d960e20-71f8-4357-b368-509d4495d2e0', N'trung@gmail.com', CAST(N'2023-11-30T13:40:54.1678282' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (45, N'14baa9cc-6383-4ff9-be0b-943f4e7593aa', N'trung@gmail.com', CAST(N'2023-11-30T13:44:03.6968884' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (46, N'fccb736c-4e9f-4d79-bd36-64372cee224d', N'trung@gmail.com', CAST(N'2023-11-30T13:55:22.3313829' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (47, N'55757192-627a-4f90-968f-cde0b151fc89', N'trung@gmail.com', CAST(N'2023-11-30T14:06:49.8259857' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (48, N'0c564fef-3fe9-4213-9075-eaec229f7bdd', N'trung@gmail.com', CAST(N'2023-11-30T14:21:39.1498031' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (49, N'394dfc5f-e66a-4a31-ba43-259e314fb6e2', N'trung@gmail.com', CAST(N'2023-11-30T14:41:44.3882497' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (50, N'f49c8e81-9907-4acd-9a47-a624a8189a3a', N'trung@gmail.com', CAST(N'2023-11-30T14:54:18.7026165' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (51, N'e8bd3e39-f4af-4505-90f1-06eed1de75f7', N'trung@gmail.com', CAST(N'2023-11-30T16:46:59.0904152' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (52, N'1254ba3e-5710-4f09-80f2-fb80d80a60f7', N'trung@gmail.com', CAST(N'2023-11-30T16:48:03.7500917' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (53, N'6d2520bd-0977-482f-800b-e7d747945032', N'trung@gmail.com', CAST(N'2023-11-30T16:48:12.8460308' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (54, N'52e03c7f-63eb-4fe2-b946-37e4f71e48cc', N'trung@gmail.com', CAST(N'2023-11-30T16:52:36.8325036' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (55, N'd476d000-59d6-46d5-8c87-fdca3dafef8c', N'trung@gmail.com', CAST(N'2023-11-30T16:54:44.7303591' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (56, N'b1416f6f-e6c8-403d-a60a-cc73584d8bc3', N'trung@gmail.com', CAST(N'2023-11-30T16:55:04.8567185' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (57, N'89bf24ea-50b3-44ab-801f-f0899cb6b372', N'trung@gmail.com', CAST(N'2023-12-04T11:40:33.3366323' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (58, N'9260fe07-68f1-480c-9f8e-8b3d6828d54a', N'trung@gmail.com', CAST(N'2023-12-04T11:41:20.6513990' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (59, N'68963f87-1242-46d1-8a66-f1937e869bdc', N'trung@gmail.com', CAST(N'2023-12-04T11:43:34.2351895' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (60, N'903c879a-ff3f-4397-90ae-b20304ee3e26', N'trung@gmail.com', CAST(N'2023-12-04T11:48:19.3885844' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (61, N'821d7440-c947-493f-8e6a-b4450dd5be94', N'trung@gmail.com', CAST(N'2023-12-04T11:51:57.2058704' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (62, N'2aa31f65-704c-4923-8799-c9081c1e285c', N'trung@gmail.com', CAST(N'2023-12-04T11:54:36.4919721' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (63, N'9a4e665d-a3f4-4f7f-aec2-abaee317a147', N'trung@gmail.com', CAST(N'2023-12-04T12:00:05.6095015' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (64, N'589e0360-69a6-45ca-8385-47b48b0f6237', N'trung@gmail.com', CAST(N'2023-12-04T12:01:32.8881983' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (65, N'a5274126-90fc-499a-9c87-06f516af8c64', N'trung@gmail.com', CAST(N'2023-12-04T12:02:10.1385185' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status]) VALUES (66, N'4c3696c5-794d-4c55-9893-5d0e68231dcf', N'nhut@gmail.com', CAST(N'2023-12-07T17:35:46.9350208' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived], [ImageAlt]) VALUES (9, N'Áo Thun MLB Korea Monogram Big Lux New York Yankees', N'Những sản phẩm từ những thương hiệu này không chỉ đơn giản là đồ thời trang, mà còn là biểu tượng của sự đam mê, sự tôn trọng đối với thể thao bóng chày, và sự sáng tạo không ngừng nghỉ để đáp ứng nhu cầu của người hâm mộ.', 33, CAST(1790.00 AS Decimal(10, 2)), CAST(0.20 AS Decimal(2, 2)), N'aa75bfe7-cc72-4d67-b8fe-2f94ad05dfe4_áo.jpg', 4, 1, 1, 1, N'Áo Thun MLB Korea Monogram Big Lux New York Yankees')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (1, N'S')
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (2, N'XS')
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (3, N'M')
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (4, N'L')
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (5, N'XL')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
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
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId1] FOREIGN KEY([ProductId1])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId1]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([ColorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Colors_ColorId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([SizeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Sizes_SizeId]
GO
