CREATE PROCEDURE [dbo].[ListMenus]
	As
	BEGIN
	Set NoCount On
	select * from Menu m
	where m.Type = 'header';
	END;
