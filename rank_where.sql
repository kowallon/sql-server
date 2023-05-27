with EmployeesBirthDates as
(select FirstName + ' ' + LastName as FullName, E.BirthDate, DATEDIFF(year, E.BirthDate, getDate()) as age
from Person.Person as P
inner join HumanResources.Employee as E on P.BusinessEntityID = E.BusinessEntityID)



--select *
--from EmployeesBirthDates
--where MONTH(GETDATE()) = MONTH(BirthDate)

select *
from EmployeesBirthDates as E1 left join  EmployeesBirthDates as E2
on E1.FullName<>E2.FullName
where E1.BirthDate = E2.BirthDate

--declaring local variables
declare @varName varchar(30) = 'Tool designer';

select *
from HumanResources.Employee
where JobTitle = @varName

--rank // --dense rank does the same, but does not ommit ex aeqo places
select BusinessEntityID, VacationHours,
rank() over (order by VacationHours desc) as 'Rankking by vacationdays' 
from HumanResources.Employee

--does not return ex aequo places
select BusinessEntityID, VacationHours,
row_number() over (order by VacationHours desc) as 'Rankking by vacationdays' 
from HumanResources.Employee

--divides by selected column depending on ntile param
select BusinessEntityID, VacationHours,
ntile(4) over (order by VacationHours desc) as 'Rankking by vacationdays' 
from HumanResources.Employee

select BusinessEntityID, gender, HireDate,
rank() over (partition by gender order by Hiredate) as 'Longest employed' 
from HumanResources.Employee



