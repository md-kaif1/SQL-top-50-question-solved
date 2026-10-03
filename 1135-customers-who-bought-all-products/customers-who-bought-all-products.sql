# Write your MySQL query statement below
select c.Customer_id
from Customer c
join Product p
on c.product_key=p.product_key
group by c.Customer_id
having count(distinct c.product_key) =
(select count(*) from Product);