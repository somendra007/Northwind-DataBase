/****** Object:  Table [dbo].[Territories]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Territories](
	[TerritoryID] [nvarchar](20) NOT NULL,
	[TerritoryDescription] [nchar](50) NOT NULL,
	[RegionID] [int] NOT NULL,
 CONSTRAINT [PK_Territories] PRIMARY KEY NONCLUSTERED 
(
	[TerritoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Territories]  WITH CHECK ADD  CONSTRAINT [FK_Territories_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Region] ([RegionID])
ALTER TABLE [dbo].[Territories] CHECK CONSTRAINT [FK_Territories_Region]
