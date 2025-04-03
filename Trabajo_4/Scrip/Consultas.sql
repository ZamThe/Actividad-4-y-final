SELECT 'Clientes' AS Tabla, COUNT(*) AS Registros_Incompletos 
FROM staging.stg_cliente
WHERE nombre_cliente IS NULL OR telefono IS NULL;


SELECT ID_cliente, COUNT(*) AS Veces_repetido
FROM staging.stg_cliente
GROUP BY ID_cliente
HAVING COUNT(*) > 1;


SELECT s.ID_cliente 
FROM staging.stg_pedido AS s
LEFT JOIN staging.stg_cliente AS c ON s.ID_cliente = c.ID_cliente
WHERE c.ID_cliente IS NULL;


SELECT * FROM staging.stg_cliente 
WHERE limite_credito < 0;


SELECT * FROM staging.stg_cliente 
WHERE codigo_postal REGEXP '[^0-9]';

SELECT * FROM staging.stg_pedido 
WHERE fecha_pedido > CURDATE();


SELECT 
    (COUNT(*) - COUNT(nombre_cliente)) / COUNT(*) * 100 AS Porcentaje_Nulos
FROM staging.stg_cliente;


SELECT 
    MIN(limite_credito) AS Minimo, 
    MAX(limite_credito) AS Maximo, 
    AVG(limite_credito) AS Promedio, 
    STDDEV(limite_credito) AS Desviacion_Estandar
FROM staging.stg_cliente;


SELECT * FROM staging.stg_pedido 
WHERE monto_total > (SELECT AVG(monto_total) + 3 * STDDEV(monto_total) FROM staging.stg_pedido);


SELECT pais, COUNT(*) AS cantidad
FROM staging.stg_cliente
GROUP BY pais
ORDER BY cantidad DESC;


SELECT YEAR(fecha_pedido) AS Año, MONTH(fecha_pedido) AS Mes, COUNT(*) AS Total_Pedidos
FROM staging.stg_pedido
GROUP BY Año, Mes
ORDER BY Año DESC, Mes DESC;

SELECT codigo_postal 
FROM staging.stg_cliente 
WHERE codigo_postal NOT REGEXP '^[0-9]{5,10}$';


SELECT email 
FROM staging.stg_cliente 
WHERE email NOT REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';


SELECT * FROM staging.stg_pedido
WHERE fecha_pedido < '2000-01-01' OR fecha_pedido > CURDATE();


