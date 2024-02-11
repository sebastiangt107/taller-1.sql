CREATE DATABASE IF NOT EXISTS tienda;

USE tienda;

CREATE TABLE IF NOT EXISTS Fabricantes (
    codigo_fabricante INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Productos (
    codigo_producto INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2),
    codigo_fabricante INT,
    FOREIGN KEY (codigo_fabricante) REFERENCES Fabricantes(codigo_fabricante)
);


INSERT INTO Fabricantes (codigo_fabricante, nombre) VALUES
(101, 'Segate'),
(102, 'Crucial'),
(103, 'Samsung'),
(104, 'Gigabyte'),
(105, 'Asus'),
(106, 'Lenovo'),
(107, 'Hewlett-Packard'),
(108, 'Huawei'),
(109, 'Xiaomi');



INSERT INTO Productos (codigo_producto, nombre, precio, codigo_fabricante) VALUES
(1, 'Disco Duro', 150.000, 101),
(2, 'Memoria RAM DDR4 16GB', 325.000, 102),
(3, 'Disco SSD', 455.000, 103),
(4, 'Geoforce GTX 1050Ti', 1333.000, 104),
(5, 'Geoforce GTX1080 XT', 726.000, 102),
(6, 'Monitor24 LED Full HD', 840.000, 105),
(7, 'Monitor 27 LED Full HD', 1050.000, 105),
(8, 'Portatil T14', 3096.000, 106),
(9, 'Portatil IDEAD PAD', 4723.000, 106),
(10, 'Impresora HP Deskjet', 645.000, 107),
(11, 'Impresora HP Laserjet', 834.250, 107);

SELECT * FROM productos;

SELECT nombre, precio FROM productos;

SELECT p.nombre AS nombre_producto, f.nombre AS nombre_fabricante FROM Productos p INNER JOIN Fabricantes f ON p.codigo_fabricante = f.codigo_fabricante;

SELECT nombre, precio FROM productos ORDER BY precio DESC;

SELECT p.nombre AS nombre_producto, f.nombre AS nombre_fabricante FROM Productos p INNER JOIN Fabricantes f ON p.codigo_fabricante = f.codigo_fabricante ORDER BY f.nombre;

UPDATE Productos SET precio = 180.000 WHERE codigo_producto = 1;

DELETE FROM Productos WHERE codigo_producto = 7;




