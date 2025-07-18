create database if not exists demo1;
use demo1;

create table customer(
cID int auto_increment primary key,
cName varchar (50),
cAge int
);

create table product(
pID int primary key,
pName varchar(50),
pPrice varchar(50)
);

create table orderr(
oID int primary key,
cID int,
oDate date,
oTotalPrice float,
foreign key (cID) references customer(cID)
);

create table orderDetail(
oID int,
pID int,
odQTY varchar(50),
primary key (oID,pID),
foreign key (oID) references orderr(oID),
foreign key (pID) references product(pID)
);



INSERT INTO customer (cID, cName, cAge) VALUES 
(1, 'Minh Quan', 10),
(2, 'Ngoc Oanh', 20),
(3, 'Hong Ha', 50);

INSERT INTO orderr (oID, cID, oDate, oTotalPrice) VALUES 
(1, 1, '2006-03-21', NULL),
(2, 2, '2006-03-23', NULL),
(3, 1, '2006-03-16', NULL);

INSERT INTO product (pID, pName, pPrice) VALUES 
(1, 'May Giat', 3),
(2, 'Tu Lanh', 5),
(3, 'Dieu Hoa', 7),
(4, 'Quat', 1),
(5, 'Bep Dien', 2);

INSERT INTO orderDetail (oID, pID, odQTY) VALUES 
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(1, 5, 1),
(2, 1, 1),
(2, 5, 4),
(3, 3, 3);


select o.oID, o.oDate, o.oTotalPrice
from orderr o ;

select c.cname, p.pname
from customer c
join orderr o on c.cid = o.cid
join orderdetail od on o.oid = od.oid
join product p on od.pid = p.pid
group by c.cname, p.pname;

select c.cName
from customer c 
left join orderr o on o.cID = c.cID
where o.cID is null;


select o.oID, o.oDate , sum(od.odQTY * p.pPrice) as total
from orderr o
join orderDetail od on od.oID = o.oID
join product p on p.pID = od.pID
group by o.oID , o.oDate;
