CREATE FUNCTION dbo.SplitMyStrings
(
  @s nvarchar(500), @d nvarchar(10)
)
RETURNS TABLE
WITH SCHEMABINDING
AS
  RETURN (
      SELECT Item = x.i.value(N'./text()[1]', N'nvarchar(max)') 
      FROM  ( SELECT [XML] = CONVERT(XML, '<i>' + REPLACE(@s, @d, '</i><i>') 
              + '</i>').query('.') ) AS a CROSS APPLY [XML].nodes('i') AS x(i)
   );