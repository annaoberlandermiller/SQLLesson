drop table Bases;
drop table MilitaryBranches;

create table MilitaryBranches (
	Id int not null identity (1,1) primary key,
	Name nvarchar(20) not null default 'Army',
	YearStarted nvarchar(4) not null,
	Country nvarchar(50) not null
);

create table Bases (
	Id int not null identity(1,1) primary key,
	Name nvarchar(30) not null,
	City nvarchar(30) not null,
	State nvarchar(2) not null,
	Branch int foreign key references MilitaryBranches(Id) default 1 not null,
	StillOpen bit not null default 1
);

insert into MilitaryBranches
(Name, YearStarted, Country)
values
('Army', 1775, 'USA');

insert into MilitaryBranches
(Name, YearStarted, Country)
values
('Navy', 1775, 'USA');

insert into MilitaryBranches
(Name, YearStarted, Country)
values
('Marines', 1775, 'USA');

insert into MilitaryBranches
(Name, YearStarted, Country)
values
('Coast Guard', 1790, 'USA');

insert into MilitaryBranches
(Name, YearStarted, Country)
values
('Air Force', 1947, 'USA');

insert into Bases
(Name, City, State, Branch, StillOpen)
values
('Columbus AFB', 'Columbus', 'MS', 5, 1);

insert into Bases
(Name, City, State, Branch, StillOpen)
values
('Wright-Patterson AFB', 'Dayton', 'OH', 5, 1);

insert into Bases
(Name, City, State, Branch, StillOpen)
values
('Fort Bragg', 'Fayetteville', 'NC', 1, 1);

insert into Bases
(Name, City, State, Branch, StillOpen)
values
('NAS Pensacola', 'Pensacola', 'FL', 2, 1);
 
/*select *
from Bases B
	join MilitaryBranches.Branch on 
order by name desc;