/****** Object:  Table [dbo].[CustomerCustomerDemo]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[CustomerCustomerDemo](
	[CustomerID] [nchar](5) NOT NULL,
	[CustomerTypeID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_CustomerCustomerDemo] PRIMARY KEY NONCLUSTERED 
(
	[CustomerID] ASC,
	[CustomerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[CustomerCustomerDemo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY([CustomerTypeID])
REFERENCES [dbo].[CustomerDemographics] ([CustomerTypeID])
ALTER TABLE [dbo].[CustomerCustomerDemo] CHECK CONSTRAINT [FK_CustomerCustomerDemo]
ALTER TABLE [dbo].[CustomerCustomerDemo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCustomerDemo_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
ALTER TABLE [dbo].[CustomerCustomerDemo] CHECK CONSTRAINT [FK_CustomerCustomerDemo_Customers]
