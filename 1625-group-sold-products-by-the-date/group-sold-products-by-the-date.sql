# Write your MySQL query statement below
Select sell_date,
    count(distinct product) as num_sold,
    GROUP_CONCAT(
        DISTINCT product
        ORDER BY product
        SEPARATOR ','
    )AS products
from Activities
Group by sell_date
order by sell_date,product