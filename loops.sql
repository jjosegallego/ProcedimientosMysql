drop procedure usoWhile;

delimiter //
create procedure usoWhile()
begin
	
    declare cont int default 1;
    declare s varchar(100) default '';
    
    while cont<10 do
		set s=concat(s,' cont= ', cont, '|');
		set cont=cont+1;
    end while;
    select s as mensaje;
    
end//
delimiter ;
call usoWhile();


-- repeat
delimiter //
create procedure usorepeat()
begin
	
    declare cont int default 1;
    declare s varchar(100) default '';
    
   repeat
        set s=concat(s,' cont= ', cont, '|');
		set cont=cont+1;
    until cont>5
    end repeat;
    select s as mensaje;
    
end//
delimiter ;
call usorepeat();

-- loop
drop procedure usoloop;
delimiter //
create procedure usoloop()
begin
	
    declare cont int default 1;
    declare s varchar(100) default '';
    declare test varchar(10);
	
    test:loop
		 set s=concat(s,' cont= ', cont, '|');
		 set cont=cont+1;
         
         if cont<5 then
			leave test;
         end if;
         
	end loop test;
    
    select s as mensaje;
    
    
end//
delimiter ;
call usoloop();
