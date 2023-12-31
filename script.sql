USE [master]
GO
/****** Object:  Database [MiPrimerPagina]    Script Date: 11/19/2023 1:26:22 AM ******/
CREATE DATABASE [MiPrimerPagina]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MiPrimerPagina', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MiPrimerPagina.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MiPrimerPagina_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MiPrimerPagina_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MiPrimerPagina] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MiPrimerPagina].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MiPrimerPagina] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET ARITHABORT OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MiPrimerPagina] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MiPrimerPagina] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MiPrimerPagina] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MiPrimerPagina] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MiPrimerPagina] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET RECOVERY FULL 
GO
ALTER DATABASE [MiPrimerPagina] SET  MULTI_USER 
GO
ALTER DATABASE [MiPrimerPagina] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MiPrimerPagina] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MiPrimerPagina] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MiPrimerPagina] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MiPrimerPagina] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MiPrimerPagina] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MiPrimerPagina', N'ON'
GO
ALTER DATABASE [MiPrimerPagina] SET QUERY_STORE = OFF
GO
USE [MiPrimerPagina]
GO
/****** Object:  Table [dbo].[Carritos]    Script Date: 11/19/2023 1:26:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carritos](
	[CarritoId] [int] IDENTITY(1,1) NOT NULL,
	[MaquillajeId] [int] NULL,
	[UsuarioId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CarritoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maquillajes]    Script Date: 11/19/2023 1:26:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maquillajes](
	[MaquillajeId] [int] IDENTITY(1,1) NOT NULL,
	[NomMaquillaje] [nvarchar](max) NOT NULL,
	[Precio] [int] NOT NULL,
	[Color] [nvarchar](max) NOT NULL,
	[Olor] [nvarchar](max) NOT NULL,
	[UrlImg] [nvarchar](max) NOT NULL,
	[Descripcion] [nvarchar](200) NULL,
 CONSTRAINT [PK_Maquillajes] PRIMARY KEY CLUSTERED 
(
	[MaquillajeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 11/19/2023 1:26:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UsuarioId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Correo] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Maquillajes] ON 

INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (7, N'Lapiz', 20, N'Cafe', N'Madera', N'./img/lapiz.jpg', N' Lápiz de color cafe para cejas, resistente al agua, para marcado de microblading y marcado de maquillaje permanente')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (8, N'En Polvo', 88, N'Beige', N'No tiene', N'./img/polvo.jpg', N'Un producto ideal para matizar el brillo que pueda aparecer sin ningún inconveniente.')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (9, N'Rimel', 45, N'Negro', N'No tiene', N'./img/rimel.jpg', N'Protege e incluso favorece el crecimiento de las pestañas.fácil aplicación')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (10, N'Labial', 23, N'Rojo', N'Cereza', N'./img/selena.jpg', N'transmite amor, energía y está asociado a la pasión y sensualidad,Colección limitada, temporada invierno')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (13, N'Base', 60, N'Vainilla', N'No tiene', N'./img/base.jpg', N' piel luzca un mejor aspecto, de igual manera puede ayudar a disminuir la apariencia de algunas imperfecciones. ')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (14, N'Iluminador', 100, N'Rosa', N'No tiene', N'./img/iluminador.jpg', N'luz a tu mirada, dándole un toque de vitalidad increíble. ')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (15, N'Sombras', 300, N'Colores ', N'Chicle', N'./img/sombras.jpg', N'Los colores pasteles evocan tranquilidad y relajación')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (16, N'Sombras Nude', 350, N'Colores Nude', N'No tiene', N'./img/sombras2.jpg', N' fuente de luz de distinto color,sigue brillando')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (17, N'Sombras brillosa', 200, N'Brillosa', N'No tiene', N'./img/sombras3.jpg', N' ofrecen un aspecto absolutamente radiante y luminoso.')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (18, N'Set de brochas', 250, N'Blancas', N'No tiene', N'./img/brochas.jpg', N'para aplicar todo tipo de polvos sobre el rostro')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (20, N'Kit esponjas', 400, N'Rosa', N'Fresa', N'./img/esponjas.jpg', N' Tienen distintos diseños, colores y superficies.')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (21, N'Pestañas', 100, N'Negras', N'No tiene', N'./img/pestañas.jpg', N'mejorar la cantidad y longitud, así como el grosor y la curvatura de las pestañas naturales')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (22, N'Sombras de mar', 300, N'Cafes', N'Cafe', N'./img/Concha.jpg', N'Amplifica tus ojos con estos neutros humeantes en una variedad de 12 sombras mate, satinadas y metálicas. Acabados mate, metálico y satinado')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (23, N'Set 4 Exfoliantes', 200, N'Colores', N'Frutas', N'./img/mascarilla.jpg', N'infusión de vitamina E suavizante y manteca de karité hidratante')
INSERT [dbo].[Maquillajes] ([MaquillajeId], [NomMaquillaje], [Precio], [Color], [Olor], [UrlImg], [Descripcion]) VALUES (24, N'Labial Mymelody', 50, N'Rosa claro', N'Cereza', N'./img/hello.jpg', N'hace que los labios sean tan suaves y decadentes como un macaron recién horneado!')
SET IDENTITY_INSERT [dbo].[Maquillajes] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([UsuarioId], [Nombre], [Correo], [Password]) VALUES (1, N'salma', N'test.gmail', N'123')
INSERT [dbo].[Usuarios] ([UsuarioId], [Nombre], [Correo], [Password]) VALUES (2, N'salma Vianey', N'test@gmail.com', N'123123234')
INSERT [dbo].[Usuarios] ([UsuarioId], [Nombre], [Correo], [Password]) VALUES (3, N'Levi', N'levi@gmail.com', N'1234')
INSERT [dbo].[Usuarios] ([UsuarioId], [Nombre], [Correo], [Password]) VALUES (4, N'carlos', N'carlos@gmail.com', N'12345')
INSERT [dbo].[Usuarios] ([UsuarioId], [Nombre], [Correo], [Password]) VALUES (5, N'laura', N'laura@gmail.com', N'123')
INSERT [dbo].[Usuarios] ([UsuarioId], [Nombre], [Correo], [Password]) VALUES (6, N'Vianey', N'vianey@gmail.com', N'123456')
INSERT [dbo].[Usuarios] ([UsuarioId], [Nombre], [Correo], [Password]) VALUES (7, N'Abigail', N'abi@gmail.com', N'abi')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Carritos]  WITH CHECK ADD FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[Carritos]  WITH CHECK ADD  CONSTRAINT [fk_Maquillaje] FOREIGN KEY([MaquillajeId])
REFERENCES [dbo].[Maquillajes] ([MaquillajeId])
GO
ALTER TABLE [dbo].[Carritos] CHECK CONSTRAINT [fk_Maquillaje]
GO
USE [master]
GO
ALTER DATABASE [MiPrimerPagina] SET  READ_WRITE 
GO
