select c.Name, --list all columns you want for ALL TABLES YOU ARE REFERENCING
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
