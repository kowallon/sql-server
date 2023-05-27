Select *
from HumanResources.Children

insert into HumanResources.Kids(FirstName, LastName, Age, city)
values ('James', 'May', 6 , 'London')

update HumanResources.Children
set city = 'London'
where city <> 'London' or city is null

update HumanResources.Children
set diet = 'normal'
where diet <> 'normal'


update HumanResources.Children
set age = age + 2
where Id between 3 and 6

--will return all records except duplicates
select *
from HumanResources.Kids
UNION
select *
from HumanResources.Children

