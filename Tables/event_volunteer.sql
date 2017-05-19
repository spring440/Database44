USE [s17guest44]
GO

/****** Object:  Table [dbo].[event_volunteer]    Script Date: 5/18/2017 9:54:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[event_volunteer](
	[event_id] [int] NOT NULL,
	[volunteer_id] [int] NOT NULL,
 CONSTRAINT [PK_event_volunteer] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC,
	[volunteer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[event_volunteer]  WITH CHECK ADD  CONSTRAINT [FK_event_volunteer_event] FOREIGN KEY([event_id])
REFERENCES [dbo].[event] ([event_id])
GO

ALTER TABLE [dbo].[event_volunteer] CHECK CONSTRAINT [FK_event_volunteer_event]
GO

ALTER TABLE [dbo].[event_volunteer]  WITH CHECK ADD  CONSTRAINT [FK_event_volunteer_person] FOREIGN KEY([volunteer_id])
REFERENCES [dbo].[person] ([person_id])
GO

ALTER TABLE [dbo].[event_volunteer] CHECK CONSTRAINT [FK_event_volunteer_person]
GO

