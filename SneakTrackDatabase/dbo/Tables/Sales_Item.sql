CREATE TABLE [dbo].[Sales_Item] (
    [sales_item_id] INT            IDENTITY (1, 1) NOT NULL,
    [sale_id]       INT            NOT NULL,
    [product_id]    INT            NOT NULL,
    [size]          FLOAT (53)     NOT NULL,
    [size_type]     VARCHAR (4)    NOT NULL,
    [quantity]      INT            DEFAULT ((0)) NOT NULL,
    [price]         DECIMAL (8, 2) DEFAULT ((0)) NOT NULL,
    [gender]        CHAR (1)       NOT NULL,
    PRIMARY KEY CLUSTERED ([sales_item_id] ASC),
    CONSTRAINT [FK_Sales_Item_Product] FOREIGN KEY ([product_id]) REFERENCES [dbo].[Product] ([product_id]),
    CONSTRAINT [FK_Sales_Item_Sale] FOREIGN KEY ([sale_id]) REFERENCES [dbo].[Sales] ([sale_id])
);

