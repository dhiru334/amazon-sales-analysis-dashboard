SELECT * FROM dataset;
 describe dataset;

select count(*) from dataset;

select sum(amount) as total_revenue
from dataset;

select count(*) as total_orders
from dataset;

select `Ship-State`,
sum(amount) as total_sales
from dataset
group by `Ship-State`
order by total_sales desc
limit 10;

select category,
sum(amount) as total_sales
from dataset
group by category
order by total_sales desc;


select status,
count(*) as total_orders
from dataset
group by status
order by total_orders desc;

select avg(amount) as average_order_value
from dataset;

select month,
sum(amount) as total_sales
from dataset
group by month
order by total_sales desc;

select * from dataset
where `Ship-State` = 'karnataka';

select * from dataset
where Status = 'cancelled';

SELECT *
FROM dataset
WHERE Amount > 5000;

SELECT *
FROM dataset
WHERE `Ship-State` = 'Maharashtra'
AND Amount > 3000;

SELECT *
FROM dataset
WHERE Status = 'Cancelled'
OR Status = 'Returned';

SELECT *
FROM dataset
WHERE Category LIKE '%Set%';

SELECT *
FROM dataset
WHERE `Ship-State` IN ('Karnataka', 'Maharashtra', 'Telangana');

SELECT *
FROM dataset
WHERE Amount BETWEEN 1000 AND 5000;

SELECT *
FROM dataset
WHERE Status NOT IN ('Cancelled');

SELECT DISTINCT Category
FROM dataset;

SELECT `Ship-State`,
       SUM(Amount) AS total_sales
FROM dataset
GROUP BY `Ship-State`
HAVING total_sales > 1000000;


SELECT Category,
       SUM(Qty) AS total_quantity
FROM dataset
GROUP BY Category
HAVING total_quantity > 5000;

SELECT `Ship-State`,
       COUNT(*) AS total_orders
FROM dataset
GROUP BY `Ship-State`
HAVING total_orders > 1000
ORDER BY total_orders DESC;


select amount,
case
when amount <1000 then 'low value'
when amount between 1000 and 5000 then 'medium value'
else 'high value'
end as order_category
from dataset;

