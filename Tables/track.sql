USE [s17guest44]
GO

/****** Object:  Table [dbo].[track]    Script Date: 5/18/2017 9:55:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[track](
	[track_id] [int] IDENTITY(1,1) NOT NULL,
	[event_id] [int] NOT NULL,
	[track_domain_id] [int] NOT NULL,
	[room_id] [int] NOT NULL,
 CONSTRAINT [PK_track] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC,
	[track_domain_id] ASC,
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[track]  WITH CHECK ADD  CONSTRAINT [FK_track_event] FOREIGN KEY([event_id])
REFERENCES [dbo].[event] ([event_id])
GO

ALTER TABLE [dbo].[track] CHECK CONSTRAINT [FK_track_event]
GO

ALTER TABLE [dbo].[track]  WITH CHECK ADD  CONSTRAINT [FK_track_room] FOREIGN KEY([room_id])
REFERENCES [dbo].[room] ([room_id])
GO

ALTER TABLE [dbo].[track] CHECK CONSTRAINT [FK_track_room]
GO

ALTER TABLE [dbo].[track]  WITH CHECK ADD  CONSTRAINT [FK_track_track_domain] FOREIGN KEY([track_domain_id])
REFERENCES [dbo].[track_domain] ([track_domain_id])
GO

ALTER TABLE [dbo].[track] CHECK CONSTRAINT [FK_track_track_domain]
GO

