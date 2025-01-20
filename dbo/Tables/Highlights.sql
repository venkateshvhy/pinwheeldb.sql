CREATE TABLE [dbo].[Highlights]
(
	[Id] INT identity(1,1) PRIMARY KEY NOT NULL,
[Type] NVARCHAR(100) NULL,
[Heading] NVARCHAR(200) NULL,
[Description] NVARCHAR(max) NULL,
[ButtonLabel] NVARCHAR(100) NULL,
[IconName] varchar(100) NULL,
[CreatedAt] DATETIME NULL,
[CreatedBy] INT NULL,
[UpdatedAt] DATETIME NULL,
[UpdatedBy] INT NULL,
[DeletedAt] DATETIME NULL,
[IsDeleted] BIT NULL,
CONSTRAINT [FK_Highlights_CreatedBy] FOREIGN KEY([CreatedBy]) REFERENCES [Users]([Id]),
CONSTRAINT [FK_Highlights_UpdatedBy] FOREIGN KEY([UpdatedBy]) REFERENCES [Users]([Id]),
);
Go
