select JobTitle, OrganizationLevel, HireDate
from HumanResources.Employee
where (JobTitle like 'Senior%' or JobTitle like  '%Manager%') and (HireDate between '2006-01-01' and '2008-12-31')
order by HireDate desc
----
select Substring(LoginID,17,10), SickLeaveHours, VacationHours
from HumanResources.Employee
where SickLeaveHours < 30 and VacationHours between 2 and 10
order by SickLeaveHours asc, VacationHours desc
----

select *
from Person.CountryRegion
where Name like '[A-F]%' and name != 'France'
order by Name

select *
from Production.Product
where (SafetyStockLevel = 1000 and Name like '%race%') or (ReorderPoint = 375 and Color like 's%') or (ReorderPoint = 600 and Color like 's%')