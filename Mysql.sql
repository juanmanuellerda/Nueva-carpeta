create table user2(  -- creo la tabla user2
id int not null auto_INCREMENT, -- creo columna "id" como tipo de dato entero y autoincremental
name varchar (50) not null, -- creo la columna "name" con un registro de 50 caracteres de longitud
edad int not null, -- creo la columna "edad" como tipo de dato entero
email varchar (100) not null, -- creo la columna "email" con un registro de 100 caracteres de longitud
PRIMARY KEY (id) 		-- defino el id como llave primaria
);

insert into user2 (name, edad, email) values ('oscar', 25, 'oscar@gmail.com'); -- cargo el registro con los tres datos
insert into user2 (name, edad, email) values ('layla', 15, 'layla@gmail.com');
insert into user2 (name, edad, email) values ('Nicolas', 36, 'Nicolas@gmail.com');
insert into user2 (name, edad, email) values ('Chanchito', 7, 'Chanchito@gmail.com');

select * from user2; -- consulto la tabla user2 y devuelve todo su contenido
select * from user2 limit 1;  -- consulto la tabla user2 y devuelve el contenido del primer registro
select * from user2 where edad > 15; -- consulto la tabla user2 y devuelve el contenido de la columna edad en la que sus datos sean mayores que 15
select * from user2 where edad >= 15; -- consulto la tabla user2 y devuelve el contenido de la columna edad en la que sus datos sean mayores e igual que 15
select * from user2 where edad > 20 and email = 'oscar@gmail.com'; -- devuelve el contenido de la columna edad > 20 y la columna email = oscar@gmail.com
select * from user2 where edad = 7 or email = 'oscar@gmail.com';
select * from user2 where edad != 7;
select * from user2 where edad between 20 and 30; -- devuelve edad entre 20 y 30

select * from user2 where email like '%gmail%'; -- antes puede ser cualquier cosa, despues de gmail puede ser cualquier cosa
select * from user2 where email like '%gmail'; -- antes puede ser cualquier cosa, despues debe terminar en gmail

select * from user2 order by edad asc;  -- consulto en la tabla la columna edad y la devuelvo ordenada de forma ascendente
select * from user2 order by edad desc; -- consulto en la tabla la columna edad y la devuelvo ordenada de forma descendente

select max(edad) as mayor from user2;  -- consulto la tabla user2 la columna "edad" el mayor valor
select min(edad) as menor from user2;

select id as ID, name as lista from user2;  -- consulta la tabla user2 devolviendo la columna id y name y las renombra como ID y lista



