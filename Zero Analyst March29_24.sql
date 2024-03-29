--SELECT * FROM ORDERS
--SELECT * FROM RETURNS


--SQL Query to return the total number of returned orders of Each Month--

SELECT 
		count(r.returnid) as Total_return,
		EXTRACT(MONTH from o.orderdate)|| '-' || EXTRACT(YEAR FROM o.orderdate)as month
From returns as r
join orders as o
on r.orderid=o.orderid
Group by month
order by month;

