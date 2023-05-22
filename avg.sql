select sum(SickLeaveHours) as 'Total hours spent on sickleave'
from HumanResources.Employee

select max(VacationHours) as 'Most vacation hours', min(HireDate) as 'Longest employment'
from HumanResources.Employee

select avg(VacationHours) as 'Average vacation hours'
from HumanResources.Employee

select count(*) as 'Num of records'
from HumanResources.Employee

--if selected certain column, it'll count all except for nulls
select count(EndDate) as 'Number of Workers not in company anymore'
from HumanResources.EmployeeDepartmentHistory

select avg(MaxQty) as 'Average without nulls', avg(ISNULL(MaxQty,0)) as 'Average with null turned to 0'
from Sales.SpecialOffer