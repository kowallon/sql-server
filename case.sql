select LoginID, vacationHours,
	case 
		when cast(VacationHours as int) < 8 then 'Less than 1 full day'
		else cast(VacationHours as varchar) 
	end as 'VacationHours available'
from HumanResources.Employee


select LoginID, gender, MaritalStatus, VacationHours,
	case  
		when Gender = 'F' AND MaritalStatus = 'M' then VacationHours + 24
		when Gender = 'F' then VacationHours + 16
		when Gender = 'M' and MaritalStatus = 'M' then VacationHours + 8
		else VacationHours
		end as 'Extra vacation'
from HumanResources.Employee

select SalesLastYear, SalesYTD,
	case	
		when SalesYTD < SalesLastYear then 'Lacking ' + cast(SalesLastYear - SalesYTD as varchar(20)) + ' in sales'
		else 'Target from last year met'		
		end as 'Sales target'
from sales.SalesPerson
