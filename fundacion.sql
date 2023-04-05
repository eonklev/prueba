#drop database fundacion
create database fundacion;
use fundacion;

create table Empresas(
id int auto_increment,
nombre varchar (150),
contacto varchar (150),
email varchar(9) unique,
telefono char (9),
direccion varchar (150),
primary key (id)
);

create table Practicas(
id int auto_increment,
mañana varchar (150),
tarde varchar (150),
completa varchar(9) unique,
fk_alumnos int,
primary key (id)
);

create table Alumnos(
id int auto_increment,
nombre varchar (150),
apellido varchar (150),
dni char (9),
tipo_practicas varchar (150),
fk_practicas int,
fk_empresas int,
primary key (id),
foreign key (fk_practicas) references Practicas (id),
foreign key (fk_empresas) references Empresas (id)
);


    INSERT INTO  Alumnos VALUES (NULL,"LUIS" "ALVAREZ", "13757558S", "completa", "null""null");


