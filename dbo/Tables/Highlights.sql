CREATE TABLE [dbo].[Highlights]
(
	[Id] int identity(1,1) primary key,
[Type] nvarchar(100),
[Heading] nvarchar(200),
[Description] nvarchar(max),
[ButtonLabel] nvarchar(100),
[IconName] varchar(100),
[CreatedAt] datetime,
[CreatedBy] int,
[UpdatedAt] datetime,
[UpdatedBy] int,
[DeletedAt] datetime,
[IsDeleted] bit,
foreign key (CreatedBy) references Users(Id),
foreign key (UpdatedBy) references Users(Id)
);
Go
