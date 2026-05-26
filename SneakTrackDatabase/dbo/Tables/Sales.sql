CREATE TABLE [dbo].[Sales] (
    [sale_id] INT  IDENTITY (1, 1) NOT NULL,
    [user_id] INT  NOT NULL,
    [date]    DATE NULL,
    PRIMARY KEY CLUSTERED ([sale_id] ASC),
    CONSTRAINT [FK_User_Sale] FOREIGN KEY ([user_id]) REFERENCES [dbo].[User] ([user_id])
);

