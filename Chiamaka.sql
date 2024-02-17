-- Question 1
select CompanyName
from customers
where customerID = '1';

-- 2
select Employees.FirstName, Employees.Lastname
from orders
join Employees
ON orders. EmployeeID = employees. EmployeeID
where orderID = 10248;

-- 3
select count(*)
from products
where CategoryID = 1;

-- 4
select SUM(unitprice * quantity) AS totalprice
from orderdetails
where orderID = 10248;

-- 5
select companyName
from customers
where customerID = ' ALFKI';

-- 6
select count(*) AS Totalorders
from orders
where CustomerID = ' ALFKI';

-- 7
select suppliers.CompanyName
from products
join suppliers 
ON products.SupplierID = suppliers.SupplierID
where ProductID = 1;

-- 8
select Firstname, Lastname
from employees
where EmployeeID = 5;

-- 9
select count(*)
AS Totalcustomers
from customers;

-- 10
select count(*)
AS Totalemployees
from employees;

-- 11
 select count(*)
 AS Totalorders
 from orders;
 
 -- 12
 select count(*)
 AS Totalproducts
 from products;
 
 -- 13
 select count(*)
 AS categories
 from categories;
 
 -- 14
 select count(*)
 AS suppliers
 from suppliers;
 
 -- 15
 select count(*)
 AS shippers
 from shippers;
 
 -- 16
 select count(*)
 AS territorries
 from territories;
 
 -- 17
 select count(*) AS region
 from region;
 
 -- 18
 -- omo e dey choke oo;
 
 -- 19
 select CompanyName, shipperID
 from shippers
 where ShipperID = 2;

-- 20
select phone
from customers
where CustomerID = 'ANATR';

-- 21
select city, CustomerID
from customers
where CustomerID = 'ANATR';

-- 22
select postalcode
from customers
where customerID = 'ANATR';

-- 23
select ContactName
from customers
where CustomerID = 'ANATR';

-- 24
select productName
from products
where ProductID = 1;

-- 25
select unitPrice
from products
where ProductID = 1;

-- 26

select UnitsInStock
from products
where ProductID = 1;

-- 27
select categoryName
from categories
where CategoryID = 1;

-- 28
select CompanyName
from suppliers
where SupplierID = 1;

-- 29
select companyName
from shippers
where ShipperID = 1;

-- 30
select regionDescription
from region
where RegionID = 1;

-- 31
select territoryDescription, TerritoryID
from territories
where TerritoryID = 1;
-- there is no value of territoryID which is = 1 so the answer is null

-- 32
select count(*)
AS Totalorders
from orders
where year(orderDate) = 1997;

-- 33
select productName
from products
where Discontinued = 1;

-- 34
select productID, sum(Quantity) 
AS TotalOrderQuantity
from orderdetails
group by productID;

-- 35
select CustomerID, count(*)
AS Totalorders
from orders
group by CustomerID
order by TotalOrders DESC
LIMIT 1;

-- 36
select orders.CustomerID, sum(orderdetails.Unitprice * Orderdetails.Quantity)
AS TotalAmountspent
from orders
join orderdetails ON orders.OrderID =orderdetails.orderID
where year(orders.orderDate) = 1998
group by orders.CustomerID;

-- 37
select distinct employees.EmployeeID
from employees
join orders ON employees.EmployeeID = orders.EmployeeID
join customers ON orders.CustomerID = customers.CustomerID
where customers.Country = 'france';

-- 38
select shipCity, avg(freight)
AS AveragefreightCost
from orders
where year(OrderDate) = 1996
And ShipCountry = 'USA' 
Group by ShipCity;

-- 39
select companyNAME
From customers
where Country = 'USA';

-- 40
Select count(*)
from orders
join customers ON orders.CustomerID = customers.CustomerID
where customers.Country = 'Germany';

-- 41
-- hmm lips sealed 

-- 42
select avg(Unitprice)
AS AveragePrice
from products;

-- 43
select distinct employees.FirstName,employees.LastName
from employees
join orders ON employees.EmployeeID = orders.EmployeeID
join customers ON orders.CustomerID = customers.CustomerID
where customers.Country ='germany';

-- 44
select count(*)
AS TotalOrders
from orders
where year(orderDate) = 1998;

-- 45
select sum(unitPrice) AS TotalRevenue
from products
where unitprice =20 and unitprice > 4;

-- 46
select productID, min(quantity) AS minQuantity
from orderdetails
group by productID;

-- 47
Select productID, avg(quantity) AS AvgQuantity
from orderdetails
group by productID;

