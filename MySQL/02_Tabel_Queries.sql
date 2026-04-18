CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE users(
    id INT,
    Name VARCHAR(30) not null,
    age int,
    email varchar(30) unique,
    followers int default 0, 
    following int default 0,
    constraint check( age >= 18 ),
    primary key(id)
);

create table post(
id int primary key,
content varchar(100),
user_id int,
foreign key(user_id) references users(id)
);

insert into users
(id,name,age,email,followers)
values
(1,"ubaid",21,"ubaiod@gmail.com",111),
(2,"sahil",21,"sahil@gmail.com",546),
(3,"kamran",22,"kamran@gmail.com",161),
(4,"moshin",31,"moshin@gmail.com",511);

insert into users
(id,name,age)
values
(5,"ubaid01",18);

select * from users;
select id,name from users;

insert into post
(id,content ,user_id)
values
(101,"rose_image",4),
(102,"forest_image",3),
(103,"war_video",2),
(104,"mountain_video",3);

select * from post
where id >102;

select * from users
where followers > 200; 

select * from users
where age + 1 =22;

select * from users
where age >= 22 and followers > 200;

select * from users
where age in (21,45,6,5);

select * from users
where age > 18
limit 2;

select * from users
order by followers asc;