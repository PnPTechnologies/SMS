CREATE TABLE [dbo].[UserRecPassword]
(
[UserRecID] [nvarchar] (50) COLLATE Latin1_General_CI_AI NOT NULL,
[UserID] [nvarchar] (10) COLLATE Latin1_General_CI_AI NOT NULL,
[Password] [varchar] (255) COLLATE Latin1_General_CI_AI NOT NULL,
[UserRecQuestion] [varchar] (255) COLLATE Latin1_General_CI_AI NULL,
[UserRecAnswer] [varchar] (255) COLLATE Latin1_General_CI_AI NULL,
[PassRecSMSCode] [nchar] (10) COLLATE Latin1_General_CI_AI NULL,
[LastReferenceCode] [nchar] (10) COLLATE Latin1_General_CI_AI NULL,
[ReferredBy] [varchar] (255) COLLATE Latin1_General_CI_AI NULL,
[Email] [varchar] (100) COLLATE Latin1_General_CI_AI NULL,
[Mobile] [varchar] (15) COLLATE Latin1_General_CI_AI NULL,
[FirstLoginDate] [datetime] NOT NULL,
[LatestLoginDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserRecPassword] ADD CONSTRAINT [FK_UserRecPassword_User] FOREIGN KEY ([UserID]) REFERENCES [dbo].[User] ([UserID])
GO
