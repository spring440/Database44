USE [s17guest44]
GO

/****** Object:  Table [dbo].[event_table]    Script Date: 5/18/2017 9:54:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[event_table](
	[table_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varbinary](50) NOT NULL,
	[event_id] [int] NOT NULL,
 CONSTRAINT [PK_event_table] PRIMARY KEY CLUSTERED 
(
	[name] ASC,
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[event_table]  WITH CHECK ADD  CONSTRAINT [FK_event_table_event] FOREIGN KEY([event_id])
REFERENCES [dbo].[event] ([event_id])
GO

ALTER TABLE [dbo].[event_table] CHECK CONSTRAINT [FK_event_table_event]
GO

