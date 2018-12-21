create database customers;
use customers;


show tables;

create table customer(
									c_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
									name VARCHAR(35), 
									email VARCHAR(30), 
                                    phone VARCHAR(15),
                                    city VARCHAR(22),
                                    state VARCHAR(22),
                                    zipcode VARCHAR(12)

 );
 
 describe customer;
 
 
 insert into customer values
											(NULL, "Manoj", "manoj@gmail.com","9810003030", "HYD", "TS", "500018"),
											(NULL, "Prasanth", "prasanth@gmail.com", "9848423311", "HYD", "TS", "500045"),
                                            (NULL, "Sathish", "sathish@gmail.com", "9849300220","HYD", "TS", "500023"),
                                            (NULL, "Preetham","preetham@gmail.com", "9738388388", "KMM", "TS", "520318"),
                                            (NULL, "Naveen", "naveen@gmail.com", "9338399394", "KMM", "TS", "520034"),
                                            (NULL, "Ajith", "ajith@gmail.com", "8399393494","KNR", "TS", "505001"),
                                            (NULL, "Vaishnavi","Vaishnavi@gmail.com","4789399344", "PDPL", "TS","503039" ),
                                            (NULL, "Ragini", "Ragini@gmail.com", "3939949494", "ACPT", "TS", "493939"),
                                            (NULL, "Rajyalaxmi", "Rajyalaxmi@gmail.com","838393993", "GNT", "AP", "522415");
                                            
                                            
select * from customer;

alter table customer add column a_id int ;

alter table customer drop city;
alter table customer drop state;
alter table customer drop zipcode;
 
 
 