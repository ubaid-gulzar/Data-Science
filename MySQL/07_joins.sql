create database if not exists amazon;
use amazon;

create table customer(
customer_id int primary key auto_increment,
name varchar(30),
city varchar(30)
);

create table orders(
order_id int primary key auto_increment,
customer_id int,
amount int
)auto_increment = 101;

insert into customer
(name,city)
values
("Alice","Mumbai"),
("bob","delhi"),
("charlie","Bangloru"),
("David","Mumbai");

insert into orders
(customer_id,amount)
values
(1,500),
(1,900),
(2,300),
(5,700);

select * from customer;
select * from orders;

-- inner join
select * from customer
inner join orders
on customer.customer_id = orders.customer_id;

-- left join
select * from customer c 
left join orders o
on c.customer_id = o.customer_id; 

-- right join
select * from customer c 
right join orders o
on c.customer_id = o.customer_id;  

-- outer join
select * from customer c 
left join orders o
on c.customer_id = o.customer_id
UNION
select * from customer c 
right join orders o
on c.customer_id = o.customer_id; 

-- cross join
select * from customer
cross join orders;

-- self join
select * from customer as a
join customer as b
on  a.name = b.name;

-- left exclusive join
select * from customer c
left join orders o
on c.customer_id = o.customer_id
where o.customer_id is null;