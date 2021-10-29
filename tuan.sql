use QuanLyBanHang;
insert into Customers (name, age)
    value ('Minh Quan', 10),
    ('Ngoc Oanh', 20),
    ('Hong Ha', 50);
insert into Orders (customerid, date)
    value (1, '2006-3-21'),
    (2, '2006-3-23'),
    (1, '2006-3-16');
insert into Products (name, price) value
    ('May giat', 3),
    ('Tu lanh', 5),
    ('Dieu hoa', 7),
    ('Quat', 1),
    ('Bep dien', 2);
insert into Orderdetail value
    (1, 1, 3),
    (1, 3, 7),
    (1, 4, 2),
    (2, 1, 1),
    (3, 1, 8),
    (2, 5, 4),
    (2, 3, 3);
select * from QuanLyBanHang.Orderdetail;
# tính tổng
select orderID as ma, sum(orderQuantity*price) as total
from Products
         join Orderdetail O on Products.id = O.productID group by ma;
use QuanLyBanHang;
# các mặt hàng được mua
select C.name, P.name
from Orders join Customers C on C.id = Orders.CustomerID
JOIN Orderdetail O on Orders.id = O.orderID
join Products P on P.id = O.productID;
# người không mua sp nào

select Customers.name from Customers
left join Orders O on Customers.id = O.CustomerID
where date is null ;






