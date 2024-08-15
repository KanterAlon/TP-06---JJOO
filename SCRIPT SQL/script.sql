USE [JJOO]
GO
/****** Object:  User [alumno]    Script Date: 15/8/2024 14:30:40 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 15/8/2024 14:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportes](
	[IdDeporte] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
	[Foto] [text] NULL,
 CONSTRAINT [PK__Deportes__B5FFCC7D9B818B55] PRIMARY KEY CLUSTERED 
(
	[IdDeporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deportistas]    Script Date: 15/8/2024 14:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportistas](
	[IdDeportista] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](200) NULL,
	[Nombre] [varchar](200) NULL,
	[FechaNacimiento] [date] NULL,
	[Foto] [text] NULL,
	[IdPais] [int] NULL,
	[IdDeporte] [int] NULL,
 CONSTRAINT [PK__Deportis__9212E9412967A63B] PRIMARY KEY CLUSTERED 
(
	[IdDeportista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 15/8/2024 14:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
	[Bandera] [text] NULL,
	[FechaFundacion] [date] NULL,
 CONSTRAINT [PK__Paises__FC850A7B4A42BB67] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Deportes] ON 

INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (1, N'Atletismo', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (2, N'Natación', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (3, N'Fútbol', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (4, N'Baloncesto', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (5, N'Tenis', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (6, N'Ciclismo', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (7, N'Voleibol', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (8, N'Gimnasia', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (9, N'Boxeo', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (10, N'Esgrima', NULL)
SET IDENTITY_INSERT [dbo].[Deportes] OFF
GO
SET IDENTITY_INSERT [dbo].[Deportistas] ON 

INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (3, N'Messi', N'Lionel', CAST(N'1987-06-24' AS Date), NULL, 1, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (5, N'Nadal', N'Rafael', CAST(N'1986-06-03' AS Date), NULL, 4, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (6, N'Froome', N'Chris', CAST(N'1985-05-20' AS Date), NULL, 10, 6)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (7, N'Zaytsev', N'Ivan', CAST(N'1988-10-02' AS Date), NULL, 6, 7)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (8, N'Biles', N'Simone', CAST(N'1997-03-14' AS Date), NULL, 2, 8)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (9, N'Ali', N'Muhammad', CAST(N'1942-01-17' AS Date), NULL, 2, 9)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (10, N'Vezzali', N'Valentina', CAST(N'1974-02-14' AS Date), NULL, 6, 10)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (11, N'Carlos', N'Roberto', CAST(N'2024-08-15' AS Date), N'algo', 3, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (12, N'Di Maria', N'Ángel', CAST(N'1980-01-01' AS Date), N'dfdfsdf', 1, 3)
SET IDENTITY_INSERT [dbo].[Deportistas] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (1, N'Argentina', N'Bandera_Argentina.png', CAST(N'1816-07-09' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (2, N'Estados Unidos', N'Bandera_EEUU.png', CAST(N'1776-07-04' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (3, N'Brasil', N'Bandera_Brasil.png', CAST(N'1822-09-07' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (4, N'España', N'Bandera_Espana.png', CAST(N'1492-10-12' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (5, N'Francia', N'Bandera_Francia.png', CAST(N'1789-07-14' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (6, N'Italia', N'Bandera_Italia.png', CAST(N'1861-03-17' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (7, N'China', N'Bandera_China.png', CAST(N'1949-10-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (8, N'Japón', N'Bandera_Japon.png', CAST(N'0660-01-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (9, N'Alemania', N'Bandera_Alemania.png', CAST(N'1871-01-18' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (10, N'Reino Unido', N'Bandera_UK.png', CAST(N'1707-05-01' AS Date))
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
ALTER TABLE [dbo].[Deportistas]  WITH CHECK ADD  CONSTRAINT [FK__Deportist__IdDep__3B75D760] FOREIGN KEY([IdDeporte])
REFERENCES [dbo].[Deportes] ([IdDeporte])
GO
ALTER TABLE [dbo].[Deportistas] CHECK CONSTRAINT [FK__Deportist__IdDep__3B75D760]
GO
ALTER TABLE [dbo].[Deportistas]  WITH CHECK ADD  CONSTRAINT [FK__Deportist__IdPai__3A81B327] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Paises] ([IdPais])
GO
ALTER TABLE [dbo].[Deportistas] CHECK CONSTRAINT [FK__Deportist__IdPai__3A81B327]
GO
/****** Object:  StoredProcedure [dbo].[spAgregarDeportista]    Script Date: 15/8/2024 14:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAgregarDeportista]
    @Apellido NVARCHAR(50),
    @Nombre NVARCHAR(50),
    @FechaNacimiento DATE,
    @Foto NVARCHAR(MAX),
    @IdPais INT,
    @IdDeporte INT
AS
BEGIN
    INSERT INTO Deportistas (Apellido, Nombre, FechaNacimiento, Foto, IdPais, IdDeporte)
    VALUES (@Apellido, @Nombre, @FechaNacimiento, @Foto, @IdPais, @IdDeporte);
END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarDeportista]    Script Date: 15/8/2024 14:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarDeportista]
    @IdDeportista INT
AS
BEGIN
    DELETE FROM Deportistas WHERE IdDeportista = @IdDeportista;
END
GO
/****** Object:  StoredProcedure [dbo].[spListarDeportistasPorDeporte]    Script Date: 15/8/2024 14:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarDeportistasPorDeporte]
    @IdDeporte INT
AS
BEGIN
    SELECT * FROM Deportistas WHERE IdDeporte = @IdDeporte;
END
GO
/****** Object:  StoredProcedure [dbo].[spListarDeportistasPorPais]    Script Date: 15/8/2024 14:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarDeportistasPorPais]
    @IdPais INT
AS
BEGIN
    SELECT * FROM Deportistas WHERE IdPais = @IdPais
END
GO
/****** Object:  StoredProcedure [dbo].[spVerInfoDeporte]    Script Date: 15/8/2024 14:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spVerInfoDeporte]
    @IdDeporte INT
AS
BEGIN
    SELECT * FROM Deportes WHERE IdDeporte = @IdDeporte;
END
GO
/****** Object:  StoredProcedure [dbo].[spVerInfoDeportista]    Script Date: 15/8/2024 14:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spVerInfoDeportista]
    @IdDeportista INT
AS
BEGIN
    SELECT * FROM Deportistas WHERE IdDeportista = @IdDeportista;
END
GO
/****** Object:  StoredProcedure [dbo].[spVerInfoPais]    Script Date: 15/8/2024 14:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spVerInfoPais]
    @IdPais INT
AS
BEGIN
    SELECT * FROM Paises WHERE IdPais = @IdPais;
END
GO
