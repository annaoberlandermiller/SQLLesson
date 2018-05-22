select customer.State,
	 sum([order].Amount) as 'Total Sales'
from [order] 
join customer
	on [order].customerid = customer.id --.customerid is where the tables are fusing together
group by customer.State --this is saying I want one line for each customer - you need to have an aggregiate function (this is sum on line 2)
having sum ([order].amount) >= 1000 --use having in place of where on aggregated/grouped data.
order by sum([order].amount) desc
