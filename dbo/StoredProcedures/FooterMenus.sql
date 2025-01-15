CREATE PROCEDURE [dbo].[FooterMenus]
AS
BEGIN
Set NoCount On
select * from Menu m
where m.IsFooter = 1
order by m.FooterOrder asc
END;