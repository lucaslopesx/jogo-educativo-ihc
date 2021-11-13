USE [master]
GO
/****** Object:  Database [Perguntas]    Script Date: 13/11/2021 17:32:45 ******/
CREATE DATABASE [Perguntas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Perguntas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Perguntas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Perguntas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Perguntas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Perguntas] SET COMPATIBILITY_LEVEL = 150
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
ALTER DATABASE [Perguntas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Perguntas] SET QUERY_STORE = OFF
GO
USE [Perguntas]
GO
/****** Object:  Table [dbo].[astronomia]    Script Date: 13/11/2021 17:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[astronomia](
	[idPergunta] [int] IDENTITY(1,1) NOT NULL,
	[perguntaA] [varchar](500) NOT NULL,
	[perguntaB] [varchar](500) NOT NULL,
	[perguntaC] [varchar](500) NOT NULL,
	[perguntaD] [varchar](500) NOT NULL,
	[resultado] [int] NOT NULL,
	[enunciado] [varchar](500) NOT NULL,
 CONSTRAINT [PK_astronomia] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[botanica]    Script Date: 13/11/2021 17:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[botanica](
	[idPergunta] [int] IDENTITY(1,1) NOT NULL,
	[perguntaA] [varchar](500) NOT NULL,
	[perguntaB] [varchar](500) NOT NULL,
	[perguntaC] [varchar](500) NOT NULL,
	[perguntaD] [varchar](500) NOT NULL,
	[resultado] [int] NOT NULL,
	[enunciado] [varchar](500) NOT NULL,
 CONSTRAINT [PK_botanica] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fisica]    Script Date: 13/11/2021 17:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fisica](
	[idPergunta] [int] IDENTITY(1,1) NOT NULL,
	[perguntaA] [varchar](500) NOT NULL,
	[perguntaB] [varchar](500) NOT NULL,
	[perguntaC] [varchar](500) NOT NULL,
	[perguntaD] [varchar](500) NOT NULL,
	[resultado] [int] NOT NULL,
	[enunciado] [varchar](500) NOT NULL,
 CONSTRAINT [PK_fisica] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geografia]    Script Date: 13/11/2021 17:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geografia](
	[idPergunta] [int] IDENTITY(1,1) NOT NULL,
	[perguntaA] [varchar](500) NOT NULL,
	[perguntaB] [varchar](500) NOT NULL,
	[perguntaC] [varchar](500) NOT NULL,
	[perguntaD] [varchar](500) NOT NULL,
	[resultado] [int] NOT NULL,
	[enunciado] [varchar](500) NOT NULL,
 CONSTRAINT [PK_geografia] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jogador]    Script Date: 13/11/2021 17:32:45 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quimica]    Script Date: 13/11/2021 17:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quimica](
	[idPergunta] [int] IDENTITY(1,1) NOT NULL,
	[perguntaA] [varchar](500) NOT NULL,
	[perguntaB] [varchar](500) NOT NULL,
	[perguntaC] [varchar](500) NOT NULL,
	[perguntaD] [varchar](500) NOT NULL,
	[resultado] [int] NOT NULL,
	[enunciado] [varchar](500) NOT NULL,
 CONSTRAINT [PK_quimica] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zoologia]    Script Date: 13/11/2021 17:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zoologia](
	[idPergunta] [int] IDENTITY(1,1) NOT NULL,
	[perguntaA] [varchar](500) NOT NULL,
	[perguntaB] [varchar](500) NOT NULL,
	[perguntaC] [varchar](500) NOT NULL,
	[perguntaD] [varchar](500) NOT NULL,
	[resultado] [int] NOT NULL,
	[enunciado] [varchar](500) NULL,
 CONSTRAINT [PK_zoologia] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Perguntas] SET  READ_WRITE 
GO
