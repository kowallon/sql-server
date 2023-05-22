select SUBSTRING(LoginID,17,10), cast(Datediff(year, cast(BirthDate as date), getDate()) as int) as 'Age'
from HumanResources.Employee

select OrganizationLevel, avg(cast(Datediff(year, cast(BirthDate as date), GETDATE()) as int)) as 'Age'
from HumanResources.Employee
group by OrganizationLevel


select OrganizationLevel, Gender, sum(VacationHours) as 'sum per level and gender', avg(VacationHours) as 'average per level and gender'
from HumanResources.Employee
where OrganizationLevel is not null
group by Gender, OrganizationLevel

select OrganizationLevel, Gender, sum(VacationHours) as 'sum per level', avg(VacationHours) as 'average per level'
from HumanResources.Employee
where OrganizationLevel is not null
group by Gender, OrganizationLevel
having sum(vacationHours) > 250