CREATE TABLE [dbo].[Brand] (
    [brand_Id]   INT          IDENTITY (1, 1) NOT NULL,
    [brand_name] VARCHAR (35) NOT NULL,
    PRIMARY KEY CLUSTERED ([brand_Id] ASC),
    UNIQUE NONCLUSTERED ([brand_name] ASC),
    UNIQUE NONCLUSTERED ([brand_name] ASC)
);

