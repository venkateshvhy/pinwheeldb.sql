CREATE TABLE [dbo].[HightlightsProperties]
(
	[Id] INT identity PRIMARY KEY NOT NULL,
[HighlightId] INT NULL,
[LabelName] NVARCHAR(200) NOT NULL,
[CreatedAt] DATETIME,
[CreatedBy] INT NULL,
[UpdatedAt] DATETIME NULL,
[UpdatedBy] INT NULL,
[DeletedAt] DATETIME NULL,
[IsDeleted] BIT NULL,
CONSTRAINT [FK_HightlightsProperties_HighlightId] FOREIGN KEY([HighlightId]) REFERENCES [Highlights]([Id]),
CONSTRAINT [FK_HightlightsProperties_CreatedBy] FOREIGN KEY([CreatedBy]) REFERENCES [Users]([Id]),
CONSTRAINT [FK_HightlightsProperties_UpdatedBy] FOREIGN KEY([UpdatedBy]) REFERENCES [Users]([Id]),
);
Go
