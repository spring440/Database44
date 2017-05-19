USE [s17guest44]
GO

/****** Object:  Table [dbo].[event_organizer]    Script Date: 5/18/2017 9:53:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[event_organizer](
	[event_id] [int] NOT NULL,
	[organizer_id] [int] NOT NULL,
 CONSTRAINT [PK_event_organizer] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC,
	[organizer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[event_organizer]  WITH CHECK ADD  CONSTRAINT [FK_event_organizer_event] FOREIGN KEY([event_id])
REFERENCES [dbo].[event] ([event_id])
GO

ALTER TABLE [dbo].[event_organizer] CHECK CONSTRAINT [FK_event_organizer_event]
GO

ALTER TABLE [dbo].[event_organizer]  WITH CHECK ADD  CONSTRAINT [FK_event_organizer_person] FOREIGN KEY([organizer_id])
REFERENCES [dbo].[person] ([person_id])
GO

ALTER TABLE [dbo].[event_organizer] CHECK CONSTRAINT [FK_event_organizer_person]
GO

