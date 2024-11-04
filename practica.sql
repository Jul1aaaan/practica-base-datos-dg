use movies_db;

-- 1. Mostrar todos los registros de la tabla de movies.

select * from movies;

-- 2. Mostrar el nombre, apellido y rating de todos los actores.

select first_name, last_name, rating from actors;

-- 3. Mostrar el título de todas las series.

select title from series;

-- 4. Mostrar el nombre y apellido de los actores cuyo rating sea mayor a 7,5. 

select first_name, last_name from actors where rating > 7.5;

-- 5. Mostrar el título de las películas, el rating y los premios de las películas con un rating mayor a 7,5 y con más de dos premios.

select title, rating, awards from movies where rating >	7.5 and awards > 2;

-- 6. Mostrar el título de las películas y el rating ordenadas por rating en forma ascendente.

select title, rating from movies order by rating asc;

-- 7. Mostrar el título y rating de todas las películas cuyo título incluya Toy Story. 

select title, rating from movies where title like '%Toy Story%';

-- 8. Mostrar a todos los actores cuyos nombres empiecen con Sam.

select * from actors where first_name like 'Sam%';

-- 9. Mostrar el título de las películas que salieron entre el ‘2004-01-01’ y ‘2008-12-31’.

select title from movies where release_date between '2004-01-01' and '2008-12-31';

-- 10. Mostrar el título de todas las series y usar alias para que el nombre del campo esté en español.

select title as titulo from series;

-- 11. Traer el título de las películas con el rating mayor a 3, con más de 1 premio y con fecha de lanzamiento entre el año ‘1988-01-01’ al ‘2009-12-31’. Ordenar los resultados por rating descendentemente.

select title from movies where rating > 3 and awards > 1 and release_date between '1988-01-01' and '2009-12-31' order by rating desc;

-- 12. Traer el top 3 a partir del registro 10 de la consulta anterior. 

select title from movies where rating > 3 and awards > 1 and release_date between '1988-01-01' and '2009-12-31' order by rating desc limit 3 offset 10;

-- 13. ¿Cuáles son los 3 peores episodios teniendo en cuenta su rating? 

select * from episodes order by rating asc limit 3;

-- 14. Obtener el listado de todos los actores. Quitar las columnas de fechas y película favorita, además traducir los nombres de las columnas.

select id, first_name as nombre, last_name as apellido, rating as puntaje from actors;