insert into tmppersonas
values(12,'JuanJo','juanjo@gmail.com','2167471');


insert into personas
values(0,'JuanJo','juanjo@gmail.com','2167471');


insert into usuarios (nombre,password,idPersona)
values('JuanJo','juanjo@gmail.com', 100);


insert into tmppersonas values
(0,'JuanJo2','juanjo@gmail.com','2167471'),
(0,'JuanJo3','juanjo@gmail.com','2167471');


insert into tmppersonas
	select * from personas
	where correo like '%hotmail%';