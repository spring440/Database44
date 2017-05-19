USE [s17guest44]
GO

/****** Object:  Table [dbo].[schedule_student]    Script Date: 5/18/2017 9:55:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[schedule_student](
	[schedule_id] [int] NOT NULL,
	[student_id] [int] NOT NULL,
 CONSTRAINT [PK_class_student] PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC,
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[schedule_student]  WITH CHECK ADD  CONSTRAINT [FK_schedule_student_person] FOREIGN KEY([student_id])
REFERENCES [dbo].[person] ([person_id])
GO

ALTER TABLE [dbo].[schedule_student] CHECK CONSTRAINT [FK_schedule_student_person]
GO

ALTER TABLE [dbo].[schedule_student]  WITH CHECK ADD  CONSTRAINT [FK_schedule_student_schedule] FOREIGN KEY([schedule_id])
REFERENCES [dbo].[schedule] ([schedule_id])
GO

ALTER TABLE [dbo].[schedule_student] CHECK CONSTRAINT [FK_schedule_student_schedule]
GO

