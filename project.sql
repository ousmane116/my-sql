select now();
 CREATE DATABASE if not exists basslight_enterprise;
 use basslight_enterprise;
 /* this is my sales table */
 create table sales(
purcharse_number int not null primary key auto_increment,
date_of_purchase date not null,
customer_id int ,
item_code varchar(10)
);
/* this is my customers table */
create table customers (
customer_id int,
first_name varchar(255),
last_name varchar(255),
email_address varchar(255),
number_of_complaints int
);
alter table sales add foreign key (customer_id) references customers(customer_id) on delete cascade;

create table items(
item_code varchar(10),
 item varchar (255),
unit_price int,
company_id int,
primary key (item_code)
);