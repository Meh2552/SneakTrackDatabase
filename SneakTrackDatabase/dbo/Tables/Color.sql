CREATE TABLE [dbo].[Color] (
    [color_Id]   INT          IDENTITY (1, 1) NOT NULL,
    [color_name] VARCHAR (20) NOT NULL,
    PRIMARY KEY CLUSTERED ([color_Id] ASC),
    UNIQUE NONCLUSTERED ([color_name] ASC),
    UNIQUE NONCLUSTERED ([color_name] ASC)
);

