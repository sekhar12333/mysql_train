select name, c_id from customer where name like '%h'
union all
select name, c_id from customer where name like 'a%';


select * from customer;
select * from orders;


select c.name, c.c_id, sum(o.price) as total_price from customer as c INNER JOIN orders as o ON c.c_id = o.c_id group by c.c_id;

select c.name ,c.c_id, o.price from customer as c INNER JOIN orders as o ON c.c_id = o.c_id order by o.price desc;


select  max(price) from orders;

select c_id, max(price) as max_price  from orders group by c_id order by max_price desc limit 1;
select * from customer as c JOIN (select c_id, max(price) as max_price  from orders group by c_id order by max_price desc limit 1) as t1 ON t1.c_id = c.c_id;

select * from customer as c JOIN (select c_id, max(price) as max_price  from orders group by c_id order by max_price) as t1 ON t1.c_id = c.c_id;