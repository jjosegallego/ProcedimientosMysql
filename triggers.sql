drop trigger personas_before_update;
-- crear triger que cambie a minusculas el correo a actualizar
delimiter //
	create trigger personas_before_update
    before update on personas
    for each row
    begin
		if new.correo like '%gmail%' then
			signal sqlstate 'HY000'
            set message_text='correo invalido';
		else
			set new.correo=lower(new.correo);
		end if;
    end //
delimiter ;
update personas
set correo='micorreo@gmail.COM'
where id<2;

