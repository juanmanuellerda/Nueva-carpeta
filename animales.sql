create database holamundo;
show databases;
use holamundo;
create table animales (
id int,
tipo varchar (200),
estado varchar (200),
PRIMARY KEY (id) 		
);

-- insert into animales (tipo, estado) values ('chanchito', 'feliz');
alter table animales modify column id INT AUTO_INCREMENT;	
SHOW CREATE TABLE animales;	

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(200) DEFAULT NULL,
  `estado` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

insert into animales (tipo, estado) values ('chanchito', 'feliz');
insert into animales (tipo, estado) values ('dragon', 'feliz');
insert into animales (tipo, estado) values ('perro', 'loco');

select * from animales;

delete from animales where estado = 'feliz';

-- Error Code: 1175. You are using safe update mode and you tried to update a table without a 
-- WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> 
-- SQL Editor and reconnect.

delete from animales where id = 4;

insert into animales (tipo, estado) values ('perro', 'loco');
select * from animales;

update animales set estado = 'triste' where tipo = 'dragon';
	
-- Error Code: 1175. You are using safe update mode and you tried to update a table without a
-- WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> 
-- SQL Editor and reconnect.

update animales set estado = 'triste' where id = 3;


