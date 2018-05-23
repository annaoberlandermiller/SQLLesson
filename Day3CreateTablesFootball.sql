drop table Players;--Drop tables in reverse order of how they are created - our players table relies on the teams table.  It'll come back as an error otherwise.
drop table Teams; --how to get rid of table.  Put above "create table" after first time creating so you can easily change the columns of the table.  Just keep in mind that everytime you drop it, it wipes out all the data from the table

create table Teams (

	Id int not null identity(1, 1) primary key, -- This is your primary key. Always not null.  identity (1,1) says it should start with 1, and increase by 1. Have a comma after the end of each column
	Name nvarchar(50) not null, --Name is is the name of the column. Nvarchar(50) stands international character, with max of 50 characters
	City nvarchar(25) not null, --Not null says that we aren't allowing for null(no value) for this column
	State nvarchar(2) not null, 
	WonSuperBowl bit not null default 0, --bit is for boolean.  Default is saying that if we don't enter a value, the default entry in the dd will be 0
	YearsExisted int not null default 0, --int is for interger
	Sport nvarchar(30) not null default 'Football' --default needs to be match the variable type.  
);

create table Players (
	
	Id int not null identity(1, 1) primary key,
	TeamsId int foreign key references Teams(Id) default 0, -- This is a foreign key - it refers to the Teams table. Tablename(columnname) of the table you're referencing
	FirstName nvarchar(30) not null, 
	LastName nvarchar(30) not null,
	Position nvarchar(30) not null,
    Number nvarchar(3), --If you're not going to be doing arithmitc operations on it, make it a string instead of an interger
	YearsInSport int not null default 0,
	Salary decimal(10,2)  --Decimal is used currency, or any other number with decimals.  
);

go /*command just for SQL managementstudio .
it says execute everything above go, and then execute the stuff below.  
It's good practice to do this before you insert stuff into tables */

insert into Teams
(Name, City, State, WonSuperBowl, YearsExisted, Sport)
Values
('Vikings', 'Minneapolis', 'MN', 0, 58, 'Football');

insert into Players
(TeamsId, FirstName, LastName, Position, Number, Salary) 
Values
(1, 'Adam', 'Thielen', 'Wide reciever', '19', '96000000.00'); 

insert into Players--insert into Players
(TeamsId, FirstName, LastName, Position, Number, Salary) 
Values
(1, 'Kirk', 'Cousins', 'Quarterback', '8', '84000000.00'); 

insert into Players
(TeamsId, FirstName, LastName, Position, Number, Salary) 
Values
(1, 'Dalvin', 'Cook', 'Running back', '33', '63000000.00');

select *
from Teams

select *
from Players
order by LastName 