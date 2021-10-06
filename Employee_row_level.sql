--insert rows
insert into employee(fname, lname, age) values
('Kabir', 'Das', 36), ('Kabir', 'Das', 37), ('Kabir', 'Das', 38), ('Kabir', 'Das', 39),
('Amit', 'Pal', 36), ('Amit', 'Pal', 37), ('Amit', 'Pal', 35), ('Amit', 'Pal', 36),
('Ali', 'Ababua', 28);


select * from employee;

select * from employee where left(fname, 1)='K';

--minimum age grouped by fname
select fname, min(age) from employee group by fname;

select position('a' in fname) as doggy from employee;

select rtrim(fname) from employee;
--distinct rows
--for multiple columns, DISTICT will look for unique combination of each column specified
select distinct id,  age, fname, lname from employee;

--HAVING can be used with aggregated/grouped data unlike WHERE
select fname, lname, count(fname) from employee group by fname, lname having count(fname) > 2;

--group by
select fname, lname, count(fname) as emp_count from employee group by fname, lname;

--use of row_number() function to get row number of each row for a given condition
select *, row_number() over(partition by fname, lname) as cte_row_id from employee;

--use of cte(common table expression)
with employee_cte as(
	select *, row_number() over(partition by fname, lname) as cte_row_id from employee
) 
delete from employee where id in (select id from employee_cte where cte_row_id > 1);

--concat
select distinct concat(fname, ' ', lname) from employee;
