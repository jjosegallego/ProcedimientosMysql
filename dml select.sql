#Instrucciones SQL

#select
select * from usuarios;

select * from usuarios order by nombre desc;

select nombre,password from usuarios order by nombre;


select fechaES,idTipoIngEg,montoIE,montoIE*2 as multiplicado 
	from entradasalidadinero 
	where idTipoIngEg=34 and (fechaES between '2018-01-01' and '2018-01-31')
    order by multiplicado desc;

select distinct concat('id= ',idTipoIngEg,'  Monto=',montoIE,' ',date_format(fechaES,'%d')) as salida
-- select distinct concat('id= ',idTipoIngEg,'  Monto=',montoIE,' ',fechaES)
	from entradasalidadinero;
    
select *
	from entradasalidadinero
    where fechaES > current_date();
    

select nombre
	from personas
    where left(telefono,3) ='493' or  left(telefono,3)='492';

select nombre
	from personas
    where left(telefono,3)in('492');

select *
	from personas
    where length(nombre)<=4;
   
select * from personas
    where nombre in(select nombre from personas
					where length(nombre)<=4);
    
select nombre, correo, telefono
	from personas
    where (left(telefono,3)in('493')) and (correo like('%hotmail%'));
    
select * from personas
	where correo like ('%hotmail%')
    order by nombre,telefono
    limit 3;