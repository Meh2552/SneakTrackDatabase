CREATE TABLE [dbo].[Product] (
    [product_id]   INT           IDENTITY (1, 1) NOT NULL,
    [brand_id]     INT           NOT NULL,
    [color_id]     INT           DEFAULT ((1)) NOT NULL,
    [product_name] VARCHAR (50)  NOT NULL,
    [description]  TEXT          NULL,
    [image]        VARCHAR (500) NULL,
    [archived]     BIT           DEFAULT ((0)) NOT NULL,
    [for_sale]     BIT           DEFAULT ((1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([product_id] ASC),
    CONSTRAINT [FK_Product_Brand] FOREIGN KEY ([brand_id]) REFERENCES [dbo].[Brand] ([brand_Id]),
    CONSTRAINT [FK_Variant_Color] FOREIGN KEY ([color_id]) REFERENCES [dbo].[Color] ([color_Id])
);

