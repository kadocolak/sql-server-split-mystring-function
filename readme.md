# SQL Server manuel split function

If your SQL Server database version is 2016 and above, a ready-made STRING_SPLIT function will come automatically. But if you have a SQL Server database under it, including 2014, you will never have this ready-made function.

## Manuel string split function create

Create a table value function. As a parameter, the main string *@s* variable and the searched variable *@d* to be made on the basis of fragmentation were created.

## Saving the function

Save the sql_server_split_function.sql file in the opened SQL Server database by pressing the F5 key once. From now on you will be able to use the function called dbo.SplitMyStrings from anywhere.

## Using and calling the function

**_select * from dbo.SplitMyStrings('example:value:data',':')_**

Splits the text according to each : character in the example:value:data variable. The result will be a table with 3 rows.
