CREATE PROCEDURE [dbo].[GetHightlightProperties]
@HighlightId INT
AS
BEGIN
Set NoCount On
select * from HightlightsProperties hp
where hp.HighlightId = @HighlightId;
END