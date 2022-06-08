

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
 select *from roles_salary; 


insert into roles_salary  (id, id_role , id_salary)
values (1,23,15),
       (2,13,13);
      
insert into roles_salary  (id, id_role , id_salary)
values (default ,21,10),
       (default ,11,11),
       (default ,20,10);
      
insert into roles_salary  (id, id_role , id_salary)
values (default ,9,5),
       (default ,8,2),
       (default ,7,10),
       (default ,5,5),
       (default ,17,11),
       (default ,18,7),
       (default ,4,14);
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

HW_3

create table City(
         id serial ,
         title varchar (30)
)

insert into City (title)
values ('Warsaw'),
       ('Dubai'),
       ('Budapest'), 
       ('New York'); 
      
select *from City;

create table Persons(
       person_name varchar(80),
       city_id int
);

insert into Persons (person_name, city_id)
values ('Alex',2),
       ('Dmity',4),
       ('Vadim',2),
       ('Anna',1),
       ('Victor',5),
       ('Natalia',3),
       ('Sergey',1),
       ('Tanya',6);
      
insert into Persons (person_name, city_id)
values ('Alena',12),
       ('Darya',9);
      
select *from Persons ;    

select *from Persons join City 
on Persons.city_id = City.id;

select *from Persons left join City 
on Persons.city_id = City.id 

insert into City (title)
values ('Krakuw'),
       ('Istambul');
      
update City
set title ='Krakow'
where title = 'Krakuw';

insert into City (title)
values ('Gdansk'),
       ('Larnaka');

select *from Persons right join City 
on Persons.city_id = City.id;

select *from Persons full join City 
on Persons.city_id = City.id;

select *from roles 
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id;

select roles. role_name , salary. monthly_salary from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id;

select roles. role_name , salary. monthly_salary from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
where monthly_salary > 2000;

select count(*) from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
where monthly_salary > 2000;

select sum(monthly_salary) from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
where monthly_salary > 2000;

 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees.employee_name , salary. monthly_salary from employees     
join employee_salary  on employees.id = employee_salary.employee_id  
join salary on employee_salary.salary_id  = salary.id;

 --2. Вывести всех работников у которых ЗП меньше 2000.

select employees.employee_name , salary. monthly_salary from employees     
join employee_salary  on employees.id = employee_salary.employee_id  
join salary on employee_salary.salary_id  = salary.id
where monthly_salary < 2000;

 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select * from roles 
left join roles_employee on roles.id = roles_employee.role_id  
full  join roles_salary on roles_salary.id_role = roles_employee.role_id
full  join salary on salary.id = roles_salary.id_salary;  

select roles.role_name, monthly_salary  from roles 
left join roles_employee on roles.id = roles_employee.role_id  
full  join roles_salary on roles_salary.id_role = roles_employee.role_id
full  join salary on salary.id = roles_salary.id_salary 
where employee_id is null; 

 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select roles.role_name, monthly_salary  from roles 
full  join roles_employee on roles.id = roles_employee.role_id  
full  join roles_salary on roles_salary.id_role = roles_employee.role_id
full  join salary on salary.id = roles_salary.id_salary 
where employee_id is null and monthly_salary < 2000;

 --5. Найти всех работников кому не начислена ЗП.

select employee_name , monthly_salary  from employees 
left  join employee_salary on employees.id = employee_salary.employee_id 
left  join salary on salary.id = employee_salary.salary_id  
where monthly_salary is null;

 --6. Вывести всех работников с названиями их должности.

select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee. role_id; 



--7. Вывести имена и должность только Java разработчиков.

select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee. role_id
where role_name like '%Java%';


 --8. Вывести имена и должность только Python разработчиков.

select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee. role_id
where role_name like '%Python%'; 

 --9. Вывести имена и должность всех QA инженеров.

select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee. role_id
where role_name like '%QA%'; 

 --10. Вывести имена и должность ручных QA инженеров.

select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee. role_id
where role_name like '%Manual QA%'; 

 --11. Вывести имена и должность автоматизаторов QA

select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee. role_id
where role_name like '%Automation QA%'; 

 --12. Вывести имена и зарплаты Junior специалистов

select employee_name, role_name, monthly_salary  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee. role_id
join employee_salary on employee_salary.employee_id = employees.id  
join salary on salary.id = employee_salary.salary_id  
where role_name like '%Junior%'; 

 --13. Вывести имена и зарплаты Middle специалистов

select employee_name, role_name, monthly_salary  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee. role_id
join employee_salary on employee_salary.employee_id = employees.id  
join salary on salary.id = employee_salary.salary_id  
where role_name like '%Middle%'; 

 --14. Вывести имена и зарплаты Senior специалистов

select employee_name, role_name, monthly_salary  from employees
full join roles_employee on employees.id = roles_employee.employee_id 
full join roles on roles.id = roles_employee. role_id
full join employee_salary on employee_salary.employee_id = employees.id  
full join salary on salary.id = employee_salary.salary_id  
where role_name like '%Senior%'; 

 --15. Вывести зарплаты Java разработчиков

