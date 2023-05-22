SELECT VacationHours, CAST(VacationHours as float)/8 as 'Days off left'
FROM HumanResources.Employee;

Select cast(NationalIDNumber as bigint) as Num
from HumanResources.Employee
order by Num

select Substring(LoginID,17,10),HireDate, datediff(MONTH, hiredate,cast(GETDATE() as date)) as 'employmentForMonths'
from HumanResources.Employee
order by employmentForMonths desc, HireDate asc
--convert requires target type first, then source
select 'Today is ' + Datename(WEEKDAY,GETDATE()) + ' ' + Convert(varchar, GETDATE(), 101)

select Substring(LoginID,17,10),HireDate, DATEDIFF(DAY, HireDate,cast(getDate() as date)) as 'daysEmployed'
from HumanResources.Employee

--str to allow only 2 digits to be returned // to have decimal value should use `/8,4,2`
select Substring(LoginID,17,10), str(cast(VacationHours as float)/8,2) as 'full days off'
from HumanResources.Employee

--first check if value is null and if so, it assigns it todays date (or anything else, that is as second parameter of isnull())
select BusinessEntityID, StartDate, isnull(EndDate,cast(getDate() as date)) as 'End date'
from HumanResources.EmployeeDepartmentHistory
order by [End date]


-- if value is null, the null is convertet to char and it's val is set to 'Not employed'
select JobCandidateID, isnull(cast(BusinessEntityID as char), 'Not employed') as BusinessEntityId
from HumanResources.JobCandidate

--null if returns NULL if values of the params are the same, otherwise it'll return value of first param
select Substring(LoginID,17,10),MaritalStatus, Gender, nullif(MaritalStatus,Gender)
from HumanResources.Employee


select BusinessEntityID, rate,
	floor(rate + 10) as 'Rate + 10',
	ceiling(rate * 1.1) as 'Rate increased for 10%',
	round(cast(rate /0.9 as float),2) as 'Rate in €'
from HumanResources.EmployeePayHistory