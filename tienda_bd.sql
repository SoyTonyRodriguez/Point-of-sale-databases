create database Tienda;
use tienda;
create table Usuarios(
Id_Usuario int AUTO_INCREMENT,
Nombre varchar(50),
email varchar(50),
telefono varchar(50),
username varchar(50),
password varchar(50),
estatus varchar(50),
registrado_por varchar(50),
primary key(Id_usuario)
);
/*Administrador*/
insert into usuarios(Id_Usuario,Nombre,email,telefono,username,password,estatus,registrado_por)
values(null,'Antonio','elgrantony@gmail.com','5569060332','Tony','123','Administrador','Tony');



select *from usuarios;/*Ver usuarios*/

create table pedidos(
id_pedido int AUTO_INCREMENT,
Producto varchar(50),
total int,
Id_Usuario int,
primary key(id_pedido),
foreign key (Id_Usuario) references Usuarios(Id_Usuario)
);

select *from pedidos;
