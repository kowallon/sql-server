select LoginID, ShiftID
from HumanResources.EmployeeDepartmentHistory, HumanResources.Employee
where HumanResources.EmployeeDepartmentHistory.BusinessEntityID=HumanResources.Employee.BusinessEntityID 


select BusinessEntityID, StartTime, EndTime
from HumanResources.EmployeeDepartmentHistory as EDP
inner join HumanResources.Shift as ES on EDP.ShiftID = ES.ShiftID
order by BusinessEntityID

select P.FirstName, P.LastName, EDP.StartDate, E.VacationHours,
case
	when Gender = 'F' then VacationHours + 16
	else VacationHours
	end as 'Updated Vacation hours'
from Person.Person as P 
inner join HumanResources.EmployeeDepartmentHistory as EDP on P.BusinessEntityID = EDP.BusinessEntityID
inner join HumanResources.Employee as E on E.BusinessEntityID = EDP.BusinessEntityID
order by EDP.BusinessEntityID