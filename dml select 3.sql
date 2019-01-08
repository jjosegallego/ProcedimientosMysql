select count(*) from employees;

-- coincidencia en cualquier lugar de la palabra
select * from employees
	where (first_name like '%sa%') and (last_name like '%sa%');
    
-- coincidencia al principio de la palabra
select * from employees
	where (first_name regexp ('^sa')) and (last_name regexp ('^sa'));

-- coincidencia al final de la palabra
select * from employees
	where (first_name regexp ('na$')) and (last_name regexp ('na$'));

-- coincidencia de 2 parametros
select * from employees
	where (first_name regexp ('rs|sn')) and (last_name regexp ('rs|sn|an'));
    
-- Miselanea
select * from employees
	where (first_name regexp ('n[ia]')) and (last_name regexp ('n[ue]'));

-- Miselanea
select * from employees
	where (first_name regexp ('n[a-f]')) and (last_name regexp ('n[f-k]'));

-- Miselanea
select * from employees
	where (first_name regexp ('[a-z][aeiou]n$'));