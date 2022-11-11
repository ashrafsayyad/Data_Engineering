CREATE DATABASE SQL_BASICS;

USE SQL_BASICS;

CREATE TABLE product (
	product_code varchar(20),
    product_name varchar(20),
    price float,
    stock float,
    category varchar(20)
);

CREATE TABLE customer (
	customer_id int,
	customer_name varchar(20),
    customer_loc varchar(20),
    customer_phone int
);

CREATE TABLE sales(
	sale_date date,
    order_number int,
    product_code varchar(20),
    product_name varchar(20),
    quantity int,
    price float
);


INSERT INTO PRODUCT VALUES(
'EAR-1234','iPhone 13 Pro Max','1000', '12','Phone'
);

select * from product;

INSERT INTO CUSTOMER VALUES(
'12345', 'JOHN WICK', 'EDEN PRAIRIE', '789654123'
);


SELECT * FROM CUSTOMER;

INSERT INTO SALES VALUES(
sysdate(),
'7895623',
'EAR-1234',
'iPhone 13 Pro Max',
'1',
'1127'
);

SELECT * FROM SALES;

	ALTER TABLE SALES
    ADD S_NO INT,
    ADD CATEGORIES VARCHAR(25)
    ;
	
	ALTER TABLE PRODUCT
MODIFY STOCK VARCHAR(20);

RENAME TABLE CUSTOMER TO CUSTOMER_DETAILS;

ALTER TABLE SALES
DROP COLUMN S_NO,
DROP COLUMN CATEGORIES;
	
SELECT ORDER_NUMBER,SALE_DATE, PRICE, QUANTITY FROM SALES;	

SELECT * FROM PRODUCT
WHERE CATEGORY ='Stationary'
;

select distinct category from product;

select * from sales_datasets
where qty > 2 
and price < 500
;

select * from customer_details
where customer_name LIKE '%a'
;

select * from product
order by price desc
;

select order_no, c_name from sales_datasets;