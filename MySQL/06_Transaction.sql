create database prime;
use prime;

create table accounts(
id int primary key auto_increment,
name varchar(50),
balance decimal(10,2)
);

insert into accounts
(name,balance)
values
("adam",500.00),
("bob",300.00),
("charlie",1000.00);

select * from accounts;

/* update accounts set balance = balance -50 where id =1 */
/* update accounts set balance = balance + 50 where id =2 */

start transaction;
update accounts
set balance = balance - 50 
where id = 1;
update accounts
set balance = balance + 50 
where id = 2;
commit;

start transaction;
update accounts
set balance = balance - 100 
where id = 1;
update accounts
set balance = balance + 100
where id = 3;
rollback;

start transaction;
update accounts
set balance = balance + 50 
where id = 1;
savepoint s1;
update accounts
set balance = balance + 10
where id = 1;
rollback to s1;
commit;

select * from accounts;