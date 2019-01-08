drop procedure pruebaIf2;


delimiter //
	create procedure pruebaIf2(in varIdPersonaAsignado int, out frase varchar (50), out persona varchar(50))
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
		
        case 
			when totalPendientes>0 and totalPendientes<=3 then
				set frase=concat('tiene pendientes ',totalPendientes, ' ','pendientes');
			when totalPendientes >= 4 then
				set frase='Tiene mucho trabajo';
			else
				set frase='no tiene pendientes';
        end case;
        
    end //
delimiter ;

call pruebaIf2(2,@frase,@persona);
select @frase,@persona;