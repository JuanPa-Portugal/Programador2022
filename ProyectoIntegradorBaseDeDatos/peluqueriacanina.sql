create database peluqueriacanina
use peluqueriacanina

--Tabla Dueno
create table dueno (
dni int,
nombre varchar(50),
apellido varchar(50),
telefono bigint,
direccion varchar(70),
constraint pk_dni primary key(dni)
)

--Tabla Perro
create table perro (
id_perro int,
nombre_perro varchar(50),
nacimiento_perro datetime,
sexo_perro varchar(7),
c1_dni_dueno int,
constraint pk_pe primary key(id_perro),
constraint fk_cl1 foreign key(c1_dni_dueno) references dueno (dni)
)

--Tabla Historial
create table historial (
id_historial int,
fecha datetime,
c2_perro int,
descripcion varchar(120),
monto float,
constraint pk_his primary key(id_historial),
constraint fk_cl2 foreign key(c2_perro) references perro (id_perro)
)


-- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
-- Agregamos un dueño:
insert into dueno values (123, 'Pedro', 'Perez', 114567899, 'B° Esquinas Mzna A Casa 3')
insert into dueno values (456, 'Julia', 'Diaz', 351772233, 'Esmeralda 1400')

-- Agregamos a sus perros (hermanos):
insert into perro values (1, 'Magda', '04/12/2020', 'Hembra', 123)
insert into perro values (2, 'Luna', '04/12/2020', 'Hembra', 123)
insert into perro values (3, 'Colita', '04/12/2020', 'Macho', 123)
insert into perro values (4, 'Tommy', '05/22/2017', 'Macho', 456)

--Agregamos visitas a cada perrito:
insert into historial values (1, '06/28/2020', 1, 'Baño y corte de pelo', 500)
insert into historial values (2, '06/28/2020', 2, 'Baño y corte de pelo', 500)
insert into historial values (3, '06/28/2020', 3, 'Baño y corte de pelo', 500)
insert into historial values (4, '07/20/2020', 1, 'Baño y corte de pelo', 750)
insert into historial values (5, '07/20/2020', 3, 'Baño y corte de pelo', 750)
insert into historial values (6, '09/03/2020', 1, 'Baño y corte de pelo', 870)
insert into historial values (7, '09/03/2020', 3, 'Baño y corte de pelo', 870)
insert into historial values (8, '10/05/2020', 4, 'Corte de pelo y desparasitario', 1000)


-- 5. Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro
select nombre_perro
from perro inner join dueno on perro.c1_dni_dueno=dueno.dni
where dueno.nombre='Pedro'