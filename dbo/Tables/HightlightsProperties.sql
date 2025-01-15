CREATE TABLE [dbo].[HightlightsProperties]
(
	[Id] int identity primary key,
[HighlightId] int,
[Labeame] nvarchar(200) not null,
[CreatedAt] datetime,
[CreatedBy] int,
[UpdatedAt] datetime,
[UpdatedBy] int,
[DeletedAt] datetime,
[IsDeleted] bit,
foreign key (HighlightId) references Highlights(Id),
foreign key (CreatedBy) references Users(Id),
foreign key (UpdatedBy) references Users(Id)
);
Go
