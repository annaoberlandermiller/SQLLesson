select c.Name, o.Amount, 'A' as 'A, B, or C'
from [order] o -- o is the alias for the order table
left join customer c
	on o.CustomerId = c.Id
where o.Amount > 750
union
select c.Name, o.Amount, 'B' as 'A, B, or C'
from [order] o -- o is the alias for the order table
left join customer c
	on o.CustomerId = c.Id
where o.Amount <= 750 and o.Amount > 250 
union
select c.Name, o.Amount, 'C' as 'A, B, or C'
from [order] o -- o is the alias for the order table
left join customer c
	on o.CustomerId = c.Id
where o.Amount < 250