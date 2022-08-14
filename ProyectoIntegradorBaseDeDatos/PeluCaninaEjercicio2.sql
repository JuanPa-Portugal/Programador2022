#Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

create database peluqueriacanina;
use peluqueriacanina;


create table dueno
(
dni int,
nombre varchar(50),
apellido varchar(50),
telefono bigint,
direccion varchar(70),
constraint pk_dni primary key(dni)
);


create table perro 
(
id_perro int,
nombre_perro varchar(50),
nacimiento_perro datetime,
sexo_perro varchar(7),
c1_dni_dueno int,
constraint pk_pe primary key(id_perro),
constraint fk_cl1 foreign key(c1_dni_dueno) references dueno (dni)
);


create table historial 
(
id_historial int,
fecha datetime,
c2_perro int,
descripcion varchar(120),
monto float,
constraint pk_his primary key(id_historial),
constraint fk_cl2 foreign key(c2_perro) references perro (id_perro)
);



INSERT INTO dueno 
 VALUES (34567432,"Pedro","piazza",35134565437,"AvenidaInventada 4456");
INSERT INTO dueno VALUES (40750894, "Juan", "Rodriguez", 35134323123, "AvenidaSiempreViva 123");

INSERT INTO perro (id_perro, nombre_perro, nacimiento_perro, sexo_perro, c1_dni_dueno)
 VALUES (1,"Toby","2022-08-12 10:10:10","M",34567432) ;
INSERT INTO perro VALUES (2, "firulais", "2019-09-14 11:11:11", "F", 40750894);
SELECT*FROM dueno, perro ;
