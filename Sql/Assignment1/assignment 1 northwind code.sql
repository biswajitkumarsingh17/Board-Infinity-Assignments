use northwind;
show tables;
select productname,quantityperunit from products;          /*q.no:-1*/
select ProductID,productname from products where discontinued=0 ;               /*q.no:-2*/
select ProductID,productname,Discontinued from products where discontinued=1;      /*q.no:-3*/
select ProductName,UnitPrice from products order by unitprice desc;                  /*q.no:-4*/
select ProductID,ProductName,UnitPrice from products where Discontinued=0 and UnitPrice<20;     /*q.no:-5*/
select ProductID,ProductName,UnitPrice from products where UnitPrice between 15 and 25 ;         /*q.no:-6*/
select ProductName,UnitPrice from products order by UnitPrice desc limit 10;            /*q.no:-8*/
select ProductName,UnitPrice from products where (UnitPrice) > (select avg(UnitPrice) from products);     /*q.no:-7*/
select ProductName,UnitsOnOrder,UnitsInStock from products where (((Discontinued)=False) and ((UnitsInStock)<UnitsOnOrder));          /*q.no:-10*/ 
select count(ProductName) from products group by Discontinued;                                              /*q.no:-9/
select * from products;

