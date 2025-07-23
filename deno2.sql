create database if not exists demo2;
use demo2;

create table products (
    id int primary key auto_increment,
    productcode varchar(50),
    productname varchar(100),
    productprice decimal(10, 2),
    productamount int,
    productdescription text,
    productstatus varchar(20)
);

insert into products (productcode, productname, productprice, productamount, productdescription, productstatus)
values 
('p001', 'laptop', 1200.00, 10, 'high-performance laptop', 'available'),
('p002', 'mouse', 25.50, 100, 'wireless mouse', 'available'),
('p003', 'keyboard', 45.00, 50, 'mechanical keyboard', 'out of stock');


create unique index idx_product_code on products(productcode);

create index idx_name_price on products(productname, productprice);

create view view_product_info as
select productcode, productname, productprice, productstatus
from products;

drop view if exists view_product_info;

delimiter //
create procedure getallproducts()
begin
    select * from products;
end //
delimiter ;




