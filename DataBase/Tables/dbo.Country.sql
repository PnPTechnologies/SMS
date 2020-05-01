CREATE TABLE [dbo].[Country]
(
[CountryCode] [int] NOT NULL,
[CountryName] [varchar] (255) COLLATE Latin1_General_CI_AI NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Country] ADD CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED  ([CountryCode]) ON [PRIMARY]
GO
