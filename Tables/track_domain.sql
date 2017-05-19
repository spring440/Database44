USE [s17guest44]
GO

/****** Object:  Table [dbo].[track_domain]    Script Date: 5/18/2017 9:55:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[track_domain](
	[track_domain_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NOT NULL,
 CONSTRAINT [PK_track_domain] PRIMARY KEY CLUSTERED 
(
	[track_domain_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

