create schema if not exists `PeluqueriaCanina` default character set utf8mb4;
USE `PeluqueriaCanina`;
CREATE TABLE Dueno(
	dni int NOT NULL,
	nombre varchar (45) NOT NULL,
    apellido varchar (45) NOT NULL,
    telefono varchar (45) NOT NULL,
    direccion varchar (45) NOT NULL,
	PRIMARY KEY(dni)
)
engine = innodb;

CREATE TABLE Perro(
	Id_perro int NOT NULL,
    nombre varchar (100) NOT NULL,
    fecha_nac date NOT NULL,
    sexo varchar (100) NOT NULL,
    dni_dueno int  NOT NULL,
    PRIMARY KEY (Id_perro),
	FOREIGN KEY(dni_dueno) REFERENCES dueno(dni)
)
engine = innodb;
CREATE TABLE historial(
Id_historial int NOT NULL,
fecha date NOT NULL,
Perro int,
descripcion varchar (40),
monto float,
PRIMARY KEY (id_historial),
FOREIGN KEY(perro) REFERENCES Perro(id_perro)
)
engine = innodb;

insert into Dueno (
dni, nombre, apellido, telefono, direccion)
values ('1', 'Juan', 'Gomez', '88833122', 'Alta Cordoba');

insert into Dueno (
dni, nombre, apellido, telefono, direccion)
values ('2', 'Pepe', 'Argento', '34124122', 'Alta Cordoba');

insert into Dueno (
dni, nombre, apellido, telefono, direccion)
values ('3', 'Pedro', 'Uberti', '43121351', 'Los Paraisos');

insert into Dueno (
dni, nombre, apellido, telefono, direccion)
values ('4', 'Pablo', 'Cavazza', '11992421', 'La France');

insert into Perro (
Id_perro, nombre, fecha_nac, sexo, dni_dueno)
values ('1', 'Uma', '2020-03-04 10:00:00', 'Macho', '1');

insert into Perro (
Id_perro, nombre, fecha_nac, sexo, dni_dueno)
values ('2', 'Caro', '2022-06-03 12:00:00', 'Hembra', '2');

insert into Perro (
Id_perro, nombre, fecha_nac, sexo, dni_dueno)
values ('3', 'Camila', '2019-10-04 8:00:00', 'Macho', '3');

insert into Perro (
Id_perro, nombre, fecha_nac, sexo, dni_dueno)
values ('4', 'Dona', '2021-01-10 12:00:00', 'Macho', '4');

insert into historial (
Id_historial, fecha, Perro, descripcion, monto)
values ('1', '2020-03-04 10:00:00', '1', 'Salchicha', '31.5');

insert into historial (
Id_historial, fecha, Perro, descripcion, monto)
values ('2', '2022-06-03 12:00:00', '2', 'Siberiano', '26.3');

insert into historial (
Id_historial, fecha, Perro, descripcion, monto)
values ('3', '2019-10-04 8:00:00', '3', 'Salchicha', '30.1');

insert into historial (
Id_historial, fecha, Perro, descripcion, monto)
values ('4', '2021-01-10 12:00:00', '4', 'Pequines', '28.9');

select * from Perro where sexo = 'Macho' and (fecha_nac > '2020-01-01' and fecha_nac < '2022-12-01');