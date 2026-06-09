CREATE TABLE [dbo].[Sales] (
    [sale_id]      INT             IDENTITY (1, 1) NOT NULL,
    [user_id]      INT             NOT NULL,
    [total_amount] DECIMAL (12, 2) NOT NULL,
    [date]         DATETIME        DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([sale_id] ASC),
    CONSTRAINT [FK_User_Sale] FOREIGN KEY ([user_id]) REFERENCES [dbo].[User] ([user_id])
);

