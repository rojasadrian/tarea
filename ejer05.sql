-- Ejercicio 5	
use Tarea;

-- 1
  drop table if exists peliculas;

-- 2

create table peliculas(
  nombre varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );
 
-- 3
  describe peliculas;
 
-- 4
insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',120,3);
  
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',180,2);
  
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mujer bonita','Julia R.',90,3);
  
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',90,2);
  
-- 5 
 select * from peliculas;