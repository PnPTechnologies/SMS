CREATE TABLE [dbo].[User]
(
[UserID] [nvarchar] (10) COLLATE Latin1_General_CI_AI NOT NULL,
[Password] [varchar] (255) COLLATE Latin1_General_CI_AI NOT NULL,
[FirstName] [varchar] (255) COLLATE Latin1_General_CI_AI NULL,
[MiddleName] [varchar] (255) COLLATE Latin1_General_CI_AI NULL,
[LastName] [varchar] (255) COLLATE Latin1_General_CI_AI NULL,
[AddressLine1] [varchar] (255) COLLATE Latin1_General_CI_AI NOT NULL,
[AddressLine2] [varchar] (255) COLLATE Latin1_General_CI_AI NULL,
[AddressLine3] [varchar] (255) COLLATE Latin1_General_CI_AI NULL,
[AddressLine4] [varchar] (255) COLLATE Latin1_General_CI_AI NULL,
[CityID] [int] NOT NULL,
[StateID] [int] NOT NULL,
[Zip] [nvarchar] (15) COLLATE Latin1_General_CI_AI NOT NULL,
[CountryCode] [int] NOT NULL,
[Phone] [varchar] (20) COLLATE Latin1_General_CI_AI NULL,
[MobileNo1] [varchar] (20) COLLATE Latin1_General_CI_AI NOT NULL,
[MobileNo2] [varchar] (20) COLLATE Latin1_General_CI_AI NULL,
[EmergencyContact] [nvarchar] (500) COLLATE Latin1_General_CI_AI NULL,
[EmergencyContactPhone] [varchar] (20) COLLATE Latin1_General_CI_AI NULL,
[DOB] [datetime] NULL,
[AnniversaryDate] [datetime] NULL,
[Status] [bit] NOT NULL,
[CreatedBy] [varchar] (25) COLLATE Latin1_General_CI_AI NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[UpdatedBy] [varchar] (25) COLLATE Latin1_General_CI_AI NULL,
[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED  ([UserID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [FK_User_City] FOREIGN KEY ([CityID]) REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [FK_User_Country] FOREIGN KEY ([CountryCode]) REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [FK_User_State] FOREIGN KEY ([StateID]) REFERENCES [dbo].[State] ([StateID])
GO
