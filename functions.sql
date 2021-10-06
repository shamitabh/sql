--IF-ELSE/raise
create or replace function trial_func(rid int)
	returns varchar(200)
as 
$body$
declare full_name varchar(200);
begin
	select concat(fname, ' ', lname) into full_name from employee where id = rid;
	if full_name is null then
		raise exception 'No data found.';
	else
--		this will show in the output
		raise notice 'Employee full name is %', full_name;
		return full_name;
	end if;
end
$body$
language plpgsql;

--call function
select trial_func(30);

--using WHILE loop
create or replace function trial_arr(n int)
returns int
as
$$
declare 
	i int := 0; 
	agg int := 0;
begin
	while i <= n loop
		agg = agg + 1;
		i = i + 1;
	end loop;
	return agg;
end
$$
language plpgsql;

--function call
select trial_arr(20); 

call trial_arr(20);