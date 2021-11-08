USE [Perguntas]
GO
/****** Object:  Table [dbo].[astronomia]    Script Date: 08/11/2021 18:03:19 ******/
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
 CONSTRAINT [PK_astronomia] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[botanica]    Script Date: 08/11/2021 18:03:19 ******/
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
 CONSTRAINT [PK_botanica] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fisica]    Script Date: 08/11/2021 18:03:19 ******/
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
 CONSTRAINT [PK_fisica] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geografia]    Script Date: 08/11/2021 18:03:19 ******/
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
 CONSTRAINT [PK_geografia] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jogador]    Script Date: 08/11/2021 18:03:19 ******/
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
/****** Object:  Table [dbo].[quimica]    Script Date: 08/11/2021 18:03:19 ******/
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
 CONSTRAINT [PK_quimica] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zoologia]    Script Date: 08/11/2021 18:03:19 ******/
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
 CONSTRAINT [PK_zoologia] PRIMARY KEY CLUSTERED 
(
	[idPergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
