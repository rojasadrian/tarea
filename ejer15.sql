-- Ejercicio 15	
use  Tarea;

-- 1
drop table if exists peliculas;

-- 2
 /*Tenga en cuenta el rango de valores que almacenar� cada campo:
 -codigo: entero a partir de 1, autoincrementable,
 -titulo: caracteres de 40 de longitud, no nulo,
 -actor: cadena de 20,
 -duracion: entero positivo,
 -clave primaria: codigo.*/
 
-- 3
  create table peliculas(
  codigo integer unsigned auto_increment,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion integer unsigned,
  primary key(codigo)
 )engine = InnoDB;
-- 4 
 describe peliculas;