CREATE DATABASE IF NOT EXISTS instagram;
use instagram;
select * from users;
/* update followers of users having age 22 to 800 */
set SQL_SAFE_UPDATES = 0;    

update users
set followers = 800
where age = 22;

insert into users 
values
(6,"abcd",44,"abcd@gmail.com",456,554);

select * from users;

DELETE FROM users
WHERE age > 35;

create table likes_button(
id int primary key,
likes int default 0
);

insert into likes_button
values
(1,324),
(2,567),
(3,543);

select * from likes_button;

delete from likes_button;

select * from likes_button;

insert into likes_button
values
(1,324),
(2,567),
(3,543);

alter table likes_button
add column color varchar(30) default "red";

select * from likes_button;

alter table likes_button
drop column color;

select * from likes_button;

alter table likes_button
rename to insta_likes;

show tables;

alter table insta_likes
rename to likes_button;

show tables;

alter table likes_button
change column id insta_id int;

select * from likes_button;

alter table likes_button
change column insta_id id int;

select * from likes_button;

truncate table likes_button;

select * from likes_button;
