use hr;
show tables;
select * from employees;
select first_name,first_name as FirstName ,last_name,last_name as LastName from employees;      /* q.no 1*/
select distinct department_id from employees;                                                      /* q.no 2*/
select * from employees order by first_name desc;                            /* q.no 3*/
select first_name,last_name,salary,((salary * 15)/100 )as PF from employees;          /* q.no 4*/
select employee_id,first_name,last_name,salary from employees order by salary asc;     /* q.no 5*/
select sum(salary) from employees;                                                     /* q.no 6*/
select max(salary),min(salary) from employees;                                            /* q.no 7*/
select avg(salary),count(employee_id) from employees;                                      /* q.no 8*/
select count(*) from employees;                                                               /* q.no 9*/
select count(distinct job_id) from employees;                                                /* q.no 10*/
select first_name,upper(first_name) from employees;                                           /* q.no 11*/
select first_name,left(first_name,3) from employees;                                           /* q.no 12*/
select first_name,trim(first_name) from employees;                                               /* q.no 13*/
select first_name,length(first_name),last_name,length(last_name),length(first_name)+length(last_name) as total_length from employees;   /* q.no 14*/
select first_name from employees where first_name like '0-9%';                                  /* q.no 15*/
select first_name,last_name,salary from employees where salary not between 10000 and 15000;       /* q.no 16*/
select first_name,last_name,department_id from employees where department_id in (30,100) order by department_id asc;         /* q.no 17*/
select first_name,last_name,salary from employees where salary not between 10000 and 15000 and department_id in (30,100);     /* q.no 18*/
select first_name,last_name,hire_date from employees where hire_date like '1987%';                                           /* q.no 19*/
select first_name from employees where first_name like '%b%' and first_name like '%c%';                                      /* q.no 20*/
select last_name,job_id,salary from employees where job_id in ('IT_PROG','SH_CLERK') and salary not in (4500,10000,15000);     /* q.no 21*/
select last_name from employees where length(last_name)=6;                                                                    /* q.no 22*/
select last_name from employees where last_name like '__e%';                                                            /* q.no 23*/
select job_id,group_concat(employee_id,'') as Employees_id from employees group by job_id;                            /* q.no 24*/
update employees set phone_number=replace(phone_number,'124','999') where phone_number like '%124%';                 /* q.no 25*/
select * from employees where length(first_name)>=8;                                                               /* q.no 26*/
select email,concat(email,'@example.com') as email_id from employees;                                              /* q.no 27*/
select phone_number,right(phone_number,4) as last_number from employees ;                                        /* q.no 28*/
select street_address,substring_index(street_address, ' ',-1) as lst_word from locations;                       /* q.no 29*/
select street_address,length(street_address) from locations where length(street_address)<=(select min(length(street_address)) from locations);  /* q.no 30*/
select job_title,substring_index(job_title,' ',1) as fst_word from jobs;                                          /* q.no 31*/
select first_name,last_name,length(first_name)as length from employees where last_name like '__c%';                  /* q.no 32*/
select first_name,length(first_name) as length from employees where first_name like'A%'or first_name like'J%'or first_name like'M%'order by first_name ;    /* q.no 33*/
select first_name,salary,lpad(salary,10,'$') as SALARY from employees;                                                            /* q.no 34*/
select first_name,substring(first_name,1,8),salary,lpad('',salary/1000+1,'$') as salary from employees order by salary desc;    /* q.no 35*/
select employee_id,first_name,last_name,hire_date from employees where day(hire_date)=7 or month(hire_date)=7;                /* q.no 36*/








select * from employees;




