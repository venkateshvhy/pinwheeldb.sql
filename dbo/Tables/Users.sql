CREATE TABLE [dbo].[Users]
(
	[Id] int IDENTITY(1,1) primary key,
[Name] nvarchar(50) not null,
[Email] nvarchar(128) not null,
[PhoneNumber] nvarchar(15) not null,
[CreatedAt] datetime,
[CreatedBy] int,
[UpdatedAt] datetime,
[UpdatedBy] int,
[DeletedAt] datetime,
[IsDeleted] bit,
);
Go
