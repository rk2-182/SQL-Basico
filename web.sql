#eliminar BD

drop database web;

#Crear BD
create database web;

#seleccionar BD
use web;

#Crear tabla
create table Usuario(
id int NOT NULL auto_increment,
email varchar(50),
username varchar(200),
primary key (id));

#agregar un campo
alter table Usuario add edad int;

#insertar datos
insert into Usuario (email,username,edad )values ('ricardoplus@live.cl','rk2-182',28);
insert into Usuario (email,username,edad )values ('mateo@gmail.com','matteo',17);
insert into Usuario (email,username,edad )values ('andrea.larosa@outlook.com','andrea',25);
insert into Usuario (email,username,edad )values ('gabriel.larosa@outlook.com','gabyx',33);
#mostrar datos
select * from Usuario;

#mostrar edad mayor a 20
select * from Usuario
where edad > 20;

#actualizar
update Usuario set edad = 2 where id = 2;

#eliminar
delete from Usuario where id = 4;

#agregar valor unico para email
alter table Usuario add unique (email);



