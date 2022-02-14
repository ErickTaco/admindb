/*Crecion de vista del mejor cliente por mes y anio*/

 create view clientes_ordes_total
 as
 (
select 
Sales.OrderLines.OrderID,
CustomerID,
month (Sales.OrderLines.LastEditedWhen) as mes ,
YEAR (Sales.OrderLines.LastEditedWhen) as anio,
sum(total) as total

from Sales.OrderLines
join 
Sales.Orders on Sales.Orders.OrderID=Sales.OrderLines.OrderID

group by Sales.OrderLines.OrderID,CustomerID,Sales.OrderLines.LastEditedWhen

)



 create view Cantidad_mas_alta
 as
 (
select 
MAX(total) as total,
mes,
anio

from clientes_ordes_total
group by mes,
anio


)


select clientes_ordes_total.OrderID,
clientes_ordes_total.CustomerID,
Cantidad_mas_alta.total,
Cantidad_mas_alta.mes,
Cantidad_mas_alta.anio
from  clientes_ordes_total

join Cantidad_mas_alta on Cantidad_mas_alta.total=clientes_ordes_total.total


order by anio,mes


create view CLinetes_total_anioymes
as
(
select clientes_ordes_total.OrderID,
clientes_ordes_total.CustomerID,
Cantidad_mas_alta.total,
Cantidad_mas_alta.mes,
Cantidad_mas_alta.anio
from  clientes_ordes_total

join Cantidad_mas_alta on Cantidad_mas_alta.total=clientes_ordes_total.total
)



create view CLinetesNombres_total_anioymes
as
(
select CLinetes_total_anioymes.OrderID,
CLinetes_total_anioymes.CustomerID,
sales.Customers.CustomerName,
CLinetes_total_anioymes.total,
CLinetes_total_anioymes.mes,
CLinetes_total_anioymes.anio
from
CLinetes_total_anioymes
join  sales.Customers on CLinetes_total_anioymes.CustomerID=sales.Customers.CustomerID)



select * from CLinetesNombres_total_anioymes
order by anio,mes




