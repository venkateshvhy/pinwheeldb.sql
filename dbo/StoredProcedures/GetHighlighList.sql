CREATE PROCEDURE [dbo].[GetHightlightList]
	@Type NVARCHAR(100)
	As
	BEGIN
	Set NoCount On
	SELECT 
    h.Id AS HighlightId,
    h.Heading,
    h.Description,
    h.ButtonLabel,
    h.IconName,
    CASE 
        WHEN h.Type IN ('payments', 'prevent') THEN (
            SELECT 
                hp.Label 
            FROM 
                HightlightsProperties hp 
            WHERE 
                hp.HighlightId = h.Id
            FOR JSON PATH
        )
        ELSE NULL
    END AS Properties
	FROM 
    Highlights h
	WHERE 
    h.Type = @Type;
END;