CREATE TABLE [dbo].[State]
(
[StateID] [int] NOT NULL,
[StateName] [varchar] (255) COLLATE Latin1_General_CI_AI NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[State] ADD CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED  ([StateID]) ON [PRIMARY]
GO
