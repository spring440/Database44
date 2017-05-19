USE [s17guest44]
GO

/****** Object:  Table [dbo].[class_presenter_grade]    Script Date: 5/18/2017 9:52:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[class_presenter_grade](
	[presenter_id] [int] NOT NULL,
	[student_id] [int] NOT NULL,
	[schedule_id] [int] NOT NULL,
	[grade] [int] NOT NULL,
 CONSTRAINT [PK_class_presenter_grade] PRIMARY KEY CLUSTERED 
(
	[presenter_id] ASC,
	[student_id] ASC,
	[schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[class_presenter_grade]  WITH CHECK ADD  CONSTRAINT [FK_class_presenter_grade_person] FOREIGN KEY([presenter_id])
REFERENCES [dbo].[person] ([person_id])
GO

ALTER TABLE [dbo].[class_presenter_grade] CHECK CONSTRAINT [FK_class_presenter_grade_person]
GO

ALTER TABLE [dbo].[class_presenter_grade]  WITH CHECK ADD  CONSTRAINT [FK_class_presenter_grade_person1] FOREIGN KEY([student_id])
REFERENCES [dbo].[person] ([person_id])
GO

ALTER TABLE [dbo].[class_presenter_grade] CHECK CONSTRAINT [FK_class_presenter_grade_person1]
GO

ALTER TABLE [dbo].[class_presenter_grade]  WITH CHECK ADD  CONSTRAINT [FK_class_presenter_grade_schedule] FOREIGN KEY([schedule_id])
REFERENCES [dbo].[schedule] ([schedule_id])
GO

ALTER TABLE [dbo].[class_presenter_grade] CHECK CONSTRAINT [FK_class_presenter_grade_schedule]
GO

