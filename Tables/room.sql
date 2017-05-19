USE [s17guest44]
GO

/****** Object:  Table [dbo].[room]    Script Date: 5/18/2017 9:54:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[room](
	[room_id] [int] IDENTITY(1,1) NOT NULL,
	[location_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[capacity] [int] NOT NULL,
 CONSTRAINT [PK_room] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[room]  WITH CHECK ADD  CONSTRAINT [FK_room_event_location] FOREIGN KEY([location_id])
REFERENCES [dbo].[event_location] ([location_id])
GO

ALTER TABLE [dbo].[room] CHECK CONSTRAINT [FK_room_event_location]
GO

