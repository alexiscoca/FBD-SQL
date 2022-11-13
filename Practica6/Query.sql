---------------------Consultas----------

---Empleados cuyo nombre empiece con la letra C.
SELECT *
FROM Gerente, Encargado, Cuidador 
WHERE nombre LIKE 'C%' ;

---Plantas cuyo genero sea Haworthia.
SELECT *
FROM Planta
WHERE genero = 'Haworthia' ;

---Todas las ventas electrónicas que se realizaron en mayo.
SELECT *
FROM Venta_Electronica
WHERE fecha_pedido = 'mayo'

---Clientes que hayan nacido en junio del 2002.
SELECT *
FROM Cliente 
WHERE fecha_de_nacimiento = 'Junio' -------falta


---Todos los viveros registrados en El Gran Vivero.
SELECT *
FROM Vivero 
WHERE 