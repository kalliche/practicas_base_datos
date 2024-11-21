CREATE TABLE productos(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nombre TEXT,
	marca_id INTEGER,
	precio REAL
);

INSERT INTO productos (nombre, marca_id, precio)
	VALUES ('iPhone 14', 1, 999.99);

SELECT * FROM productos p;

INSERT INTO productos (nombre, marca_id, precio)
	VALUES ('Smartplone', 2, 800.00),('Table', 1, 400.00);


CREATE TABLE marcas (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nombre TEXT
);

INSERT INTO marcas (nombre)
	VALUES ('Dell'), ('Apple'), ('Samsung');

SELECT * FROM marcas m;

--JOIN
--INNER
SELECT * 
FROM productos p
INNER JOIN marcas m ON p.marca_id = m.id;

SELECT p.id, p.nombre, m.nombre
FROM productos p 
INNER JOIN marcas m ON p.marca_id = m.id;


--RIGHT
SELECT p.id, p.nombre, m.id, m.nombre
FROM productos p 
RIGHT JOIN marcas m ON p.marca_id = m.id;

--LEFT
SELECT p.id, p.nombre, m.nombre, m.id
FROM productos p 
LEFT JOIN marcas m ON p.marca_id = m.id;

--FULL OUTER 
SELECT  p.id, p.nombre, m.nombre, m.id
FROM productos p 
FULL OUTER JOIN marcas m ON p.marca_id = m.id;



