drop procedure transacciones;
delimiter //
create procedure transacciones()
begin
	declare sql_error tinyint default false;
    declare continue handler for sqlexception
		set sql_error=true;
	
    start transaction;
    
    if sql_error= false then
		commit;
        select 'la transaccion fue ejecutada';
    else
		rollback;
        select 'la transaccion no fue ejecutada';
    end if;


end //

delimiter ;