-- 48
select distinct customerID
from orders
where year(orderDate) = 1997;

-- 49
select sum(freight) AS Totalfreight
from orders
where ShipCountry = 'USA';

-- 50
select employees.EmployeeID, count(*) AS TotalOrders
from orders
join employees ON orders.EmployeeID = employees.EmployeeID
where year(orderDate) = 1997
group by employees.EmployeeID
order by TotalOrders DESC
limit 20;

-- 51
select distinct employeeID, sum(freight)
from orders
where OrderDate ='1997-01-01' or '1997-02-01' or '1997-03-01'
group by EmployeeID;

-- 52
select productName
from products
where UnitsInStock = 0;

-- 53
select shipcountry, sum(freight) AS totalfreightrevenue
from orders
where year(orderDate) = 1998
group by ShipCountry;

-- 54
select productID, avg(Quantity) AS avgQuantity
from orderdetails
group by ProductID
having count(*) > 10;

-- 55
select customers.CustomerID, customers.CompanyName,
sum(orders.freight) AS totalfreightcost
from orders
join customers ON orders.CustomerID =customers.CustomerID
where year(orders.orderDate) = 1997
And customers.Country = 'france'
group by customers.CustomerID, customers.CompanyName;

-- 56
select productName, QuantityperUnit
from products;

-- 57
select productID, productName
from products;

-- 58
select productID, productName
from products
where Discontinued = 1;

-- 59
select productName, Unitprice
from products
where UnitPrice = (select max(unitprice) from products)
or unitprice = (select min(UnitPrice) from products);

-- 60
select productID, productName, unitprice
from products
where unitprice < 20;

-- 61
select productID, productName,unitprice
from products
where UnitPrice between 15 and 25;

-- 62
-- not for the mark but to help myself to no if am improving and my money not wasting 

-- 63
select productName, unitprice
from products
where UnitPrice > (select avg(UnitPrice) from products);

-- 64
select productName, unitprice
from products
order by UnitPrice desc
limit 10;

-- 65
select discontinued, count(*) AS Totalproducts
from products
group by Discontinued;

-- 66
select territoryDescription,TerritoryID
from territories
where TerritoryID = 4; 
-- there is no values of territoryID which is = 4 so the answer is null.

-- 67
select count(*) AS Totalorders
from orders
where year(orderDate) = 1998;

-- 68
select productName
from products
where Discontinued = 0;

-- 69
select od.productID, p.productName, sum(od.Quantity) AS totalquantity,
sum(od.quantity * od.unitprice) AS totalrevenue
from orderdetails od
join products p ON od.ProductID = p.ProductID
where p.UnitPrice < 10
group by od.ProductID, p.ProductName;

-- 70
select customerID, count(*) AS totalorders
from orders
group by CustomerID
order by Totalorders desc
limit 5;

-- 71
select orders.CustomerID, sum(orderdetails.UnitPrice * orderdetails.Quantity) AS totalamountspent
from orders
join orderdetails ON orders.OrderID = orderdetails.OrderID
where year(orders.orderDate) = 1997
and orders.EmployeeID = 3
group by orders.CustomerID;

-- 72
select distinct employees.EmployeeID
from employees
join orders ON employees.EmployeeID = orders.EmployeeID
join customers ON orders.CustomerID = customers.CustomerID
where customers.Country = 'france';

-- 73
select shipcity, avg(freight) AS averagefreightcost
from orders
where year(orderDate) = 1997
and month(orderDate) = 12
and ShipCountry = 'Canada'
group by ShipCity;

-- 74
select productID, max(quantity) AS maxquantity
from orderdetails
group by ProductID;

-- 75
select productID, avg(unitprice * quantity) AS averagerevenue
from orderdetails
group by ProductID
having count(*) < 10;

-- 76
select distinct customerID
from orders
where year(orderDate) = 1997
and month(orderDate) between 1 and 3;

-- 77
select sum(freight)  AS Totalfreight
from orders
where ShipCountry = 'USA'
and EmployeeID = 4;

-- 78
select employeeID, count(*) AS Totalorders
from orders
where year(orderDate) = 1997
group by EmployeeID
order by totalorders desc
limit 6;

-- 79
select employeeID, count(*) AS lateorders
from orders
where year(orderDate) =1997
and ShippedDate > RequiredDate
group by EmployeeID;

-- 80
select 
'Determination' AS trait,
'unstoppable' AS status
'Tech break-in' AS goal.
from 
motivation
where 
attitude = 'whatever it takes'
and vision ='code, conquer'
and dream = 'select * from success';






