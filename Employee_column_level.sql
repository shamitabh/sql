--describe all constraints of a table
select *
from INFORMATION_SCHEMA.table_constraints
where table_name = 'employee';

--describe all columns of a table
select *
from INFORMATION_SCHEMA.columns
where table_name = 'employee';

--drop primary key
alter table employee drop constraint employee_pkey;

--add primary key with custom constraint name
alter table employee add constraint emp_pk primary key(id);
alter table employee add constraint unique_column unique(<some-column>);

--add primary key with default constraint name
alter table employee add primary key(id);


--drop a column
alter table employee drop column name;

--insert columns
alter table employee 
add column fname varchar(100),
add column lname varchar(100);

--change data type of column, rename column
alter table employee add column remove int;
alter table employee alter column remove type decimal(2,2); 
alter table employee rename column remove to del_col;
alter table employee drop column del_col;

--set constraint for columns
alter table employee 
alter column fname set not null,
alter column lname set not null;

--remove constraint for columns
alter table employee 
alter column age drop not null;
