USE [s17guest44]
GO

/****** Object:  Table [dbo].[event_location]    Script Date: 5/18/2017 9:53:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[event_location](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[city] [varchar](100) NOT NULL,
	[reigon_id] [int] NOT NULL,
 CONSTRAINT [PK_event_location] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[event_location]  WITH CHECK ADD  CONSTRAINT [FK_event_location_event_reigon] FOREIGN KEY([reigon_id])
REFERENCES [dbo].[event_reigon] ([reigon_id])
GO

ALTER TABLE [dbo].[event_location] CHECK CONSTRAINT [FK_event_location_event_reigon]
GO

