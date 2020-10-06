
--PARTE_1_--

CREATE TABLE trabajador(rut_trabajador VARCHAR(15) NOT NULL,
nombre_trabajador VARCHAR(100),
dirección_trabajador VARCHAR(100),
PRIMARY KEY(rut_trabajador));

CREATE TABLE liquidaciones (id_liquidación SERIAL NOT NULL,
rut_trabajador VARCHAR(15),
repositorio VARCHAR(100),
FOREIGN KEY (rut_trabajador) REFERENCES trabajador(rut_trabajador));

CREATE TABLE departamento (id_depatamento SERIAL NOT NULL,
rut_trabajador VARCHAR(15),
nombre_departamento VARCHAR(100),
FOREIGN KEY (rut_trabajador) REFERENCES trabajador(rut_trabajador));

--parte_2--

CREATE TABLE departamento_2(id_departamento_2 SERIAL NOT NULL,
nombre_departamento VARCHAR(100),
PRIMARY KEY(id_departamento_2));

CREATE TABLE curso(id_curso SERIAL NOT NULL,
id_departamento_2 INT,
nombre_curso VARCHAR(100),
FOREIGN KEY (id_departamento_2) REFERENCES departamento_2(id_departamento_2),
PRIMARY KEY(id_curso));

CREATE TABLE alumno(rut_alumno VARCHAR(15) NOT NULL,
id_curso INT,
nombre_alumno VARCHAR(100),
PRIMARY KEY(rut_alumno),
FOREIGN KEY (id_curso) REFERENCES curso(id_curso));

CREATE TABLE profesor(rut_profesor VARCHAR(15) NOT NULL,
nombre_profesor VARCHAR(100),
nombre_departamento VARCHAR(100),
PRIMARY KEY(rut_profesor));

CREATE TABLE pruebas(id_pruebas SERIAL NOT NULL,
rut_profesor VARCHAR(15),
rut_alumno VARCHAR(15),
puntaje_prueba FLOAT,
FOREIGN KEY (rut_profesor) REFERENCES profesor(rut_profesor),
FOREIGN KEY (rut_alumno) REFERENCES alumno(rut_alumno),
PRIMARY KEY(id_pruebas));

CREATE TABLE departamento_profesor(id_prof_dep SERIAL NOT NULL,
rut_profesor VARCHAR(15),
id_departamento_2 INT,
FOREIGN KEY (rut_profesor) REFERENCES profesor(rut_profesor),
FOREIGN KEY (id_departamento_2) REFERENCES departamento_2(id_departamento_2),
PRIMARY KEY(id_prof_dep));





