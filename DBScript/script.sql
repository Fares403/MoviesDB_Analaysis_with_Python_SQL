CREATE database Movies
USE [Movies]
GO
/****** Object:  Table [dbo].[tblActor]    Script Date: 8/18/2024 5:19:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActor](
	[ActorID] [int] NOT NULL,
	[ActorName] [nvarchar](255) NULL,
	[ActorDOB] [datetime] NULL,
	[ActorGender] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblActor] PRIMARY KEY CLUSTERED 
(
	[ActorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCast]    Script Date: 8/18/2024 5:19:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCast](
	[CastID] [int] NOT NULL,
	[CastFilmID] [int] NULL,
	[CastActorID] [int] NULL,
	[CastCharacterName] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblCast] PRIMARY KEY CLUSTERED 
(
	[CastID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCertificate]    Script Date: 8/18/2024 5:19:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCertificate](
	[CertificateID] [bigint] NOT NULL,
	[Certificate] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblCertificate] PRIMARY KEY CLUSTERED 
(
	[CertificateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCountry]    Script Date: 8/18/2024 5:19:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCountry](
	[CountryID] [int] NOT NULL,
	[CountryName] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblCountry] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDirector]    Script Date: 8/18/2024 5:19:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDirector](
	[DirectorID] [int] NOT NULL,
	[DirectorName] [nvarchar](255) NULL,
	[DirectorDOB] [datetime] NULL,
	[DirectorGender] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblDirector] PRIMARY KEY CLUSTERED 
(
	[DirectorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFilm]    Script Date: 8/18/2024 5:19:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFilm](
	[FilmID] [int] NOT NULL,
	[FilmName] [nvarchar](255) NULL,
	[FilmReleaseDate] [datetime] NULL,
	[FilmDirectorID] [int] NULL,
	[FilmLanguageID] [int] NULL,
	[FilmCountryID] [int] NULL,
	[FilmStudioID] [int] NULL,
	[FilmSynopsis] [nvarchar](max) NULL,
	[FilmRunTimeMinutes] [int] NULL,
	[FilmCertificateID] [bigint] NULL,
	[FilmBudgetDollars] [int] NULL,
	[FilmBoxOfficeDollars] [int] NULL,
	[FilmOscarNominations] [int] NULL,
	[FilmOscarWins] [int] NULL,
 CONSTRAINT [PK_tblFilm] PRIMARY KEY CLUSTERED 
(
	[FilmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGenre]    Script Date: 8/18/2024 5:19:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGenre](
	[GenreId] [bigint] NOT NULL,
	[GenreName] [varchar](50) NULL,
 CONSTRAINT [PK_tblGenre] PRIMARY KEY CLUSTERED 
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLanguage]    Script Date: 8/18/2024 5:19:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLanguage](
	[LanguageID] [int] NOT NULL,
	[Language] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblLanguage] PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStudio]    Script Date: 8/18/2024 5:19:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudio](
	[StudioID] [int] NOT NULL,
	[StudioName] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblStudio] PRIMARY KEY CLUSTERED 
(
	[StudioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCast]  WITH CHECK ADD  CONSTRAINT [FK_tblCast_tblActor] FOREIGN KEY([CastActorID])
REFERENCES [dbo].[tblActor] ([ActorID])
GO
ALTER TABLE [dbo].[tblCast] CHECK CONSTRAINT [FK_tblCast_tblActor]
GO
ALTER TABLE [dbo].[tblCast]  WITH CHECK ADD  CONSTRAINT [FK_tblCast_tblFilm] FOREIGN KEY([CastFilmID])
REFERENCES [dbo].[tblFilm] ([FilmID])
GO
ALTER TABLE [dbo].[tblCast] CHECK CONSTRAINT [FK_tblCast_tblFilm]
GO
ALTER TABLE [dbo].[tblFilm]  WITH CHECK ADD  CONSTRAINT [FK_tblFilm_tblCertificate] FOREIGN KEY([FilmCertificateID])
REFERENCES [dbo].[tblCertificate] ([CertificateID])
GO
ALTER TABLE [dbo].[tblFilm] CHECK CONSTRAINT [FK_tblFilm_tblCertificate]
GO
ALTER TABLE [dbo].[tblFilm]  WITH CHECK ADD  CONSTRAINT [FK_tblFilm_tblCountry] FOREIGN KEY([FilmCountryID])
REFERENCES [dbo].[tblCountry] ([CountryID])
GO
ALTER TABLE [dbo].[tblFilm] CHECK CONSTRAINT [FK_tblFilm_tblCountry]
GO
ALTER TABLE [dbo].[tblFilm]  WITH CHECK ADD  CONSTRAINT [FK_tblFilm_tblDirector] FOREIGN KEY([FilmDirectorID])
REFERENCES [dbo].[tblDirector] ([DirectorID])
GO
ALTER TABLE [dbo].[tblFilm] CHECK CONSTRAINT [FK_tblFilm_tblDirector]
GO
ALTER TABLE [dbo].[tblFilm]  WITH CHECK ADD  CONSTRAINT [FK_tblFilm_tblLanguage] FOREIGN KEY([FilmLanguageID])
REFERENCES [dbo].[tblLanguage] ([LanguageID])
GO
ALTER TABLE [dbo].[tblFilm] CHECK CONSTRAINT [FK_tblFilm_tblLanguage]
GO
ALTER TABLE [dbo].[tblFilm]  WITH CHECK ADD  CONSTRAINT [FK_tblFilm_tblStudio1] FOREIGN KEY([FilmStudioID])
REFERENCES [dbo].[tblStudio] ([StudioID])
GO
ALTER TABLE [dbo].[tblFilm] CHECK CONSTRAINT [FK_tblFilm_tblStudio1]
GO
