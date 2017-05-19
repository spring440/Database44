USE [s17guest44]
GO

/****** Object:  Table [dbo].[class]    Script Date: 5/18/2017 9:51:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[class](
	[class_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](200) NOT NULL,
	[description] [text] NOT NULL,
	[difficulty_level] [int] NOT NULL,
	[submitted_by] [int] NOT NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[class]  WITH CHECK ADD  CONSTRAINT [FK_class_class_difficulty_level] FOREIGN KEY([difficulty_level])
REFERENCES [dbo].[class_difficulty_level] ([difficulty_id])
GO

ALTER TABLE [dbo].[class] CHECK CONSTRAINT [FK_class_class_difficulty_level]
GO

