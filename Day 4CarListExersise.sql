drop table CarsList;

create table CarsList (
	id int primary key identity (1,1) not null,
	Make nvarchar(30) not null,
	Model nvarchar(30) not null,
	CarTrim nvarchar(10),
	Year int not null,
	IsSedan bit default 0 not null, 
	PurchasePrice decimal (6,2) default (2000.00) not null 
);


insert into CarsList
(Make, Model, Year, IsSedan, PurchasePrice)
values
('Saturn', 'Vue', 2006, 0, 5000);

insert into CarsList
(Make, Model, Year, IsSedan, PurchasePrice)
values
('Buick', 'Century', 1997, 0, 2000);

insert into CarsList
(Make, Model, CarTrim, Year, IsSedan, PurchasePrice)
values
('Kia', 'Sportage', 'LX', 2008, 0, 6000);

select *
from CarsList
order by PurchasePrice desc;