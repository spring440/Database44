USE [s17guest44]
GO

/****** Object:  Table [dbo].[city]    Script Date: 5/18/2017 9:51:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[city](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[country_state_id] [int] NOT NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[name] ASC,
	[country_state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[city]  WITH CHECK ADD  CONSTRAINT [FK_city_country_state] FOREIGN KEY([country_state_id])
REFERENCES [dbo].[country_state] ([country_state_id])
GO

ALTER TABLE [dbo].[city] CHECK CONSTRAINT [FK_city_country_state]
GO

