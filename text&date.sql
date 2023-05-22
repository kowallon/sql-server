--lowercase text
select LOWER('Lowercase me')

--uppercase
select Upper('Uppercase me')

--right is the opposite
select left('Will return amount of characters from left depending on second parameter', 20)

select len('Will return amount of characters from left depending on second parameter')
-- finds index of char from first param, starting to count from position of third param
select CHARINDEX('f','Will return amount of characters from left depending on second parameter', 15)

select convert(varchar, dateadd(day, 100, getDate()),105) as 'Date in 100 days'

select DATEDIFF(day, '19970524', getDate()) as 'How many days do I have'

