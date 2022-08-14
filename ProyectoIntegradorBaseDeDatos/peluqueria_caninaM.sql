CREATE DATABASE peluqueria_caninaM;
USE peluqeria_caninaM;

-- creando tabla dueno
CREATE TABLE dueno (
dni INT NOT NULL,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(50) NOT NULL,
telefono INT,
direccion VARCHAR(70),
PRIMARY KEY(dni)
);

-- creando tabla perro
CREATE TABLE perro (
id_perro INT AUTO_INCREMENT,
nombre_perro VARCHAR(50) NOT NULL,
nacimiento_perro DATE NOT NULL,
sexo_perro VARCHAR(7) NOT NULL,
dni_dueno INT,
PRIMARY KEY(id_perro),
CONSTRAINT fk_cl1 FOREIGN KEY(dni_dueno) REFERENCES dueno (dni)
);

-- creando tabla historial
CREATE TABLE historial (
id_historial INT NOT NULL AUTO_INCREMENT,
fecha DATE NOT NULL,
perro INT,
descripcion VARCHAR(100),
monto FLOAT,
PRIMARY KEY(id_historial),
CONSTRAINT fk_cl2 FOREIGN KEY(perro) REFERENCES perro (id_perro)
);

-- Agregamos a dueno:
INSERT INTO dueno VALUES (35689526, 'Daniel', 'Muñoz', 37969586, 'Barrio 17 de Agosto, calle Milan 1300');
INSERT INTO dueno VALUES (40234895, 'Luzmila', 'Martinez', 3792810, 'Barrio San Geronimo, calle Laprida');
INSERT INTO dueno VALUES (39071887, 'Ezequiel', 'Avalos', 3782212, 'Barrio Esperanza');
INSERT INTO dueno VALUES (41750431, 'Abril', 'Zeballos', 03732445, 'Lavalle 468');

-- Agregamos a perros
INSERT INTO perro VALUES (1, 'Milo', '2020-08-04', 'Macho', 35689526);
INSERT INTO perro VALUES (2, 'Uri', '2019-05-17', 'Hembra', 40234895);
INSERT INTO perro VALUES (3, 'Bosnia', '2021-10-09', 'Hembra', 35689526);
INSERT INTO perro VALUES (4, 'Boris', '2021-05-05', 'Macho', 39071887);
INSERT INTO perro VALUES (5, 'Pantera', '2018-05-22', 'Macho', 41750431);

-- Agregamos visitas de los perros:
INSERT INTO historial VALUES (1, '2020-09-06', 1, 'vacuna de parvovirus.', 700);
INSERT INTO historial VALUES (2, '2020-09-06', 2, 'Baño y corte de pelo', 500);
INSERT INTO historial VALUES (3, '2021-12-11', 3, 'vacuna denominada Polivalente', 700);
INSERT INTO historial VALUES (4, '2022-01-12', 1, 'Baño y corte de pelo', 750);
INSERT INTO historial VALUES (5, '2022-01-07', 3, 'Baño y corte de pelo', 750);
INSERT INTO historial VALUES (6, '2022-03-09', 5, 'Baño y corte de pelo', 750);
INSERT INTO historial VALUES (7, '2022-04-22', 3, 'Baño y corte de pelo', 850);
INSERT INTO historial VALUES (8, '2022-07-10', 5, 'Corte de pelo y refuerzo de vacuna contra la Rabia', 1700);

 -- Resolviendo Ejercicio 6 mediante la siguiente consulta:
SELECT A.nombre_perro, B.fecha FROM perro A INNER JOIN historial B
ON A.id_perro = B.perro
WHERE (SELECT YEAR(B.fecha)) = '2022';