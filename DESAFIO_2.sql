--Crear base de datos llamada películas (1 punto)
CREATE DATABASE peliculas WITH OWNER postgres;

--Revisar los archivos peliculas.csv y reparto.csv 
--para crear las tablas correspondientes,determinando 
--la relación entre ambas tablas. (2 puntos)

CREATE TABLE peliculas(id SERIAL NOT NULL,
pelicula VARCHAR(255),
ano_estreno INT,
director VARCHAR(100),
PRIMARY KEY(id));

CREATE TABLE reparto (peliculas_id INT,
actor VARCHAR(100),
FOREIGN KEY (peliculas_id) REFERENCES peliculas(id));

\copy peliculas FROM 'peliculas.csv' csv header;
\copy reparto FROM 'reparto.csv' csv;

--Listar todos los actores que aparecen en la película "Titanic", 
--el título de la película,año de estreno, director y todo el reparto. 

SELECT pelicula, ano_estreno, director, actor FROM peliculas
INNER JOIN 
reparto ON 
peliculas.id = reparto.peliculas_id 
where pelicula = 'Titanic';

--Listar los titulos de las películas donde actúe Harrison Ford.(0.5 puntos)

Select pelicula, actor FROM peliculas
INNER JOIN 
reparto ON 
peliculas.id = reparto.peliculas_id 
WHERE actor = 'Harrison Ford';

--Listar los 10 directores mas populares, indicando su nombre y 
--cuántas películas aparecen en eltop 100.(1 puntos)

select director,count(*) from peliculas 
group by director 
order by count 
desc limit 10;

--Indicar cuantos actores distintos hay (1 puntos)

select count(distinct actor) from reparto;

--indicar las películas estrenadas entre los años 1990 y 1999 
--(ambos incluidos) ordenadas portítulo de manera ascendente.(1 punto)

SElECT pelicula, ano_estreno from 
peliculas where ano_estreno >= 1990 and ano_estreno <= 1999
order by pelicula asc;

--Listar el reparto de las películas lanzadas el año 2001 (1 punto)

SELECT actor, ano_estreno FROM peliculas
INNER JOIN 
reparto ON 
peliculas.id = reparto.peliculas_id 
where ano_estreno = 2001;

--Listar los actores de la película más nueva

SELECT actor, ano_estreno FROM peliculas
INNER JOIN 
reparto ON 
peliculas.id = reparto.peliculas_id 
order by ano_estreno DESC;


