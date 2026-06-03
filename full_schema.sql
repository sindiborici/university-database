-- =====================================================================
-- FTI University Database -- Schema (SQL Server)
-- =====================================================================
-- Bachelor thesis: "Creating a Database for the Faculty of Information
-- Technology" -- Sindi Borici, "Aleksander Moisiu" University Durres,
-- June 2025. Supervised by Prof. Dr. Eris Zeqo.
--
-- Portable export -- no machine-specific paths or settings. Deploy with:
--     sqlcmd -S <server> -i schema/full_schema.sql
-- or open in SSMS and press F5.
--
-- Contents:  26 tables * 8 analytical views * foreign keys * CHECK
-- constraints for email format, phone format, gender, ID patterns, etc.
-- =====================================================================

USE [master]
GO

IF DB_ID('FTI') IS NULL
    CREATE DATABASE [FTI]
GO

ALTER DATABASE [FTI] SET COMPATIBILITY_LEVEL = 160
GO

USE [FTI]
GO

-- ---------------------------------------------------------------------
-- 1) TABLES (26)
-- ---------------------------------------------------------------------

CREATE TABLE [dbo].[DATABASA MI111 ](
	[Nr] [tinyint] NOT NULL,
	[ID_MASH] [nvarchar](50) NOT NULL,
	[DATELINDJE] [date] NOT NULL,
	[GJINIA] [nvarchar](50) NOT NULL,
	[RRETHI] [nvarchar](50) NOT NULL,
	[ADRESA] [nvarchar](50) NULL,
	[NR_CEL] [int] NOT NULL,
	[Shkolla_e_mesme_nga_vijne] [nvarchar](50) NULL,
	[ID_MATURES] [float] NULL,
	[NR_ID] [nvarchar](50) NOT NULL,
	[DATE_RREGJISTRIMI] [date] NOT NULL,
	[LLOJI_I_REGJISTRIMIT] [nvarchar](50) NOT NULL,
	[NR_MATRIKULLIT_TE_MEPARSHEM] [nvarchar](1) NULL,
	[IAL_ja_NGA_ESHTE_TRANSFERUAR] [nvarchar](1) NULL,
	[DATA_E_REGJISTRIMIT_NR_PROG_E_ST_NGA_ESHTE_TRANSFERUAR] [nvarchar](1) NULL,
	[NR_DHE_DATE_VENDIMI_KOM_AD_HOC] [nvarchar](1) NULL,
	[CREGJISTRIMI_NDERPRERJA_STUDIMEVE] [nvarchar](100) NULL,
	[TE_DHENA_PER_C_REGJISTRIM] [nvarchar](50) NULL,
	[NR_DIPLOMES] [nvarchar](1) NULL,
	[DATA_E_DIPLOMES] [date] NULL,
	[VITI] [nvarchar](50) NOT NULL,
	[DEGA] [nvarchar](50) NOT NULL,
	[L1] [nvarchar](50) NOT NULL,
	[N1] [tinyint] NULL,
	[L2] [nvarchar](50) NOT NULL,
	[N2] [tinyint] NULL,
	[L3] [nvarchar](50) NOT NULL,
	[N3] [tinyint] NULL,
	[L4] [nvarchar](50) NOT NULL,
	[N4] [tinyint] NULL,
	[L5] [nvarchar](50) NOT NULL,
	[N5] [tinyint] NULL,
	[L6] [nvarchar](50) NOT NULL,
	[N6] [nvarchar](1) NULL,
	[L7] [nvarchar](50) NOT NULL,
	[N7] [tinyint] NULL,
	[L8] [nvarchar](50) NOT NULL,
	[N8] [tinyint] NULL,
	[L9] [nvarchar](50) NOT NULL,
	[N9] [tinyint] NULL,
	[L10] [nvarchar](50) NOT NULL,
	[N10] [tinyint] NULL,
	[L11] [nvarchar](50) NOT NULL,
	[N11] [tinyint] NULL,
	[L12] [nvarchar](50) NOT NULL,
	[N12] [tinyint] NULL,
	[L13] [nvarchar](50) NOT NULL,
	[N13] [tinyint] NULL,
	[L14] [nvarchar](50) NOT NULL,
	[N14] [tinyint] NULL,
	[L15] [nvarchar](50) NOT NULL,
	[N15] [tinyint] NULL,
	[L16] [nvarchar](50) NOT NULL,
	[N16] [tinyint] NULL,
	[L17] [nvarchar](50) NOT NULL,
	[N17] [tinyint] NULL,
	[L18] [nvarchar](50) NOT NULL,
	[N18] [tinyint] NULL,
	[L19] [nvarchar](50) NOT NULL,
	[N19] [tinyint] NULL,
	[L20] [nvarchar](50) NOT NULL,
	[N20] [tinyint] NULL,
	[L21] [nvarchar](50) NOT NULL,
	[N21] [tinyint] NULL,
	[L22] [nvarchar](50) NOT NULL,
	[N22] [tinyint] NULL,
	[L23] [nvarchar](50) NOT NULL,
	[N23] [tinyint] NULL,
	[L24] [nvarchar](50) NOT NULL,
	[N24] [tinyint] NULL,
	[L25] [nvarchar](50) NOT NULL,
	[N25] [tinyint] NULL,
	[L26] [nvarchar](50) NOT NULL,
	[N26] [tinyint] NULL,
	[L27] [nvarchar](50) NOT NULL,
	[N27] [tinyint] NULL,
	[L28] [nvarchar](50) NOT NULL,
	[N28] [nvarchar](1) NULL,
	[L29] [nvarchar](50) NOT NULL,
	[N29] [tinyint] NULL,
	[L30] [nvarchar](50) NOT NULL,
	[N30] [tinyint] NULL,
	[L31] [nvarchar](50) NOT NULL,
	[N31] [tinyint] NULL,
	[L32] [nvarchar](50) NOT NULL,
	[N32] [tinyint] NULL,
	[L33] [nvarchar](50) NOT NULL,
	[N33] [nvarchar](1) NULL,
	[L34] [nvarchar](50) NOT NULL,
	[N34] [tinyint] NULL,
	[L35] [nvarchar](50) NOT NULL,
	[N35] [nvarchar](1) NULL,
	[L36] [nvarchar](50) NOT NULL,
	[N36] [tinyint] NULL,
	[L37] [nvarchar](50) NOT NULL,
	[N37] [tinyint] NULL,
	[L38] [nvarchar](50) NOT NULL,
	[N38] [tinyint] NULL,
	[L39] [nvarchar](50) NOT NULL,
	[N39] [tinyint] NULL,
	[L40] [nvarchar](50) NOT NULL,
	[N40] [tinyint] NULL,
	[L41] [nvarchar](50) NOT NULL,
	[N41] [tinyint] NULL,
	[L42] [nvarchar](50) NOT NULL,
	[N42] [tinyint] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[NOTA](
	[ID_MASH] [varchar](15) NOT NULL,
	[LENDA] [varchar](100) NOT NULL,
	[NOTA] [tinyint] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Administrata](
	[PERS_ID] [char](10) NOT NULL,
	[PERS_POZ] [varchar](20) NULL,
	[PERS_DT_FILLIMI] [date] NULL,
	[PERS_LLOJ_KONTRATE] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERS_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Auditor](
	[SALLE_ID] [char](3) NOT NULL,
	[SALLE_KP] [int] NULL,
	[SALLE_TIP] [varchar](15) NOT NULL,
	[SALLE_PAJISJE] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[SALLE_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Biblioteke](
	[SALLE_ID] [char](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SALLE_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Departament](
	[DEP_ID] [varchar](4) NOT NULL,
	[FK_ID] [varchar](5) NULL,
	[DEP_EM] [varchar](50) NULL,
	[DEP_PRSH] [text] NULL,
	[PD_ID] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[DEP_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Fakultet](
	[FK_ID] [varchar](5) NOT NULL,
	[FK_EM] [varchar](50) NULL,
	[NDER_ID] [char](2) NULL,
	[FK_TEL] [char](10) NULL,
	[FK_EMAIL] [varchar](50) NULL,
	[FK_WEB] [varchar](100) NULL,
	[PD_ID] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[FK_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Komision](
	[SEK_ID] [char](5) NOT NULL,
	[RENDOR_NR] [int] NOT NULL,
	[PD_ID] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[SEK_ID] ASC,
	[RENDOR_NR] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Kurrikula](
	[KURR_ID] [int] NOT NULL,
	[PROG_ID] [int] NULL,
	[KURR_MIRATIM] [int] NULL,
	[KURR_HAP] [int] NULL,
	[KURR_KRED_EU] [int] NULL,
	[KURR_KRED_US] [int] NULL,
	[KURR_VEND] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[KURR_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[KurrikulaKurs](
	[KURRKURS_ID] [int] NOT NULL,
	[KURR_ID] [int] NULL,
	[KURS_ID] [int] NULL,
	[SEMESTER] [varchar](2) NULL,
	[KURRKURS_VITI] [int] NULL,
	[KURRKURS_TIPI] [varchar](1) NULL,
	[KURRKURS_KAT] [varchar](20) NULL,
	[KURS_PARAKERKUAR_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[KURRKURS_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Kurs](
	[KURS_ID] [int] NOT NULL,
	[KURS_EM] [varchar](20) NULL,
	[KURS_PRSHK] [text] NULL,
	[DEP_ID] [varchar](4) NULL,
	[PD_ID] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[KURS_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Ndertese](
	[NDER_ID] [char](2) NOT NULL,
	[NDER_EM] [varchar](15) NULL,
	[NDER_ADR] [varchar](20) NULL,
	[NDER_VIT] [int] NULL,
	[NDER_S2] [float] NULL,
	[SHENIME] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[NDER_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Pedagog](
	[PD_ID] [char](10) NOT NULL,
	[PD_EM] [varchar](10) NULL,
	[PD_AT] [varchar](10) NULL,
	[PD_MB] [varchar](10) NULL,
	[PD_KATEGORI] [varchar](4) NULL,
	[PD_TITULL] [varchar](10) NULL,
	[DEP_ID] [varchar](4) NULL,
	[PD_TEL] [char](10) NULL,
	[PD_EMAIL] [varchar](50) NULL,
	[PD_DT_PUNE] [date] NULL,
	[PD_STATUS] [varchar](20) NULL,
	[PD_SPEC] [varchar](20) NULL,
	[PD_CV] [text] NULL,
	[SALLE_ID] [char](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[PD_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Personel](
	[PERS_ID] [char](10) NOT NULL,
	[PERS_EM] [varchar](10) NULL,
	[PERS_AT] [varchar](10) NULL,
	[PERS_MB] [varchar](10) NULL,
	[PERS_DTL] [date] NULL,
	[PERS_TEL] [varchar](15) NULL,
	[PERS_EMAIL] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERS_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[PERSONEL_DIPLOMA](
	[PERS_ID] [char](10) NOT NULL,
	[NR_RENDOR] [char](2) NOT NULL,
	[PERS_DIP] [varchar](15) NULL,
	[PERS_DEGA] [varchar](20) NULL,
	[PERS_NOTA] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERS_ID] ASC,
	[NR_RENDOR] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ProgramStudimi](
	[PROG_ID] [int] NOT NULL,
	[DEP_ID] [varchar](4) NULL,
	[PROG_EM] [varchar](20) NULL,
	[PROG_LLOJ] [varchar](15) NULL,
	[PROG_HAP] [int] NULL,
	[PROG_AKR_FILLIM] [date] NULL,
	[PROG_AKR_MBARIM] [date] NULL,
	[PROG_VEND_HAP] [varchar](50) NULL,
	[PROG_VEND_AKR] [varchar](50) NULL,
	[PROG_KOHZGJATJE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PROG_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Regjistrimi](
	[STUD_ID] [varchar](10) NOT NULL,
	[SEK_ID] [char](5) NOT NULL,
	[REGJ_DITA] [date] NULL,
	[REGJ_NOTA] [int] NULL,
	[REGJ_PIKET] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[STUD_ID] ASC,
	[SEK_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Salle](
	[SALLE_ID] [char](3) NOT NULL,
	[SALLE_TIPI] [varchar](10) NOT NULL,
	[NDER_ID] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[SALLE_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Seksion](
	[SEK_ID] [char](5) NOT NULL,
	[KURS_ID] [int] NULL,
	[SALLE_ID] [char](3) NULL,
	[PD_ID] [char](10) NULL,
	[SEM_ID] [int] NULL,
	[SEK_DITA] [varchar](10) NULL,
	[SEK_ORA_FILLIMI] [time](7) NULL,
	[SEK_ORA_MBARIMI] [time](7) NULL,
	[SEK_TIP] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[SEK_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Semestri](
	[SEM_ID] [int] NOT NULL,
	[SEM_EM] [varchar](2) NULL,
	[SEM_VITI] [int] NULL,
	[SEM_FILLIM] [date] NULL,
	[SEM_MBARIM] [date] NULL,
	[SEM_STATUS] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[SEM_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Student](
	[STUD_ID] [varchar](10) NOT NULL,
	[STUD_EM] [varchar](10) NOT NULL,
	[STUD_AT] [varchar](10) NULL,
	[STUD_MB] [varchar](10) NOT NULL,
	[STUD_DTL] [date] NOT NULL,
	[STUD_GJINIA] [varchar](1) NOT NULL,
	[STUD_RRETH] [varchar](20) NULL,
	[STUD_ADR] [varchar](20) NULL,
	[STUD_TEL] [char](10) NULL,
	[STUD_EMAIL] [varchar](50) NULL,
	[STUD_SHK_MESME] [varchar](20) NULL,
	[KURR_ID] [int] NULL,
	[STUD_MATRIK] [varchar](12) NULL,
	[STUD_REGJ] [date] NULL,
	[STUD_STATUS] [varchar](20) NULL,
	[STUD_FILLIM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[STUD_ID] ASC
) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[STUD_MATRIK] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[STUDENT_DIPLOMUAR](
	[STUD_ID] [varchar](10) NOT NULL,
	[KURS_ID] [int] NULL,
	[NOTA] [int] NULL,
	[DATA_DIPLOMIMIT] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[STUD_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Student_Transferuar](
	[STUD_ID] [varchar](10) NOT NULL,
	[STUDTR_VENDIM] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[STUD_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Vleresim](
	[STUD_ID] [varchar](10) NOT NULL,
	[SEK_ID] [char](5) NOT NULL,
	[PIKE_TOTAL] [decimal](5, 2) NULL,
	[NOTA] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[STUD_ID] ASC,
	[SEK_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[VleresimFrekuentim](
	[STUD_ID] [varchar](10) NOT NULL,
	[SEK_ID] [char](5) NOT NULL,
	[PROVIM1] [decimal](5, 2) NULL,
	[PROVIM2] [decimal](5, 2) NULL,
	[PROJEKT] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[STUD_ID] ASC,
	[SEK_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Zyre](
	[SALLE_ID] [char](3) NOT NULL,
	[SALLE_PAJISJE] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[SALLE_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [FTI] SET  READ_WRITE 
GO

-- ---------------------------------------------------------------------
-- 2) ANALYTICAL VIEWS (8)
-- ---------------------------------------------------------------------

CREATE VIEW [dbo].[MESATARE_GJINIA] AS
SELECT	GJINIA, ROUND(AVG(CAST(NOTA AS FLOAT)),2) AS MESATARE, COUNT(DISTINCT [DATABASA MI111 ].ID_MASH) AS NR  --MESATAREN E STUDENTEVE SIPAS GJINISE
FROM	[DATABASA MI111 ], NOTA
WHERE	[DATABASA MI111 ].ID_MASH = NOTA.ID_MASH
AND		NOTA IS NOT NULL
GROUP BY GJINIA
GO
CREATE VIEW [dbo].[MESATARE_LENDA] AS
SELECT	LENDA, ROUND(AVG(CAST(NOTA AS FLOAT)),2) AS MESATARE, COUNT(DISTINCT [DATABASA MI111 ].ID_MASH) AS NR
FROM	[DATABASA MI111 ], NOTA
WHERE	[DATABASA MI111 ].ID_MASH = NOTA.ID_MASH
AND		NOTA IS NOT NULL
GROUP BY LENDA
GO
CREATE VIEW [dbo].[MESATARE_STUDENT] AS
SELECT	[DATABASA MI111 ].ID_MASH, ROUND(AVG(CAST(NOTA AS FLOAT)),2) AS MESATARE
FROM	[DATABASA MI111 ], NOTA
WHERE	[DATABASA MI111 ].ID_MASH = NOTA.ID_MASH
AND		NOTA IS NOT NULL
GROUP BY [DATABASA MI111 ].ID_MASH
GO
CREATE VIEW [dbo].[DIFERENCA_DIPLOMA] AS
SELECT M.ID_MASH, MESATARE, NOTA AS DIPLOMA, NOTA - MESATARE AS DIFERENCE
FROM MESATARE_STUDENT M, NOTA N
WHERE M.ID_MASH = N.ID_MASH
AND LENDA = 'Provim. Tezë Diplome'
GO
CREATE VIEW [dbo].[KOHEZGJATJA] AS
SELECT ID_MASH, DATE_RREGJISTRIMI AS REGJSITRIM, DATA_E_DIPLOMES AS DIPLOMIM, - YEAR( DATE_RREGJISTRIMI) + YEAR( DATA_E_DIPLOMES) AS DIF
FROM [DATABASA MI111 ]
WHERE DATA_E_DIPLOMES IS NOT NULL
GO
CREATE VIEW [dbo].[PADIPLOMUAR] AS
SELECT YEAR(DATE_RREGJISTRIMI) AS REGJISTRIM, COUNT (*)AS PADIPLOMUAR  FROM [DATABASA MI111 ]
WHERE DATA_E_DIPLOMES IS NULL
GROUP BY YEAR(DATE_RREGJISTRIMI)
GO
CREATE VIEW [dbo].[DIPLOMUAR] AS
SELECT YEAR(DATE_RREGJISTRIMI) AS REGJISTRIM, COUNT (*)AS TE_DIPLOMUAR FROM [DATABASA MI111 ] 
WHERE DATA_E_DIPLOMES IS NOT NULL
GROUP BY YEAR(DATE_RREGJISTRIMI)
GO
CREATE VIEW [dbo].[MESATARE_VITE] AS
SELECT	YEAR(DATE_RREGJISTRIMI) AS REGJISTRIM, ROUND(AVG(CAST(NOTA AS FLOAT)),2) AS MESATARE
FROM	[DATABASA MI111 ], NOTA
WHERE	[DATABASA MI111 ].ID_MASH = NOTA.ID_MASH
AND		NOTA IS NOT NULL
GROUP BY YEAR(DATE_RREGJISTRIMI)
GO

-- ---------------------------------------------------------------------
-- 3) FOREIGN KEYS (34)
-- ---------------------------------------------------------------------

ALTER TABLE [dbo].[Administrata]  WITH CHECK ADD FOREIGN KEY([PERS_ID])
REFERENCES [dbo].[Personel] ([PERS_ID])
GO

ALTER TABLE [dbo].[Auditor]  WITH CHECK ADD FOREIGN KEY([SALLE_ID])
REFERENCES [dbo].[Salle] ([SALLE_ID])
GO

ALTER TABLE [dbo].[Biblioteke]  WITH CHECK ADD FOREIGN KEY([SALLE_ID])
REFERENCES [dbo].[Salle] ([SALLE_ID])
GO

ALTER TABLE [dbo].[Departament]  WITH CHECK ADD FOREIGN KEY([FK_ID])
REFERENCES [dbo].[Fakultet] ([FK_ID])
GO

ALTER TABLE [dbo].[Departament]  WITH CHECK ADD FOREIGN KEY([PD_ID])
REFERENCES [dbo].[Personel] ([PERS_ID])
GO

ALTER TABLE [dbo].[Fakultet]  WITH CHECK ADD FOREIGN KEY([NDER_ID])
REFERENCES [dbo].[Ndertese] ([NDER_ID])
GO

ALTER TABLE [dbo].[Fakultet]  WITH CHECK ADD FOREIGN KEY([PD_ID])
REFERENCES [dbo].[Personel] ([PERS_ID])
GO

ALTER TABLE [dbo].[Komision]  WITH CHECK ADD FOREIGN KEY([PD_ID])
REFERENCES [dbo].[Pedagog] ([PD_ID])
GO

ALTER TABLE [dbo].[Komision]  WITH CHECK ADD FOREIGN KEY([SEK_ID])
REFERENCES [dbo].[Seksion] ([SEK_ID])
GO

ALTER TABLE [dbo].[Kurrikula]  WITH CHECK ADD FOREIGN KEY([PROG_ID])
REFERENCES [dbo].[ProgramStudimi] ([PROG_ID])
GO

ALTER TABLE [dbo].[KurrikulaKurs]  WITH CHECK ADD FOREIGN KEY([KURR_ID])
REFERENCES [dbo].[Kurrikula] ([KURR_ID])
GO

ALTER TABLE [dbo].[KurrikulaKurs]  WITH CHECK ADD FOREIGN KEY([KURS_ID])
REFERENCES [dbo].[Kurs] ([KURS_ID])
GO

ALTER TABLE [dbo].[KurrikulaKurs]  WITH CHECK ADD FOREIGN KEY([KURS_PARAKERKUAR_ID])
REFERENCES [dbo].[Kurs] ([KURS_ID])
GO

ALTER TABLE [dbo].[Kurs]  WITH CHECK ADD FOREIGN KEY([DEP_ID])
REFERENCES [dbo].[Departament] ([DEP_ID])
GO

ALTER TABLE [dbo].[Kurs]  WITH CHECK ADD FOREIGN KEY([PD_ID])
REFERENCES [dbo].[Pedagog] ([PD_ID])
GO

ALTER TABLE [dbo].[Pedagog]  WITH CHECK ADD FOREIGN KEY([DEP_ID])
REFERENCES [dbo].[Departament] ([DEP_ID])
GO

ALTER TABLE [dbo].[Pedagog]  WITH CHECK ADD FOREIGN KEY([PD_ID])
REFERENCES [dbo].[Personel] ([PERS_ID])
GO

ALTER TABLE [dbo].[Pedagog]  WITH CHECK ADD FOREIGN KEY([SALLE_ID])
REFERENCES [dbo].[Zyre] ([SALLE_ID])
GO

ALTER TABLE [dbo].[PERSONEL_DIPLOMA]  WITH CHECK ADD FOREIGN KEY([PERS_ID])
REFERENCES [dbo].[Personel] ([PERS_ID])
GO

ALTER TABLE [dbo].[ProgramStudimi]  WITH CHECK ADD FOREIGN KEY([DEP_ID])
REFERENCES [dbo].[Departament] ([DEP_ID])
GO

ALTER TABLE [dbo].[Regjistrimi]  WITH CHECK ADD FOREIGN KEY([SEK_ID])
REFERENCES [dbo].[Seksion] ([SEK_ID])
GO

ALTER TABLE [dbo].[Regjistrimi]  WITH CHECK ADD FOREIGN KEY([STUD_ID])
REFERENCES [dbo].[Student] ([STUD_ID])
GO

ALTER TABLE [dbo].[Salle]  WITH CHECK ADD FOREIGN KEY([NDER_ID])
REFERENCES [dbo].[Ndertese] ([NDER_ID])
GO

ALTER TABLE [dbo].[Seksion]  WITH CHECK ADD FOREIGN KEY([KURS_ID])
REFERENCES [dbo].[Kurs] ([KURS_ID])
GO

ALTER TABLE [dbo].[Seksion]  WITH CHECK ADD FOREIGN KEY([PD_ID])
REFERENCES [dbo].[Pedagog] ([PD_ID])
GO

ALTER TABLE [dbo].[Seksion]  WITH CHECK ADD FOREIGN KEY([SALLE_ID])
REFERENCES [dbo].[Salle] ([SALLE_ID])
GO

ALTER TABLE [dbo].[Seksion]  WITH CHECK ADD FOREIGN KEY([SEM_ID])
REFERENCES [dbo].[Semestri] ([SEM_ID])
GO

ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([KURR_ID])
REFERENCES [dbo].[Kurrikula] ([KURR_ID])
GO

ALTER TABLE [dbo].[STUDENT_DIPLOMUAR]  WITH CHECK ADD FOREIGN KEY([KURS_ID])
REFERENCES [dbo].[Kurs] ([KURS_ID])
GO

ALTER TABLE [dbo].[STUDENT_DIPLOMUAR]  WITH CHECK ADD FOREIGN KEY([STUD_ID])
REFERENCES [dbo].[Student] ([STUD_ID])
GO

ALTER TABLE [dbo].[Student_Transferuar]  WITH CHECK ADD FOREIGN KEY([STUD_ID])
REFERENCES [dbo].[Student] ([STUD_ID])
GO

ALTER TABLE [dbo].[Vleresim]  WITH CHECK ADD FOREIGN KEY([STUD_ID], [SEK_ID])
REFERENCES [dbo].[Regjistrimi] ([STUD_ID], [SEK_ID])
GO

ALTER TABLE [dbo].[VleresimFrekuentim]  WITH CHECK ADD FOREIGN KEY([STUD_ID], [SEK_ID])
REFERENCES [dbo].[Vleresim] ([STUD_ID], [SEK_ID])
GO

ALTER TABLE [dbo].[Zyre]  WITH CHECK ADD FOREIGN KEY([SALLE_ID])
REFERENCES [dbo].[Salle] ([SALLE_ID])
GO

-- ---------------------------------------------------------------------
-- 4) CHECK CONSTRAINTS (23)
-- ---------------------------------------------------------------------

ALTER TABLE [dbo].[Auditor]  WITH CHECK ADD CHECK  (([salle_kp]>=(15) AND [salle_kp]<=(40)))
GO

ALTER TABLE [dbo].[Auditor]  WITH CHECK ADD CHECK  (([salle_tip]='Jo Laborator' OR [salle_tip]='Laborator'))
GO

ALTER TABLE [dbo].[Departament]  WITH CHECK ADD CHECK  (([DEP_ID]='DM' OR [DEP_ID]='DTI' OR [DEP_ID]='DSHK'))
GO

ALTER TABLE [dbo].[Fakultet]  WITH CHECK ADD CHECK  (([FK_EMAIL] like '%_@uamd.edu.al'))
GO

ALTER TABLE [dbo].[Fakultet]  WITH CHECK ADD CHECK  (([FK_ID]='FSHPJ' OR [FK_ID]='FE' OR [FK_ID]='FB' OR [FK_ID]='FSP' OR [FK_ID]='FTI'))
GO

ALTER TABLE [dbo].[Fakultet]  WITH CHECK ADD CHECK  (([FK_TEL] like '06[7-9][2-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO

ALTER TABLE [dbo].[Kurrikula]  WITH CHECK ADD CHECK  (([kurr_kred_us]=(4)))
GO

ALTER TABLE [dbo].[Kurrikula]  WITH CHECK ADD CHECK  (([kurr_kred_eu]=(6)))
GO

ALTER TABLE [dbo].[KurrikulaKurs]  WITH CHECK ADD CHECK  (([KURRKURS_TIPI]='Z' OR [KURRKURS_TIPI]='D'))
GO

ALTER TABLE [dbo].[KurrikulaKurs]  WITH CHECK ADD CHECK  (([SEMESTER]='II' OR [SEMESTER]='I'))
GO

ALTER TABLE [dbo].[Ndertese]  WITH CHECK ADD CHECK  (([NDER_ID]='K2' OR [NDER_ID]='K1' OR [NDER_ID]='GQ'))
GO

ALTER TABLE [dbo].[NOTA]  WITH CHECK ADD CHECK  (([NOTA]>=(4) AND [NOTA]<=(100)))
GO

ALTER TABLE [dbo].[Pedagog]  WITH CHECK ADD CHECK  (([PD_EMAIL] like '%_@uamd.edu.al'))
GO

ALTER TABLE [dbo].[Pedagog]  WITH CHECK ADD CHECK  (([PD_KATEGORI]='PROF' OR [PD_KATEGORI]='LEK' OR [PD_KATEGORI]='ASL'))
GO

ALTER TABLE [dbo].[Pedagog]  WITH CHECK ADD CHECK  (([PD_TEL] like '06[7-9][2-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO

ALTER TABLE [dbo].[Pedagog]  WITH CHECK ADD CHECK  (([PD_TITULL]='PROF_DR' OR [PD_TITULL]='PROF_ASOC' OR [PD_TITULL]='MSC' OR [PD_TITULL]='DR'))
GO

ALTER TABLE [dbo].[Salle]  WITH CHECK ADD CHECK  (([SALLE_TIPI]='Biblioteke' OR [SALLE_TIPI]='Zyre' OR [SALLE_TIPI]='Studimi'))
GO

ALTER TABLE [dbo].[Semestri]  WITH CHECK ADD CHECK  (([SEM_EM]='II' OR [SEM_EM]='I'))
GO

ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([STUD_EMAIL] like '%_@uamd.edu.al'))
GO

ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([STUD_GJINIA]='F' OR [STUD_GJINIA]='M'))
GO

ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([STUD_ID] like '[A-Z][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'))
GO

ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([STUD_STATUS]='PROGRAM I II-të' OR [STUD_STATUS]='TRANSFERIM STUDIMESH' OR [STUD_STATUS]='PROGRAM I I-rë' OR [stud_status] IS NULL))
GO

ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([STUD_TEL] like '06[7-9][2-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO

