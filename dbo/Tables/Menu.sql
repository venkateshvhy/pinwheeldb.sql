CREATE TABLE [dbo].[Menu]
(
	[Id] int IDENTITY(1,1) primary key,
[ParentId] int,
[Name] nvarchar(50) not null,
[Type] nvarchar(30) not null,
[IsHeader] bit,
[IsFooter] bit,
[HeaderOrder] int,
[FooterOrder] int,
[CreatedAt] datetime,
[CreatedBy] int,
[UpdatedAt] datetime,
[UpdatedBy] int,
[DeletedAt] datetime,
[IsDeleted] bit,
foreign key (ParentId) references Menu(Id),
foreign key (CreatedBy) references Users(Id),
foreign key (UpdatedBy) references Users(Id)
);
Go
