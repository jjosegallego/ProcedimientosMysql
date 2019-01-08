-- creando un procedimiento que llame un mensaje
delimiter //
	create procedure prueba()
    begin
		declare cantidadNuevos int; 
        
		select count(*)
        into cantidadNuevos
        from pendientes
        inner join estatuspendiente on (estatuspendiente.id=pendientes.idEstatusPendiente)
        where estatuspendiente.estatus='nuevo';
    
    
		select  cantidadNuevos as usuariosnuevos, 
			'Esta es una prueba' as mensaje,
			'Esta es una prueba 2' as mensaje2;
	end//
delimiter ;

-- llamando el procedure
call prueba();

-- eliminando procedimiento
drop procedure prueba;