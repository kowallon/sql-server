select E.BusinessEntityID, D.*
from HumanResources.Employee as E
left join Production.Document as D on E.OrganizationNode = D.DocumentNode

select E.BusinessEntityID, D.*
from HumanResources.Employee as E
inner join Production.Document as D on E.OrganizationNode = D.DocumentNode

select E.BusinessEntityID, E.OrganizationNode, D.*
from HumanResources.Employee as E
right join Production.Document as D on E.OrganizationNode = D.DocumentNode

select E.BusinessEntityID, E.OrganizationNode, D.*
from HumanResources.Employee as E
full join Production.Document as D on E.OrganizationNode = D.DocumentNode