select *  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employees.id  
join salary on salary.id = employee_salary.salary_id  
where role_name like '%Java%'; 


select *  from salary  
full join roles_salary on salary.id = roles_salary.id_role 
full join roles on roles.id = roles_salary.id_role 
where role_name like '%Java%';

select role_name, monthly_salary  from roles 
join roles_salary on roles.id = roles_salary.id_role 
join salary on salary.id = roles_salary.id_salary 
where role_name like '%Java%';

 --16. Вывести зарплаты Python разработчиков

select role_name, monthly_salary  from roles 
full join roles_salary on roles.id = roles_salary.id_role 
full join salary on salary.id = roles_salary.id_salary 
where role_name like '%Python%';

 --17. Вывести имена и зарплаты Junior Python разработчиков

select employee_name, role_name, monthly_salary  from employees
full join roles_employee on employees.id = roles_employee.employee_id 
full join roles on roles.id = roles_employee. role_id
full join employee_salary on employee_salary.employee_id = employees.id  
full join salary on salary.id = employee_salary.salary_id  
where role_name like '%Junior Python%'; 


 --18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, role_name, monthly_salary  from employees
full join roles_employee on employees.id = roles_employee.employee_id 
full join roles on roles.id = roles_employee. role_id
full join employee_salary on employee_salary.employee_id = employees.id  
full join salary on salary.id = employee_salary.salary_id  
where role_name like '%Middle JavaScript%'; 

 --19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, role_name, monthly_salary  from employees
full join roles_employee on employees.id = roles_employee.employee_id 
full join roles on roles.id = roles_employee. role_id
full join employee_salary on employee_salary.employee_id = employees.id  
full join salary on salary.id = employee_salary.salary_id  
where role_name like '%Senior Java %'; 

select employee_name, role_name, monthly_salary  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employees.id  
join salary on salary.id = employee_salary.salary_id  
where role_name like '%Senior Java %'; 

 --20. Вывести зарплаты Junior QA инженеров

select role_name, monthly_salary  from roles 
full join roles_salary on roles.id = roles_salary.id_role 
full join salary on salary.id = roles_salary.id_salary 
where role_name = 'Junior Manual QA engineer' or role_name = 'Junior Automation QA engineer';

 --21. Вывести среднюю зарплату всех Junior специалистов

select monthly_salary from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
where role_name like '%Junior%'; 

select avg(monthly_salary) from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
where role_name like '%Junior%'; 

 --22. Вывести сумму зарплат JS разработчиков

select sum(monthly_salary) from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
where role_name like '%JavaScript%'; 


 --23. Вывести минимальную ЗП QA инженеров

select min(monthly_salary) from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
where role_name like '%QA%'; 

 --24. Вывести максимальную ЗП QA инженеров

select max(monthly_salary) from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
where role_name like '%QA%'; 

 --25. Вывести количество QA инженеров

select count(role_name)  from roles      
join roles_employee on roles.id = roles_employee.role_id  
join employees on employees.id = roles_employee.employee_id 
where role_name like '%QA%'; 

 --26. Вывести количество Middle специалистов.

select count(role_name)  from roles      
join roles_employee on roles.id = roles_employee.role_id  
join employees on employees.id = roles_employee.employee_id 
where role_name like '%Middle%'; 

 --27. Вывести количество разработчиков

select count(role_name)  from roles      
join roles_employee on roles.id = roles_employee.role_id  
join employees on employees.id = roles_employee.employee_id 
where role_name like '%developer%'; 

 --28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary) from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
join roles_employee on roles.id = roles_employee.role_id 
join employees on employees.id = roles_employee.employee_id 
where role_name like '%developer%'; 

 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select monthly_salary, employee_name, role_name  from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
join roles_employee on roles.id = roles_employee.role_id 
join employees on employees.id = roles_employee.employee_id 
order by monthly_salary ; 

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select monthly_salary, employee_name, role_name  from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
join roles_employee on roles.id = roles_employee.role_id 
join employees on employees.id = roles_employee.employee_id 
where monthly_salary >= 1700 and monthly_salary <= 2300
order by monthly_salary ;

 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select monthly_salary, employee_name, role_name  from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
join roles_employee on roles.id = roles_employee.role_id 
join employees on employees.id = roles_employee.employee_id 
where monthly_salary  < 2300
order by monthly_salary ;

 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select monthly_salary, employee_name, role_name  from roles      
join roles_salary on roles.id = roles_salary.id_role 
join salary on roles_salary.id_salary = salary.id
join roles_employee on roles.id = roles_employee.role_id 
join employees on employees.id = roles_employee.employee_id 
where monthly_salary = 1100 or monthly_salary =1500 or monthly_salary = 2000 
order by monthly_salary ;








       
       
       
       
       

       
         


       
      