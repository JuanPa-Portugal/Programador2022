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