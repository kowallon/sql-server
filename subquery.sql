select LoginID, VacationHours
from HumanResources.Employee
where VacationHours >(select VacationHours from HumanResources.Employee where BusinessEntityID =49)

select LoginID, VacationHours
from HumanResources.Employee
where VacationHours >(select VacationHours from HumanResources.Employee where BusinessEntityID =49)
and MaritalStatus !=(select MaritalStatus from HumanResources.Employee where BusinessEntityID =49)

select LoginID, VacationHours
from HumanResources.Employee
where VacationHours > (select avg(VacationHours) from HumanResources.Employee)

select JobTitle, avg(VacationHours) as 'Average vacation hours by position'
from HumanResources.Employee
group by JobTitle
having AVG(VacationHours) > (select avg(VacationHours) from HumanResources.Employee)
order by [Average vacation hours by position] desc

select BusinessEntityID, 
	(select AddressLine1 
	from Person.Address as A
	where A.AddressID = B.AddressID) as Adress
from Person.BusinessEntityAddress as B



select LoginID, datediff(year,BirthDate, getDate()) as age
from HumanResources.Employee 
where datediff(year,BirthDate, getDate()) <(select avg(datediff(year,BirthDate, getDate())) from HumanResources.Employee)
order by age asc

-- stores with sales of equal value as 
select Name, AnnualSales,SquareFeet
from Sales.vStoreWithDemographics
where AnnualSales in 
		(select AnnualSales
		from Sales.vStoreWithDemographics
		where SquareFeet > 20000)
	and SquareFeet < 20000
order by SquareFeet asc

--all stores with sq less than 20k with sales higher or equal to at least one store with sq of more than 20k
select Name, AnnualSales,SquareFeet
from Sales.vStoreWithDemographics
where AnnualSales >= ANY
		(select AnnualSales
		from Sales.vStoreWithDemographics
		where SquareFeet > 20000)
	and SquareFeet < 20000
order by SquareFeet asc


