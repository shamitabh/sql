--create a table
create table if not exists employee(
	id serial,
	name varchar(100),
	age int not null,
	primary key(id)
);

--drop a table
drop table if exists employee;

--create another table
create table if not exists branch(
	id serial,
	branch varchar(100) not null
);

--rename table
alter table employee rename to persons;
alter table persons rename to employee;

--truncate table
truncate table employee;

--if a column of primary key of employee is linked to foreign key of some other table
truncate table employee cascade;

