USE [s17guest44]
GO

/****** Object:  Table [dbo].[schedule]    Script Date: 5/18/2017 9:54:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[schedule](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[track_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[start_time] [datetime] NOT NULL,
	[finish_time] [datetime] NOT NULL,
 CONSTRAINT [PK_schedule] PRIMARY KEY CLUSTERED 
(
	[class_id] ASC,
	[start_time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_schedule_class] FOREIGN KEY([class_id])
REFERENCES [dbo].[class] ([class_id])
GO

ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_schedule_class]
GO

ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_schedule_schedule] FOREIGN KEY([track_id])
REFERENCES [dbo].[track] ([track_id])
GO

ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_schedule_schedule]
GO

