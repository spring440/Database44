USE [s17guest44]
GO

/****** Object:  Table [dbo].[class_presenter]    Script Date: 5/18/2017 9:52:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[class_presenter](
	[class_id] [int] NOT NULL,
	[presenter_id] [int] NOT NULL,
 CONSTRAINT [PK_class_presenter] PRIMARY KEY CLUSTERED 
(
	[class_id] ASC,
	[presenter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[class_presenter]  WITH CHECK ADD  CONSTRAINT [FK_class_presenter_person] FOREIGN KEY([presenter_id])
REFERENCES [dbo].[person] ([person_id])
GO

ALTER TABLE [dbo].[class_presenter] CHECK CONSTRAINT [FK_class_presenter_person]
GO

