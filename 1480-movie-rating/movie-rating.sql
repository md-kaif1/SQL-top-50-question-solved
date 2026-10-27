# Write your MySQL query statement below
(select name as results
from Users
inner join MovieRating USING(user_id)
Group by user_id
Order by count(rating) DESC, name
limit 1)

UNION ALL

(select title as results
from Movies
inner join MovieRating using(movie_id)
where month(created_at)='02'AND YEAR(created_at)='2020'
group by title
order by avg(rating) desc, title
limit 1
)