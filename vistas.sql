-- creando una vista con una sola tabla
-- la tabla de  personas y solo mostrando 2 campos
create view personasView as
	select nombre, correo from Personas;
    
-- Ejecutando la vista
select * from personasview;

-- modificando vista
create or replace view personasView as
	select nombre from Personas;
    
-- miselaneo
create or replace view personasView as
	select nombre,correo from Personas
    where (correo regexp('hotmail.com$')) or (correo regexp('yahoo.com$')); 
    

-- selecciona las personas que tengan mas de 8 movimientos y ademas la suma 
-- de dichos movimientos de la tabla entradasalidadinero
select nombre, count(*) , sum(montoie)
	from entradasalidadinero
	inner join Personas on (personas.id=entradasalidadinero.idPersonasQueRegistro)
	group by 1
    having count(*) > 8




