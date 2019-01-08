-- muestra privilegios
show privileges;


-- crear un usuario llamado usuario con password 12345 en localhost
-- despues crearlo por medio de la herramienta management pero con nombre usuario1
create user usuario@localhost identified by '12345';


-- seleccionar usuario y host de la tabla user de la bd mysql
use mysql;
select user,host from user;


-- asignar todos los privilegios
grant all
on ejemplo2.*
to usuario@localhost;


-- crear usuario llamado usuario2 con password=321 que solo tenga permisos de insertar datos
create user usuario2@localhost identified by '321';

grant select, insert
on ejemplo2.*
to usuario2@localhost;