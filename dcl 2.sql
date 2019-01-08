-- muestra los permisos actuales de usuario2@localhost
show grants for usuario2@localhost ;


-- revoca o elimina dichos permisos
revoke all, grant option from usuario2@localhost;


-- elimina al usuario
drop user user1@localhost;
drop user usuario@localhost;



-- muestra la lista de usuarios
use mysql;
select user, host from user;



-- renombra a usuario y llamalo user1
rename user usuario2@localhost to user1@localhost;