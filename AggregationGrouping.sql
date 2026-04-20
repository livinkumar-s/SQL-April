use dummy;

CREATE TABLE product(
proId int primary key auto_increment,
name varchar(50) not null,
price float not null,
category varchar(10) not null
);

INSERT INTO product (name, price, category) values ("potato",14.44,"veg"),
("tomato",12.44,"veg"),
("onion",10.44,"veg"),
("apple",20.44,"fruit"),
("banana",15.44,"fruit"),
("grape",25.44,"fruit"),
("carrot",8.44,"veg"),
("cucumber",9.44,"veg"),
("orange",18.44,"fruit"),
("pear",22.44,"fruit"),
("Earpods",50.44,"gadget"),
("Laptop",500.44,"gadget"),
("Phone",300.44,"gadget"),
("Tablet",200.44,"gadget"),
("Headphones",80.44,"gadget"),
;

-- new products same category
INSERT INTO product (name, price, category) values 
("spinach",11.44,"veg"),
("broccoli",13.44,"veg"),
("strawberry",19.44,"fruit"),
("blueberry",21.44,"fruit"),
("TV",600.44,"gadget"),
("smartwatch",150.44,"gadget"),
("camera",250.44,"gadget")
("monitor",400.44,"gadget");


select * from product;

select count(*) from product;
select sum(proid) from product;
select avg(price) from product;
select  max(price) from product;
select min(price) from product;

select count(*), sum(price) from product;

select name, avg(price) from product;

select category,count(category) from product GROUP BY category;
