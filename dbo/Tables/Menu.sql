CREATE TABLE [dbo].[Menu]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
[ParentId] INT,
[Name] NVARCHAR(100) NOT NULL,
[Type] NVARCHAR(30) NOT NULL,
[IsHeader] BIT NULL,
[IsFooter] BIT NULL,
[HeaderOrder] INT NULL,
[FooterOrder] INT NULL,
[CreatedAt] DATETIME NULL,
[CreatedBy] INT NULL,
[UpdatedAt] DATETIME NULL,
[UpdatedBy] INT NULL,
[DeletedAt] DATETIME NULL,
[IsDeleted] BIT NULL,
CONSTRAINT [FK_Menu_ParentId] FOREIGN KEY([ParentId]) REFERENCES [ParentId]([Id]),
CONSTRAINT [FK_Menu_CreatedBy] FOREIGN KEY([CreatedBy]) REFERENCES [Users]([Id]),
CONSTRAINT [FK_Menu_UpdatedBy] FOREIGN KEY([UpdatedBy]) REFERENCES [Users]([Id]),
);
Go
