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
