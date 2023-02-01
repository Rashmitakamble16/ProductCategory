select top (1000) [ProductId]
			,[ProductName]
			,[CategoryId]
			,[CategoryName]
		from [ProductsData].[dbo].[Products]
use ProductsData;
create table Products(ProductId int, ProductName varchar(255), CategoryId int, CategoryName varchar(255));