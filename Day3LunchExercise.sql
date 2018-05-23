/*select  c.Name,
		c.City,
		c.State,
		c.IsCorpAcct,
        c.CreditLimit,
        c.Active
from customer c
	join [order] o
		on c.id = o.customerid
	
(Name, City, State, IsCorpAcct, CreditLimit, Active)
values
('Pluto LLC', 'Cincinnati', 'OH', 1, 250000, 0)

 insert customer
 (Name, City, State, IsCorpAcct, CreditLimit, Active)
values
('Solar LLC', 'Cincinnati', 'OH', 1, 250000, 0)

--update customer*/
/*select c.Name, --list all columns you want for ALL TABLES YOU ARE REFERENCING
	c.city,	
	c.state, 
	c.iscorpacct, 
	o.amount,
	o.date,
	c.creditlimit, 
	c.active
from [order] o
	join customer c  --think of join as an extension of from - doesn't matter if you do from order and join cusotmer, or from customer join order.  Select determines the column order
on o.CustomerID = c.Id
order by o.amount desc

insert into c
(c.Name, c.City, c.State, c.IsCorpAcct, o.Amount, o.date, c.CreditLimit, c.Active)
values
('Pluto LLC', 'Cincinnati', 'OH', 1, 549, 2017-08-09, 250000, 0)
*/

/*insert into customer
(Name, City, State, IsCorpAcct, CreditLimit, Active)
values
('Pluto LLC', 'Cincinnati', 'OH', 1, 250000, 0);

insert into [order] 
(date, amount, customerID)
values 
('2017-08-09', 654, 9);

insert into [order]
(date, amount, customerID)
values
('2017-09-08', 456, 10);*/

select *
from [order]

select *
from customer