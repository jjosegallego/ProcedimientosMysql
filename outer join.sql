select * from personas;

select * from dbempleados.employees;


-- insert into  dbempleados.employees
-- values(1,'1989-06-23','Juan Jose', 'Gallego Mesa', 'M', '2012-04-22');

select *  from personas
	left join dbempleados.employees on (dbempleados.employees.emp_no=personas.id);