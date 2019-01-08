drop procedure cursores;

delimiter //
create procedure cursores()
begin
	declare idPersonaVar int;
    declare telefonoVar varchar(50);
    declare filaNoEncontrada tinyint default false;
    declare actualizarCuenta int default 0;
    declare nombreVar varchar(50);
    
    -- cursor declaracion
    declare c cursor for
    select id, telefono, nombre from personas;
    -- where correo like '%hotmail.com%';
    
    -- manejo de errores cuando no se encuentren mas renglanos
    declare continue handler for not found
    set filaNoEncontrada =true;
    
    -- abrir el cursor
    open c; 
    while(filaNoEncontrada=false) do
		-- obteniendo valores del renglon
        fetch c into idPersonaVar,telefonoVar,nombreVar;
        select nombreVar; -- lo que quiero mostrar 
        if length(telefonoVar)>0 then
            update pendientes
            set observaciones=telefonoVar
            where id=idPersonaVar;
            set actualizarCuenta=actualizarCuenta+1; 
		else
			update pendientes
            set observaciones='solicitar telefono'
			where id=idPersonaVar;
            set actualizarCuenta=actualizarCuenta+1; 
        end if;
	end while;
    
    -- cerrando cursor
    close c;
    
    -- select concat(actualizarCuenta, ' Necesitan telefono');
    
    -- select (idPersonaVar);
    
end//
delimiter ;

call cursores;