-- creating empty table

--create table HumanResources.Kids
--(id int,
--Firstname varchar(255),
--Lastname varchat(255),
--age int,
--BirthDate date);


--creating table from another table

--select BusinessEntityID, FirstName, LastName
--into HumanResources.Parents
--from Person.Person
--where BusinessEntityID between 1 and 100

select *
from HumanResources.Parents

select*
from HumanResources.Kids

--adding column
alter table HumanResources.Kids
add city varchar(150)

--updating column
alter table HumanResources.Kids
alter column FirstName varchar(50)


--creating custom view
create view Sales.Biggest10orders as
select top 10 SalesOrderID, cast(sum(LineTotal) as decimal(8,2)) as TotalSum
from Sales.SalesOrderDetail
group by SalesOrderID
order by TotalSum desc

select *
from Sales.Biggest10orders


select *
from HumanResources.Kids

-- IF unieuq kiey is not set it must be set by setting first column not to be null so it can be unique key
alter table HumanResources.Kids
alter column id int not null

--setting primary key
alter table HumanResources.Kids
add constraint key_Kids primary key(id)

--making key unique
alter table HumanResources.Kids
add unique(id)

create table HumanResources.Kids
(Id int not null identity(1,1) constraint key_kids primary key,
FirstName varchar(50),
LastName varchar(50),
Age int)

alter table HumanResources.Kids
add city varchar(50)

select *
from HumanResources.Kids

insert into HumanResources.Kids values ('Joe', 'Doe', 4, 'London')

insert into HumanResources.Kids values ('Joey', 'Tribiani', 8, NULL)

alter table HumanResources.Kids
add diet varchar(30) default 'normal'

update HumanResources.Kids
set diet = 'vegan'
where ID in (2,3)

insert into HumanResources.Kids (FirstName, LastName, Age, city)
values ('Jeremy', 'Clarckson', 7, 'Cheesham')

delete from HumanResources.Kids
where ID in (4,5)

insert into HumanResources.Kids (FirstName, LastName, Age, city, diet)
values ('Richard', 'Hammond', 5, 'Southampton', 'vegetarian')

update HumanResources.Kids
set city = 
		(select city
		from HumanResources.Kids
		where LastName = 'Clarckson'
		)
where LastName = 'Hammond'

select *
from HumanResources.Kids