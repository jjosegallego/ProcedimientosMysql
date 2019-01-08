-- Borrar los registros que el tamaño de cadena del nombre sea mayor
-- o igual a 15 de la tabla temporalpersonas
delete from tmppersonas
	where (length(nombre)>=15);

-- Borrar todos los registros de la tabla usuarios que esten dentro de la tabla personas
delete from usuarios
	where idPersona in(select id from personas where id<=3)
	
