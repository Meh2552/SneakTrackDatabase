CREATE TABLE [dbo].[Sales_Item] (
    [sales_item_id] INT            IDENTITY (1, 1) NOT NULL,
    [sale_id]       INT            NOT NULL,
    [variant_id]    INT            NOT NULL,
    [quantity]      INT            DEFAULT ((0)) NOT NULL,
    [price]         DECIMAL (8, 2) DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([sales_item_id] ASC),
    CONSTRAINT [FK_Sales_Item_Sale] FOREIGN KEY ([sale_id]) REFERENCES [dbo].[Sales] ([sale_id]),
    CONSTRAINT [FK_Sales_Item_Variant] FOREIGN KEY ([variant_id]) REFERENCES [dbo].[Product_Variants] ([variant_Id])
);

