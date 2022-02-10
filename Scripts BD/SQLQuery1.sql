use WideWorldImportersv2




select countryID,
countryName,
cityID,
cityName
from 
Application.Countries 
join 
Application.Cities on Application.Cities.CityID=Application.Countries.City



select countryID,countryName,cityID,cityName
from Application.Countries 
left  join Application.Cities on Application.Cities.CityID=Application.Countries.City



select 
countryID,
countryName,
cityID,cityName
from 
Application.Countries 
right  join 
Application.Cities on Application.Cities.CityID=Application.Countries.City






select 
countryID,
countryName,
cityID,
cityName
from 
Application.Countries 
left  join Application.Cities on Application.Cities.CityID=Application.Countries.City
where cityID is null


select
countryID,
countryName,
cityID,
cityName
from 
Application.Countries 
right  join Application.Cities on Application.Cities.CityID=Application.Countries.City
where countryID is null









select countryID,countryName,cityID,cityName
from Application.Countries 
full  join Application.Cities on Application.Cities.CityID=Application.Countries.City
where CountryID is null or CityID is null
/*Consultas de join*/

select 
countryID,
countryName,
cityID,
cityName
from 
Application.Countries 
full  join Application.Cities on Application.Cities.CityID=Application.Countries.City
