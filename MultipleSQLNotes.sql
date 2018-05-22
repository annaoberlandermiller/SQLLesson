--select NAME as 'Customer',  --this is saying pull the names from the table, and the query will show it in a column called Customer
	--concat(city, ', ', state) as 'City and State'  --this concat is combining the 2 columns, city and state, into one column in the query
	--from customer --this is the table from the database we want to pull that data from
	--where not (state = 'oh' or state = 'in')
	select name from customer
	where not (name = 'jupiter LPA' or name = 'saturn INC' or name = 'uranus LPA' or name = 'neptune INC')
	
	--this is saying sort the query by name, alphabettically.  Put desc after name to do reverse-alpha
	 --where  not (CreditLimit >= 250000 and CreditLimit <= 500000 --this is saying NOT to pull the data for the companies with a credit limit more than 250000, but less than 500,000 for companies in Kentucky.  Put in paranthesises so the NOT statemet applies to both the credit limit and the state, otherwise will apply to what shows up first (in this example, credit limit)
	 --		and state = 'ky')
			 --where state = 'OH' or state = 'in'