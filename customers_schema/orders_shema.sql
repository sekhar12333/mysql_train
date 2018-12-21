create table orders(
							id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                            name VARCHAR(34),
                            price int,
                            order_date TIMESTAMP,
                            c_id int  NULL

);

describe orders;


insert into orders values(NULL, "Iphone 6s", 30000, CURRENT_DATE, 1);
insert into orders values(NULL, "Nokia X2", 5000, CURRENT_DATE + INTERVAL -5 DAY, 1);
insert into orders values(NULL, "Reconnect AC", 20000, CURRENT_DATE + INTERVAL -10 DAY, 2);
insert into orders values(NULL, "Chocolate FERROR ROCHERS", 500, CURRENT_DATE, 6);
insert into orders values(NULL, "MI TV", 45000, CURRENT_DATE + INTERVAL -1 YEAR, 4);
insert into orders values(NULL, "Samasung TV", 30000, CURRENT_DATE + INTERVAL -6 MONTH, 7);
insert into orders values(NULL, "BOSE headphones", 90000, CURRENT_DATE + INTERVAL -3 MONTH, 1);
insert into orders values(NULL, "IFB Washing machine", 24999, CURRENT_DATE, 2);
insert into orders values(NULL, "LG FRIDGE", 18000, CURRENT_DATE+ INTERVAL -4 MONTH, 9);
insert into orders values(NULL, "JIO Mobile", 1500, CURRENT_DATE, 3);


insert into orders values(NULL, "Virgin Mobile", 1000, CURRENT_DATE, NULL);
insert into orders values(NULL, "Smart watch Apple", 40000, CURRENT_DATE, NULL);


select * from orders;

drop table address;
drop table customer;
drop table orders;

select * from orders;
