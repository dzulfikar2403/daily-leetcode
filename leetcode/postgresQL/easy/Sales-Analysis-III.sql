-- Write your PostgreSQL query statement below
select distinct p.product_id,
        p.product_name
from product p
inner join sales s on (p.product_id = s.product_id)
where p.product_id not in (
    select product_id 
    from sales
    where sale_date not between '2019-01-01'::timestamp and '2019-03-31'::timestamp 
)