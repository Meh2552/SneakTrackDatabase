CREATE TABLE [dbo].[Product_Variants] (
    [variant_Id] INT            IDENTITY (1, 1) NOT NULL,
    [product_id] INT            NOT NULL,
    [gender]     CHAR (1)       DEFAULT ('U') NOT NULL,
    [price]      DECIMAL (8, 2) DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([variant_Id] ASC),
    CONSTRAINT [CK_Variants_Gender] CHECK ([gender]='U' OR [gender]='F' OR [gender]='M'),
    CONSTRAINT [FK_Product_Variants] FOREIGN KEY ([product_id]) REFERENCES [dbo].[Product] ([product_id])
);

