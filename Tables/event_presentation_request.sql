USE [s17guest44]
GO

/****** Object:  Table [dbo].[event_presentation_request]    Script Date: 5/18/2017 9:53:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[event_presentation_request](
	[event_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
 CONSTRAINT [PK_event_presentation_request] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC,
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[event_presentation_request]  WITH CHECK ADD  CONSTRAINT [FK_event_presentation_request_class] FOREIGN KEY([class_id])
REFERENCES [dbo].[class] ([class_id])
GO

ALTER TABLE [dbo].[event_presentation_request] CHECK CONSTRAINT [FK_event_presentation_request_class]
GO

ALTER TABLE [dbo].[event_presentation_request]  WITH CHECK ADD  CONSTRAINT [FK_event_presentation_request_event] FOREIGN KEY([event_id])
REFERENCES [dbo].[event] ([event_id])
GO

ALTER TABLE [dbo].[event_presentation_request] CHECK CONSTRAINT [FK_event_presentation_request_event]
GO

