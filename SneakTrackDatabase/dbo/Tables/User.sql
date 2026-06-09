CREATE TABLE [dbo].[User] (
    [user_id]      INT          IDENTITY (1, 1) NOT NULL,
    [name]         VARCHAR (60) DEFAULT ('User') NULL,
    [username]     VARCHAR (20) NOT NULL,
    [password]     VARCHAR (20) NOT NULL,
    [role]         CHAR (5)     DEFAULT ('STAFF') NOT NULL,
    [date_created] DATE         DEFAULT (getdate()) NOT NULL,
    [archived]     BIT          DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([user_id] ASC),
    CONSTRAINT [Check_Role] CHECK ([role]='STAFF' OR [role]='ADMIN'),
    UNIQUE NONCLUSTERED ([username] ASC)
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Checks if owner or staff', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'CONSTRAINT', @level2name = N'Check_Role';

