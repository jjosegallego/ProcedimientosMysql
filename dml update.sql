-- Incrementar un 10% a todos los montos de la tabla entrada salida de dinero
-- donde la fecha sea igual al 3 de enero de 2018
update entradasalidadinero
	set montoIE=montoIE+(montoIE*0.1)
    where (fechaES='2018-01-03');
select * from entradasalidadinero
	where (fechaES='2018-01-03');
    

-- cambiar el password a todos los usuarios cuyo correo del dueño sea de hotmail
select * from personas
	inner join usuarios on (personas.id=usuarios.idPersona)
	where (personas.correo like('%hotmail.com%'));
update usuarios
	inner join personas on (usuarios.idPersona=personas.id)
    set password ='nuevoPass2'
	where (personas.telefono like('4921301447%'));
update personas
	inner join usuarios on (usuarios.idPersona=personas.id)
    set personas.nombre = concat(personas.nombre,' apellido');

-- otro ejemplo relacion de tres tablas
select usuarios.nombre, apellidos.apellido from usuarios
	inner join apellidos on (usuarios.id=apellidos.id);
update personas
	inner join usuarios on (usuarios.idPersona=personas.id)
	inner join apellidos on (usuarios.id=apellidos.id)
	set personas.nombre = concat(personas.nombre,' ',apellidos.apellido);


select * from personas
	inner join usuarios on (usuarios.idPersona=personas.id)
		inner join apellidos on (usuarios.id=apellidos.id)
    



