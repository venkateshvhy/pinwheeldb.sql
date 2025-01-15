CREATE TABLE [dbo].[CustomerReviews]
(
	[Id] int IDENTITY(1,1) primary key,
[Name] nvarchar(50),
[Company] nvarchar(50),
[Review] nvarchar(max),
[Rating] int,
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
