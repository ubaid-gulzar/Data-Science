create database if not exists instagram;
use instagram;

select * from users;
select * from post;

select count(email) from users;

select max(followers) from users;

select sum(age) from users
where age = 21;

select age,count(id) from users
group by age;

select age,max(followers) from users
group by age
having max(followers) >200;