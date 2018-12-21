

select * from orders where order_date > current_date() + INTERVAL -8 MONTH AND c_id is not null; 

select * from customer where name LIKE "%h";

select customer.name, customer.city,customer.state, customer.c_id, orders.price, orders.name,  orders.order_date 
from customer JOIN orders
ON orders.c_id = customer.c_id ;

select * from customer where c_id = 8;

select c.name, c.city,c.state, c.c_id, o.price, o.name,  o.order_date 
from customer as c INNER JOIN orders as o
ON o.c_id = c.c_id where o.order_date > current_date() + INTERVAL -8 MONTH;

use customers;



create table address(id int auto_increment not null primary key, 
city varchar(25), state varchar(25), zipcode varchar(10));



insert into address(city, state, zipcode) select city, state, zipcode from customer;

select * from address;

UPDATE address, customer
SET customer.a_id = address.id
WHERE address.city = customer.city AND address.state = customer.state AND address.zipcode = customer.zipcode;

SET SQL_SAFE_UPDATES = 0;

select c.name, o.price, o.name, a.city,a.state,  o.order_date 
from customer as c INNER JOIN orders as o
ON o.c_id = c.c_id INNER JOIN address as a ON c.a_id = a.id;
