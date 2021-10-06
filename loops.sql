--execute a code block outside a function or procedure


--WHILE
do 
$$
declare 
   counter integer := 0;
begin
   while counter < 5 loop
      raise notice 'Counter %', counter;
	  counter := counter + 1;
   end loop;
end$$;

--FOR
--type-1
do
$$
declare 
	item record;
begin
	for item in (select distinct * from employee) loop
		raise notice '% % is % years old', item.fname, item.lname, item.age;
	end loop;
end
$$

--type-2
do
$$
declare
	i int;
begin
	raise notice 'Forward order';
	for i in 1..6 loop
		raise notice 'Iteration-%', i;
	end loop;
	raise notice 'Reverse order';
	for i in reverse 6..1 loop
		raise notice 'Iteration-%', i;
	end loop;
	raise notice 'Stepped';
	for i in 1..6 by 2 loop
		raise notice 'Iteration-%', i;
	end loop;
end
$$