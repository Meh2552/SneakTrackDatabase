CREATE TABLE [dbo].[Size] (
    [size_id]    INT          IDENTITY (1, 1) NOT NULL,
    [variant_id] INT          NOT NULL,
    [size]       FLOAT (53)   DEFAULT ((1)) NOT NULL,
    [size_type]  VARCHAR (4)  DEFAULT ('US') NOT NULL,
    [quantity]   INT          DEFAULT ((0)) NOT NULL,
    [barcode]    VARCHAR (13) NULL,
    PRIMARY KEY CLUSTERED ([size_id] ASC),
    CONSTRAINT [FK_Size_Variants] FOREIGN KEY ([variant_id]) REFERENCES [dbo].[Product_Variants] ([variant_Id])
);

