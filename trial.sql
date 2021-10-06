create table if not exists bst(
	N int,
	P int
);

select * from INFORMATION_SCHEMA.table_constraints where table_name='bst';


drop table if exists bst;


insert into bst values
(1, 2), (3, 2), (6, 8), (9, 8), (2, 5), (8, 5), (5, null);

select * from bst;