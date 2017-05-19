USE [s17guest44]
GO

/****** Object:  Table [dbo].[address]    Script Date: 5/18/2017 9:49:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[address](
	[address_id] [int] IDENTITY(1,1) NOT NULL,
	[street_address] [varchar](max) NOT NULL,
	[city_id] [int] NOT NULL,
	[zip_postal] [varchar](50) NOT NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_address] FOREIGN KEY([city_id])
REFERENCES [dbo].[city] ([city_id])
GO

ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_address]
GO


