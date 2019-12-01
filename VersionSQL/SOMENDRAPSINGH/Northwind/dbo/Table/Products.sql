/****** Object:  Table [dbo].[Products]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [CategoriesProducts] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [CategoryID] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [ProductName] ON [dbo].[Products]
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [SupplierID] ON [dbo].[Products]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [SuppliersProducts] ON [dbo].[Products]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsInStock]  DEFAULT ((0)) FOR [UnitsInStock]
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsOnOrder]  DEFAULT ((0)) FOR [UnitsOnOrder]
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ReorderLevel]  DEFAULT ((0)) FOR [ReorderLevel]
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Discontinued]  DEFAULT ((0)) FOR [Discontinued]
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_Products_UnitPrice] CHECK  (([UnitPrice]>=(0)))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_Products_UnitPrice]
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_ReorderLevel] CHECK  (([ReorderLevel]>=(0)))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_ReorderLevel]
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsInStock] CHECK  (([UnitsInStock]>=(0)))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsInStock]
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsOnOrder] CHECK  (([UnitsOnOrder]>=(0)))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsOnOrder]
