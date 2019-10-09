
-- 1
drop table if exists empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos int,
  seccion varchar(20),
  primary key(documento)
 );

-- 2
 insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',300,0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',400,2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',400,3,'Secretaria');

-- 3
drop procedure if exists pa_empleados_sueldo;

-- 4
delimiter //
 create procedure pa_empleados_sueldo()
 begin
   select nombre,apellido,sueldo
     from empleados;
 end //
 delimiter ;

-- 5
 call pa_empleados_sueldo();

-- 6
 drop procedure if exists pa_empleados_hijos;

-- 7
 delimiter //
 create procedure pa_empleados_hijos()
 begin
   select nombre,apellido,cantidadhijos
     from empleados
   where cantidadhijos>0;
 end //
 delimiter ;

-- 8
call pa_empleados_hijos();

-- 9
update empleados set cantidadhijos=1 where documento='22333333';
 call pa_empleados_hijos();