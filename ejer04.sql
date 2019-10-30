-- Ejercicio 4	
use  Tarea;

-- 1  
drop table if exists agenda;

-- 2 
Create table agenda(
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
	
	)engine=InnoDB;
	
-- 3 
show tables;

-- 4
 describe agenda;

-- 5
insert into agenda(nombre,domicilio,telefono)
	values('Alberto Mores','Colon 123', '4234567');
	
insert into agenda(nombre,domicilio,telefono)
	values('Juan Torres','Avellanada 135', '4458787');
	
-- 6 
 select * from agenda;	

-- 7
 drop table if exists agenda;

-- 8
 drop table agenda;
-- ERROR 1051 (42S02): Unknown table 'datos_amigos.agenda'
