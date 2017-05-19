USE [s17guest44]
GO

/****** Object:  Table [dbo].[event]    Script Date: 5/18/2017 9:52:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[event](
	[event_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[location_id] [int] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_event] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[event]  WITH CHECK ADD  CONSTRAINT [FK_event_event_location] FOREIGN KEY([location_id])
REFERENCES [dbo].[event_location] ([location_id])
GO

ALTER TABLE [dbo].[event] CHECK CONSTRAINT [FK_event_event_location]
GO

