/****** Object:  Table [dbo].[Order Details]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Order Details](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [OrderID] ON [dbo].[Order Details]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [OrdersOrder_Details] ON [dbo].[Order Details]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [ProductID] ON [dbo].[Order Details]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [ProductsOrder_Details] ON [dbo].[Order Details]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_Discount]  DEFAULT ((0)) FOR [Discount]
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order_Details_Orders]
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order_Details_Products]
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [CK_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(1)))
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_Discount]
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [CK_Quantity] CHECK  (([Quantity]>(0)))
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_Quantity]
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitPrice] CHECK  (([UnitPrice]>=(0)))
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_UnitPrice]
