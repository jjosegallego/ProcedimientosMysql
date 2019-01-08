drop procedure pruebaIf;


delimiter //
	create procedure pruebaIf(in varIdPersonaAsignado int, out frase varchar (50), out persona varchar(50))
    begin
		declare totalPendientes int;
        select count(*)
			into totalPendientes
			from pendientes
			where (idPersonaAsignado=varIdPersonaAsignado);
        
        select nombre
			into persona
			from personas
			where id=varIdPersonaAsignado;
        
        if totalPendientes=0 then
			set frase='No tiene pendientes';
		elseif totalPendientes > 0 and totalPendientes < 3 then
			set frase=concat('tiene pendientes ',totalPendientes, ' ','pendientes');
		elseif totalPendientes >= 4 then
			set frase='Tiene mucho trabajo';
        end if;
        
        
        
    end //
delimiter ;

call pruebaIf(5,@frase,@persona);
select @frase,@persona;