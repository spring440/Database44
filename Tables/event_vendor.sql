USE [s17guest44]
GO

/****** Object:  Table [dbo].[event_vendor]    Script Date: 5/18/2017 9:54:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[event_vendor](
	[event_id] [int] NOT NULL,
	[vendor_id] [int] NOT NULL,
 CONSTRAINT [PK_event_vendor] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC,
	[vendor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[event_vendor]  WITH CHECK ADD  CONSTRAINT [FK_event_vendor_event] FOREIGN KEY([event_id])
REFERENCES [dbo].[event] ([event_id])
GO

ALTER TABLE [dbo].[event_vendor] CHECK CONSTRAINT [FK_event_vendor_event]
GO

ALTER TABLE [dbo].[event_vendor]  WITH CHECK ADD  CONSTRAINT [FK_event_vendor_person] FOREIGN KEY([vendor_id])
REFERENCES [dbo].[person] ([person_id])
GO

ALTER TABLE [dbo].[event_vendor] CHECK CONSTRAINT [FK_event_vendor_person]
GO

