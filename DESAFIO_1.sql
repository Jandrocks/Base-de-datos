DROP DATABASE posts;
----------------------------------------------------------------
--1.Crear Base de datos posts (1 punto)
----------------------------------------------------------------
CREATE DATABASE posts WITH OWNER postgres;
----------------------------------------------------------------
--2.Crear tabla post, con los atributos id, nombre de usuario,
--fecha de creación, contenido,descripción (1 punto)
----------------------------------------------------------------
CREATE TABLE post(id SERIAL NOT NULL,
nombre_usuario VARCHAR(255),
fecha_creacion DATE,
contenido VARCHAR(255),
descripción VARCHAR(255),
PRIMARY KEY(id));
----------------------------------------------------------------
--3.Insertar 3 post, 2 para el usuario "Pamela" y uno para 
--"Carlos" (0.6 puntos)
----------------------------------------------------------------
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripción) VALUES 
('PAMELA','02-06-1991','PROGRAMADORA DE SQL','MANEJO DE CONSULTAS SQL');
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripción) VALUES 
('PAMELA','02-06-1991','PROGRAMADORA DE RUBY','MANEJO DE ARREGLOS Y PATRONES');
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripción) VALUES 
('CARLOS','04-08-1998','PROGRAMADOR DE JAVA','MANEJO DE ARREGLOS');
----------------------------------------------------------------
--4.Modificar la tabla post, agregando la columna título (1 punto)
----------------------------------------------------------------
ALTER TABLE post add titulo VARCHAR(30);
----------------------------------------------------------------
--5.Agregar título a las publicaciones ya ingresadas ( (1 punto)
----------------------------------------------------------------
UPDATE post SET titulo = 'SQL' WHERE id = 1;
UPDATE post SET titulo = 'RUBY' WHERE id = 2;
UPDATE post SET titulo = 'JAVA' WHERE id = 3;
----------------------------------------------------------------
--6.Insertar 2 post para el usuario "Pedro" (0.4 puntos)
----------------------------------------------------------------
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripción,titulo) VALUES 
('PEDRO','06-11-1988','PROGRAMADOR DE PYTHON','MANEJO DE FUNCIONES','PYTHON');
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripción,titulo) VALUES 
('PEDRO','06-11-1988','PROGRAMADOR DE GO','MANEJO DE CICLOS','GO');
----------------------------------------------------------------
--7.Eliminar el post de Carlos (1 punto)
----------------------------------------------------------------
DELETE FROM post WHERE nombre_usuario = 'CARLOS';
----------------------------------------------------------------
--8.Ingresar un nuevo post para el usuario "Carlos" (0.6 puntos)
----------------------------------------------------------------
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripción,titulo) VALUES 
('CARLOS','05-08-2004','PROGRAMADOR DE ORACLE','MANEJO DE CURSORES','ORACLE');
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
--9.Crear una nueva tabla, llamada comentarios, con los
--atributos id, fecha y hora de creación,contenido, que se 
--relacione con la tabla posts. (1 punto)
----------------------------------------------------------------
CREATE TABLE comentarios(id SERIAL NOT NULL,
post_id INT,
fecha TIMESTAMP,
contenido VARCHAR(255),
descripcion VARCHAR(255),
FOREIGN KEY (post_id) REFERENCES post(id));
----------------------------------------------------------------
--10 Crear 2 comentarios para el post de "Pamela" y 4 para 
--"Carlos" (0.4 puntos)
----------------------------------------------------------------
INSERT INTO comentarios(post_id,fecha,contenido,descripcion) VALUES 
('1','03-08-2004 02:06:04','PROGRAMADORA 3 AÑOS SQL','MANEJO DE DBEAVER');
INSERT INTO comentarios(post_id,fecha,contenido,descripcion) VALUES 
('1','03-07-2009 12:20:09','SOPORTE 4 AÑOS DBA','MANEJO DE DBEAVER');
INSERT INTO comentarios(post_id,fecha,contenido,descripcion) VALUES 
('6','23-12-2010 15:40:19','ING. SOFTWARE 2 AÑOS','MANEJO DE ECLIPSE');
INSERT INTO comentarios(post_id,fecha,contenido,descripcion) VALUES 
('6','10-01-2011 14:02:00','ING. SOFTWARE 4 AÑOS','MANEJO DE NETBEANS');
INSERT INTO comentarios(post_id,fecha,contenido,descripcion) VALUES 
('6','15-06-2015 15:40:19','JEFE DE PROYECTO','MANEJO DE TRELO');
INSERT INTO comentarios(post_id,fecha,contenido,descripcion) VALUES 
('6','22-08-2019 16:40:22','LIDER TECNICO','MANEJO DE JIRA');
----------------------------------------------------------------
--11. Crear un nuevo post para "Margarita" (1 punto)
----------------------------------------------------------------
INSERT INTO post(nombre_usuario,fecha_creacion,contenido,descripción,titulo) VALUES 
('MARGARITA','05-09-2016','FULL STACK','MANEJO DE MVC','JAVASCRIPT');
----------------------------------------------------------------
--12. Ingresar 5 comentarios para el post de Margarita. (1 punto)
----------------------------------------------------------------
INSERT INTO comentarios(post_id,fecha,contenido,descripcion) VALUES 
('7','16-08-2016 22:44:10','PROGRAMADORA SENIOR','MANEJO DE ECLIPSE');
INSERT INTO comentarios(post_id,fecha,contenido,descripcion) VALUES 
('7','22-04-2017 21:42:11','PROGRAMADORA JAVA','MANEJO DE ATOM');
INSERT INTO comentarios(post_id,fecha,contenido,descripcion) VALUES 
('7','13-04-2018 21:43:11','PROGRAMADORA JAVASCRIPT','MANEJO DE INTELLIJ');
INSERT INTO comentarios(post_id,fecha,contenido,descripcion) VALUES 
('7','11-11-2019 22:50:12','PROGRAMADORA JAVASCRIPT','MANEJO DE SUBLIMETEXT');
INSERT INTO comentarios(post_id,fecha,contenido,descripcion) VALUES 
('7','11-11-2019 22:50:12','PROGRAMADORA RUBY ON RAILS','MANEJO DE VISUAL STUDIO CODE');
----------------------------------------------------------------------------------









