#CREANDO BASE DE DATOS, TABLAS Y SUS RELACIONES

create schema if not exists `PeluqueriaCanina` default character set utf8mb4;
use `PeluqueriaCanina`;
create table Dueno(
	dni int  not null,
	nombre varchar (45) not null,
    apellido varchar (45) not null,
    telefono varchar (45) not null,
    direccion varchar (45) not null,
	primary key(dni)
)
engine = innodb;

CREATE TABLE  Perro(
	Id_perro int NOT NULL,
    nombre VARCHAR (100) NOT NULL,
    fecha_nac date NOT NULL,
    sexo VARCHAR (100) NOT NULL,
    dni_dueno int  NOT NULL,
    PRIMARY KEY (Id_perro),
	FOREIGN KEY(dni_dueno) REFERENCES dueno(dni)
)
engine = innodb;
CREATE TABLE  historial(
Id_historial int NOT NULL,
fecha date NOT NULL,
Perro int,
descripcion VARCHAR(40),
monto float,
PRIMARY KEY (id_historial),
FOREIGN KEY(perro) REFERENCES Perro(id_perro)
)
engine = innodb;

#INSERTANDO DATOS EN LAS TABLAS CORRESPONDIENTES

INSERT INTO dueno
(dni, nombre, apellido, telefono, direccion)
value
(35358976, 'Jose', 'Perez', '1150457673', 'ciduad de la paz 3252'),
(34485926, 'Pedro', 'Perez', '1150546737', 'gaona 5800'),
(41586372, 'Monica', 'Gutierrez', '1134876512', 'gallo 2000'),
(38508729, 'Rosario', 'Paredes', '1190786543', 'Av. Rivadavia 3200'),
(45110305, 'Andres', 'Garcia', '11657834623', 'Piedra Buena 5000');

INSERT INTO perro
(id_perro, nombre, fecha_nac, sexo, dni_dueno)
value
 (100, 'fox', '2010-10-25', 'macho', 35358976),
 (101, 'laika', '2015-09-10', 'Hembra', 34485926),
 (102, 'odesa', '2020-05-20', 'Hembra', 41586372),
 (103, 'valor', '2020-10-20', 'Macho', 38508729),
 (104, 'tino', '2020-10-20', 'Macho', 45110305);

insert into historial
(Id_historial, fecha, perro,descripcion,monto)
values
(1, '2021-06-28', 100, 'Baño ', 1500),
(2, '2021-06-28', 100, 'corte de pelo', 1000),
(3, '2021-07-10', 102, 'Baño y corte de pelo', 2500),
(4, '2021-08-29', 103, 'Baño y corte de pelo', 2500),
(5, '2022-07-10', 104, 'desparacitacion', 2000),
(6, '2022-07-10', 102, 'Baño y corte de pelo', 2500),
(7, '2022-07-15', 100, 'Baño y corte de pelo', 2500),
(8, '2022-08-10', 103, 'Baño y desparacitacion', 3500);

#Obtener los ingresos percibidos en Julio del 2022

SELECT perro AS Id_perro, fecha, monto as Ingresos_En_Julio from historial 
WHERE(SELECT YEAR(fecha))='2022'
AND (SELECT MONTH(fecha))='07';








