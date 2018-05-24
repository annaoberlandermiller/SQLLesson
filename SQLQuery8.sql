
/*
INSERTING
insert Student 
(Firstname, Lastname, IsVeteran, FavColor, FavNumber) --Column names
Values
('Roger', 'Doud', 1, 'Green', 7);
-- The number of times you execute is the number of times you enter the data in the database
-- If I wanted to insert 2 students at once, I would have to do two insert statements (includes value statements)

DELETING
delete from student 
where lastname = 'Slutsky' 
	or lastname = 'Peace' 
	or lastname = 'Bartik';

OR you could

delete from student 
where lastname in ('Slutsky', 'Peace', 'Bartik'); YOU CAN DO THIS ANYWHERE THERE'S A WHERE CLAUSE. Its cleaner to read

UPDATE

update student 
set favcolor = 'Aqua',
	favnumber = 8
where Firstname = 'Greg' and IsVeteran = 0 --use EXTREME caution and ensure that you have included a where clause, or else you'll create incorrect data enteries
*/

update student
set firstname = 'Obi'
where firstname = 'Anna' and isveteran = 1

select * from student