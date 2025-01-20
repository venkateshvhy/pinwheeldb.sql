CREATE TABLE [dbo].[CustomerReviews]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
[Name] NVARCHAR(50) NULL,
[Company] NVARCHAR(50) NULL,
[Review] NVARCHAR(max) NULL,
[Rating] INT NULL,
[CreatedAt] DATETIME NULL,
[CreatedBy] INT NULL,
[UpdatedAt] DATETIME NULL,
[UpdatedBy] INT NULL,
[DeletedAt] DATETIME NULL,
[IsDeleted] BIT NULL,
CONSTRAINT [FK_CustomerReviews_CreatedBy] FOREIGN KEY([CreatedBy]) REFERENCES [Users]([Id]),
CONSTRAINT [FK_CustomerReviews_UpdatedBy] FOREIGN KEY([UpdatedBy]) REFERENCES [Users]([Id]),
);
Go
