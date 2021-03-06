USE [master]
GO
/****** Object:  Database [Perguntas]    Script Date: 19/11/2021 21:36:34 ******/
CREATE DATABASE [Perguntas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Perguntas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Perguntas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Perguntas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Perguntas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Perguntas] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Perguntas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Perguntas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Perguntas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Perguntas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Perguntas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Perguntas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Perguntas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Perguntas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Perguntas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Perguntas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Perguntas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Perguntas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Perguntas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Perguntas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Perguntas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Perguntas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Perguntas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Perguntas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Perguntas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Perguntas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Perguntas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Perguntas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Perguntas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Perguntas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Perguntas] SET  MULTI_USER 
GO
ALTER DATABASE [Perguntas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Perguntas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Perguntas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Perguntas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Perguntas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Perguntas] SET QUERY_STORE = OFF
GO
USE [Perguntas]
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
USE [Perguntas]
GO
/****** Object:  Table [dbo].[astronomia]    Script Date: 19/11/2021 21:36:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[astronomia](
	[idPergunta] [int] NOT NULL,
	[perguntaA] [varchar](500) NOT NULL,
	[perguntaB] [varchar](500) NOT NULL,
	[perguntaC] [varchar](500) NOT NULL,
	[perguntaD] [varchar](500) NOT NULL,
	[resultado] [int] NOT NULL,
	[enunciado] [varchar](500) NOT NULL,
 CONSTRAINT [PK_astronomia] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[botanica]    Script Date: 19/11/2021 21:36:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[botanica](
	[idPergunta] [int] NOT NULL,
	[perguntaA] [varchar](500) NOT NULL,
	[perguntaB] [varchar](500) NOT NULL,
	[perguntaC] [varchar](500) NOT NULL,
	[perguntaD] [varchar](500) NOT NULL,
	[resultado] [int] NOT NULL,
	[enunciado] [varchar](500) NOT NULL,
 CONSTRAINT [PK_botanica] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fisica]    Script Date: 19/11/2021 21:36:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fisica](
	[idPergunta] [int] NOT NULL,
	[perguntaA] [varchar](500) NOT NULL,
	[perguntaB] [varchar](500) NOT NULL,
	[perguntaC] [varchar](500) NOT NULL,
	[perguntaD] [varchar](500) NOT NULL,
	[resultado] [int] NOT NULL,
	[enunciado] [varchar](500) NOT NULL,
 CONSTRAINT [PK_fisica] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geografia]    Script Date: 19/11/2021 21:36:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geografia](
	[idPergunta] [int] NOT NULL,
	[perguntaA] [varchar](500) NOT NULL,
	[perguntaB] [varchar](500) NOT NULL,
	[perguntaC] [varchar](500) NOT NULL,
	[perguntaD] [varchar](500) NOT NULL,
	[resultado] [int] NOT NULL,
	[enunciado] [varchar](500) NOT NULL,
 CONSTRAINT [PK_geografia] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jogador]    Script Date: 19/11/2021 21:36:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jogador](
	[idJogador] [int] IDENTITY(1,1) NOT NULL,
	[nomeJogador] [varchar](50) NULL,
	[astronomia] [int] NULL,
	[botanica] [int] NULL,
	[fisica] [int] NULL,
	[geografia] [int] NULL,
	[quimica] [int] NULL,
	[zoologia] [int] NULL,
 CONSTRAINT [PK_jogador] PRIMARY KEY CLUSTERED 
(
	[idJogador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quimica]    Script Date: 19/11/2021 21:36:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quimica](
	[idPergunta] [int] NOT NULL,
	[perguntaA] [varchar](500) NOT NULL,
	[perguntaB] [varchar](500) NOT NULL,
	[perguntaC] [varchar](500) NOT NULL,
	[perguntaD] [varchar](500) NOT NULL,
	[resultado] [int] NOT NULL,
	[enunciado] [varchar](500) NOT NULL,
 CONSTRAINT [PK_quimica] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zoologia]    Script Date: 19/11/2021 21:36:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zoologia](
	[idPergunta] [int] NOT NULL,
	[perguntaA] [varchar](500) NOT NULL,
	[perguntaB] [varchar](500) NOT NULL,
	[perguntaC] [varchar](500) NOT NULL,
	[perguntaD] [varchar](500) NOT NULL,
	[resultado] [int] NOT NULL,
	[enunciado] [varchar](500) NULL,
 CONSTRAINT [PK_zoologia] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[astronomia] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (1, N'São formadas quando as nuvens mais altas são carregadas com carga positiva e as mais baixas, com cargas negativas, induzindo a criação de um campo elétrico.', N'São como as nuvens se formam, para ocorrer as chuvas. ', N'São formados através da junção do vento, ar e nuvem', N'São formado por particulas presentes na atmosfera', 1, N'Como é formada a tempestade?')
INSERT [dbo].[astronomia] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (2, N'Éris', N' Makemake', N'O planeta Saturna', N'O sol', 4, N'Qual é a estrela central do Sistema Solar?')
INSERT [dbo].[astronomia] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (3, N'7 Planetas', N'5 Planetas', N'8 Planetas', N'2 Planetas', 3, N'Quantos planetas compõem o Sistema Solar?')
INSERT [dbo].[astronomia] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (4, N'A estrela possui luz própria e o planeta produz a luz', N'As estrelas tem luz própria e os planetas refletem a luz do sol.', N'As estrelas não tem luz própria como o sol', N'O sol reflete a luz dos planetas', 2, N'Qual a diferença entre planeta e estrela?')
INSERT [dbo].[botanica] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (1, N'Água, solo fértil, ar e luz solar para crescer e se desenvolver.', N'Água e solo apenas', N'Solo apenas', N'Água apenas', 1, N'Para que as plantas possam continuar vivendo precisam de quais elementos?  ')
INSERT [dbo].[botanica] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (2, N'Caule, galhos e folhas.', N'Raízes, as folhas, o caule, as flores e frutos.', N'Flores e frutos', N'Frutos e Caule', 2, N'As plantas são divididas em quais partes?')
INSERT [dbo].[botanica] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (3, N'O fruto', N'O caule', N'A raiz', N'O pé', 3, N'Qual a parte que fixa a planta no solo? ')
INSERT [dbo].[botanica] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (4, N'Flor, arvores e pistia.', N'Arvores e Lótus', N'Pistia e árvore', N'Vitória-régia, flor de lótus, pistia, entre outras.', 4, N'Quais as plantas que vivem na água?')
INSERT [dbo].[fisica] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (1, N'Ciência que estuda luz ', N'Ciência que estuda a ciência', N'Ciência que estuda o sol', N'Ciência que estuda a natureza e seus fenômenos em seus aspectos gerais.', 4, N'O que é física?')
INSERT [dbo].[fisica] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (2, N'Luz, atmosfera, rotação e calor ', N'Luz, Calor eMovimeto', N'Mecânica, calor, movimento ondulatório, óptica, eletricidade e física moderna.', N'Eletricidade, movimento e calor', 3, N'Quais os tipos de fenômenos que a física estuda?')
INSERT [dbo].[fisica] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (3, N'Gelo, Corrente e ar', N'Sólido, líquido e gasoso', N'Gelo, Normal, Gasoso', N'Sólido, corrente e Líquido', 2, N'Quais os três estados da água?')
INSERT [dbo].[fisica] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (4, N'É a parte da física que estuda os fenômenos da luz.', N'É a parte da física que estuda a junção de metais ', N'É a parte da física que estuda a inercia ', N'É a parte da física que estuda a velocidade da luz ', 1, N'O que óptica?')
INSERT [dbo].[geografia] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (1, N'36', N'20', N'31', N'1', 1, N'Quantos países tem a América? ')
INSERT [dbo].[geografia] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (2, N'Da África', N'Da América do Sul.', N'Da Ásia', N'Da Oceânia', 2, N'O Brasil é de qual continente?')
INSERT [dbo].[geografia] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (3, N'Rio de Janeiro', N'São Paulo', N'Minas Gerais', N'Rio Branco', 4, N'Qual é a capital do Acre?')
INSERT [dbo].[geografia] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (4, N'Brasil', N'Estados Unidos', N'O Vaticano', N'Alfenas', 3, N'Qual o menor país do mundo?')
SET IDENTITY_INSERT [dbo].[jogador] ON 

INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (2, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (3, N'Gustavo', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (4, N'Lucas', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (5, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (6, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (7, N'a', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (8, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (9, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (10, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (11, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (12, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (13, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (14, N'x', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (15, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (16, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (17, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (18, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (19, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (20, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (21, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (22, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (23, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (24, N'x', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (25, N'a', 0, 1, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (26, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (27, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (28, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (29, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (30, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (31, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (32, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (33, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (34, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (35, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (36, N'x', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (37, N'Gustavo', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (38, N'Lucas', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (39, N'Gustavo', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (40, N'Lucas', 0, 0, 0, 0, 0, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (41, N'Gustavo', 1, 0, 0, 1, 0, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (42, N'Lucas', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (43, N'gustavo', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (44, N'lucas', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (45, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (46, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1002, N'Gustavo', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1003, N'Lucas', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1004, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1005, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1006, N'Gustavo', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1007, N'Isabela', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1008, N'Gustavo', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1009, N'Lucas', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1010, N'Gustavo', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1011, N'Lucas', 1, 0, 0, 0, 0, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1012, N'Gustavo', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1013, N'Lucas', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1014, N'marcus', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1015, N'vinicius', 1, 0, 0, 0, 1, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1016, N'x', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1017, N'a', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1018, N'Gustavo', 1, 1, 1, 0, 1, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1019, N'Lucas', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1020, N'Gustavo', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1021, N'Lucas', 1, 0, 1, 1, 1, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1022, N'c', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1023, N'c', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1024, N'lucas', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1025, N'joao', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1026, N'lucas', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1027, N'joao', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1028, N'marcus', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1029, N'lucas', 1, 0, 1, 1, 1, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1030, N'lucas', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1031, N'marcus', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1032, N'lucas', 1, 0, 0, 1, 1, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1033, N'marcus', 1, 0, 1, 1, 1, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1034, N'marcus', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1035, N'lucas', 1, 1, 0, 0, 0, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1036, N'marcus', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1037, N'lucas', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1038, N'marcus', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1039, N'lucas', 1, 0, 0, 0, 0, 1)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1040, N'lucas', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1041, N'aaa', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1042, N'adaw', 0, 0, 0, 0, 0, 0)
INSERT [dbo].[jogador] ([idJogador], [nomeJogador], [astronomia], [botanica], [fisica], [geografia], [quimica], [zoologia]) VALUES (1043, N'dawdwa', 1, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[jogador] OFF
INSERT [dbo].[quimica] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (1, N'Uma mistura que que não se junta.', N'Uma mistura com apenas um elemento', N'É uma solução que apresenta uma única fase.', N'Uma mistura que possui apenas água', 3, N'O que é uma mistura homogênea?')
INSERT [dbo].[quimica] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (2, N'É quando não a alteração na formulação', N'É quando há alteração na natureza da matéria, na sua composição. Pois novas substâncias foram originadas.', N'É quando sua cor se modifica', N'Quando a matéria entra em estado gasoso', 2, N'O que é um fenômeno químico?')
INSERT [dbo].[quimica] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (3, N'É tudo aquilo que ocupa lugar (o mesmo que volume) no espaço e apresenta peso (produto da massa pela gravidade).', N'É tudo aquilo que é neutro', N'É tudo aqui que não ocupa lugar no espaço, ou seja, nao possui peso', N'Tudo aquilo que possui peso, mas não ocupa lugar no espaço', 1, N'O que é matéria?')
INSERT [dbo].[quimica] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (4, N'Aquilo que não se junta', N'Nome dado a soma da velocidade em que o objeto se encontra', N'A posição em que um objeto se encontra', N'É a propriedade que possui uma substância de não reagir em contato com outra.', 4, N'O que é inércia?')
INSERT [dbo].[zoologia] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (1, N'300 espécies', N'400 espécies.', N'1 espécies.', N'700 espécies.', 4, N'Quantos tipos de dinossauro existiram?')
INSERT [dbo].[zoologia] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (2, N'Peixe, minhoca, cobra e mosquito', N'Peixes, anfíbios, répteis, aves e mamíferos, inclusive os seres humanos.', N'Cobra, Elefante, Mosquito', N'Mosquito e Vespa', 2, N'Quais são os animais que possuem coluna vertebral?')
INSERT [dbo].[zoologia] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (3, N'Borboleta, formiga, verme, minhoca, esponjas do mar, entre outros. ', N'Peixe, Formiga, Verme', N'Répteis, Aves e Borboleta', N'Cobra, Aves', 1, N'Animais invertebrados não possuem vértebras. Quais são eles? ')
INSERT [dbo].[zoologia] ([idPergunta], [perguntaA], [perguntaB], [perguntaC], [perguntaD], [resultado], [enunciado]) VALUES (4, N'São animais que produzem seu próprio alimento.', N'São animais que podem ou não produzir seu próprio alimento', N'São organismo que não são capazes de produzir seu próprio alimento. ', N'Animais que se alimentam através da fotossintese', 3, N'O que são organismos heterotróficos? ')
USE [master]
GO
ALTER DATABASE [Perguntas] SET  READ_WRITE 
GO
