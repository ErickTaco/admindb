select PrimaryContactPersonID from sales.Customers
---DeliveryCityID

alter table Sales.Customers

alter column AccountOpenedDate date null



use WideWorldImportersv2

use WideWorldImportersv2


create table Inicio(
Customer_id INT IDENTITY (1, 1) PRIMARY KEY ,
customer_name varchar(250) null,
Contrasenia varchar(250) null,
city varchar(250) null
)

select CityName from Application.Cities

select customer_name from inicio

SELECT CONVERT(varchar(250), Contrasenia) FROM inicio

update Inicio SET city = (select CityName from Application.Cities
where Application.Cities.CityID
=Inicio.Customer_id)

insert into Inicio(customer_name)
select CustomerName from sales.Customers



select * from Inicio


insert into inicio (customer_name,Contrasenia,city) values()