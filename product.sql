create table products(  -- creo la tabla user2
id int not null auto_INCREMENT, -- creo columna "id" como tipo de dato entero y autoincremental
name varchar (50) not null, -- creo la columna "name" con un registro de 50 caracteres de longitud
created_by int not null, -- creo la columna "edad" como tipo de dato entero
marca varchar (50) not null, -- creo la columna "email" con un registro de 100 caracteres de longitud
PRIMARY KEY (id), 		-- defino el id como llave primaria
foreign key(created_by) references user(id)
);

rename table products to product; -- renombrar tabla

insert into product (name, created_by, marca)
values
	('ipad', 1, 'apple'),
    ('iphone', 1, 'apple'),
    ('watch', 2, 'apple'),
    ('macbook', 1, 'apple'),
    ('imac', 4, 'apple'),
    ('ipad mini', 1, 'apple');
    
select * from product;
select * from user2;
select u.id, u.email, p.name from user2 u left join product p on u.id = p.created_by; 

select u.id, u.email, p.name from user2 u right join product p on u.id = p.created_by;

select u.id, u.email, p.name from user2 u inner join product p on u.id = p.created_by;

drop table user3;