

--SQL_DDL


--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees(
     id serial primary key,
     employee_name  varchar(50) unique  not null
);


insert into employees(employee_name)
values ('Anna Ploye'),
       ('Anna Bela'),
       ('Anna Krasna'),
       ('Anna Charna'),
       ('Anna Zelena'),
       ('Anna Siniaja'),
       ('Anna Gouta'),
       ('Anna Rugova'),
       ('Anna Fijaletova'),
       ('Anna Orangova'),
       ('Olga Employe'),
       ('Olga Bela'),
       ('Olga Krasna'),
       ('Olga Charna'),
       ('Olga Zelena'),
       ('Olga Siniaja'),
       ('Olga Gouta'),
       ('Olga Rugova'),
       ('Olga Fijaletova'),
       ('Olga Orangova'),
       ('Elena Employe'),
       ('Elena Bela'),
       ('Elena Krasna'),
       ('Elena Charna'),
       ('Elena Zelena'),
       ('Elena Siniaja'),
       ('Elena Gouta'),
       ('Elena Rugova'),
       ('Elena Fijaletova'),
       ('Elena Orangova'),
       ('Noemi Employe'),
       ('Noemi Bela'),
       ('Noemi Krasna'),
       ('Noemi Charna'),
       ('Noemi Zelena'),
       ('Noemi Siniaja'),
       ('Noemi Gouta'),
       ('Noemi Rugova'),
       ('Noemi Fijaletova'),
       ('NoemiOrangova'),
       ('Stas Employe'),
       ('Stas Beliav'),
       ('Stas Krasnov'),
       ('Stas Charnov'),
       ('Stas Zeleny'),
       ('Stas Siniy'),
       ('Stas Goutov'),
       ('Stas Rugovy'),
       ('Stas Fijaletov'),
       ('Stas Orangov'),
       ('Aliaksandr Employe'),
       ('Aliaksandr Beliav'),
       ('Aliaksandr Krasnov'),
       ('Aliaksandr Charnov'),
       ('Aliaksandr Zeleny'),
       ('Aliaksandr Siniy'),
       ('Aliaksandr Goutov'),
       ('Aliaksandr Rugovy'),
       ('Aliaksandr Fijaletov'),
       ('Aliaksandr Orangov'),
       ('Oleg Employe'),
       ('Oleg Beliav'),
       ('Oleg Krasnov'),
       ('Oleg Charnov'),
       ('Oleg Zeleny'),
       ('Oleg Siniy'),
       ('Oleg Goutov'),
       ('Oleg Rugovy'),
       ('Oleg Fijaletov'),
       ('Oleg Orangov');
      
      
select *from employees ;



--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
-- 1000
-- 1100
-- 1200
-- 1300
-- 1400
-- 1500
-- 1600
-- 1700
-- 1800
-- 1900
-- 2000
-- 2100
-- 2200
-- 2300
-- 2400
-- 2500

create table salary(
        id serial primary key,
        monthly_salary int not null
); 


insert into salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
      
      

select * from salary ;



--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary( 
          id serial primary key,
          employee_id int unique not null,
          salary_id int  not null
 );  

drop table employee_salary ;




insert into employee_salary (id, employee_id, salary_id)
values (1,3,7),
       (2,1,4),
       (3,5,9),
       (4,40,13),
       (5,23,4),
       (6,11,2),
       (7,52,10),
       (8,15,13),
       (9,26,4),
       (10,16,1),
       (11,33,7),
       (12,7,15),
       (13,9,8),
       (14,25,14),
       (15,32,8),
       (16,45,15),
       (17,64,10),
       (18,55,11),
       (19,56,12),
       (20,28,3),
       (21,31,5),
       (22,34,6),
       (23,35,7),
       (24,38,1),
       (25,41,15),
       (26,43,5),
       (27,44,6),
       (28,49,7),
       (29,59,13),
       (30,47,9),
       (31,71,5),
       (33,72,7),
       (34,73,8),
       (35,74,9),
       (36,75,10),
       (37,78,11),
       (38,80,13),
       (39,77,15),
       (40,76,1);
      
select *from employee_salary;

       
          
create table roles_salary(
     id serial primary key,
     id_role int not null,
     id_salary int not null,
     foreign key (id_role)
         references roles(id),
     foreign key (id_salary)
         references salary(id)    
); 


--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

create table roles(
        id serial primary key, 
        role_name int not null unique 
);

alter table roles
alter column role_name  type varchar(30) 



select *from  roles ;

insert into roles (role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
      
select * from roles ; 

--Добавить строки в таблицу 

insert into roles (id, role_name)
values (default,'Junior PHP developer' ),
       (default,'Junior HTML developer'),
       (default, 'Junior SwiftUI developer');


--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
---Наполнить таблицу roles_employee 40 строками:

create table roles_employee (
         id serial primary key,
         employee_id int not null unique,
         role_id int not null,
           foreign key (employee_id)
           references employees(id),
           foreign key (role_id)
           references roles(id)
);

select *from roles_employee ;

insert into roles_employee (id,employee_id, role_id)
values (1,7,2),
       (2,20,4),
       (3,3,9),
       (4,5,13),
       (5,23,4),
       (6,11,2),
       (7,10,9),
       (8,22,13),
       (9,21,3),
       (10,34,4),
       (11,6,7),
       (12,4,15),
       (13,8,17),
       (14,12,19),
       (15,18,18),
       (16,1,1),
       (17,24,20),
       (18,29,12),
       (19,32,10),
       (20,39,1),
       (21,17,2),
       (22,40,6),
       (23,55,9),
       (24,57,12),
       (25,58,7),
       (26,59,7),
       (27,61,15),
       (28,56,2),
       (29,44,1),
       (30,45,9),
       (31,70,2),
       (32,47,5),
       (33,33,8),
       (34,37,11),
       (35,46,5),
       (36,48,9),
       (37,49,7),
       (38,63,2),
       (39,65,3),
       (40,67,3);


select *from roles_employee ;








       
       
       
       
       

       
         


       
      