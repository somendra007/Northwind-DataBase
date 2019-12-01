/****** Object:  Table [dbo].[CustomerDemographics]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[CustomerDemographics](
	[CustomerTypeID] [nchar](10) NOT NULL,
	[CustomerDesc] [ntext] NULL,
 CONSTRAINT [PK_CustomerDemographics] PRIMARY KEY NONCLUSTERED 
(
	[CustomerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

