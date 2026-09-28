create database Sales_dwh
Go
use Sales_dwh
Go

create schema bronze1 ;

create table bronze1.Customers(
customer_id varchar(100),
firstname varchar(100),
lastname varchar(100),
email varchar(100),
city varchar(100)
)

create table bronze1.Orders(
Order_id varchar(100),
customer_id varchar(100),
product_id varchar(100),
quantity varchar(100),
order_date varchar(100)
)


create table bronze1.Products(
product_id varchar(100),
product_name varchar(100),
category varchar(100),
brand varchar(100),
price varchar(100)
)			

select * from bronze1.Orders
Truncate table bronze1.Orders

select * from bronze1.Products
select * from bronze1.Orders




DROP SCHEMA sivler;
GO


CREATE SCHEMA silver;
GO

create table silver.Customers(
customer_id int,
full_name varchar(100),
email varchar(100),
city varchar(100)
)

select * from silver.Customers

create table silver.Products(
product_id int,
product_name varchar(100),
category varchar(100),
brand varchar(100),
price float
)		


create table silver.Orders(
Order_id int,
customer_id int,
product_id int,
quantity int,
order_date int
)

ALTER TABLE silver.Orders
drop  column order_date

ALTER TABLE silver.Orders
add order_date date;


select * from silver.Customers
select * from silver.Orders
select * from silver.Products

create schema gold


create table gold.main
(
    order_id int,
    customer_id int,
    full_name varchar(100),
    email varchar(100),
    city varchar(100),
    product_id int,
    product_name varchar(100),
    category varchar(100),
    brand varchar(100),
    order_date date,
    price float,
    quantity int,
    total_amount float
)

select * from gold.main 