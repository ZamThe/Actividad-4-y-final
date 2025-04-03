INSERT INTO staging.stg_producto (ID_producto, nombre, ID_categoria, dimensiones, proveedor, descripcion, cantidad_en_stock, precio_venta, precio_proveedor)
SELECT ID_producto, nombre, ID_categoria, dimensiones, proveedor, descripcion, cantidad_en_stock, precio_venta, precio_proveedor
FROM jardineria.producto;

UPDATE staging.stg_cliente
SET nombre_cliente = UPPER(nombre_cliente)
WHERE nombre_cliente IS NOT NULL;

DELETE FROM staging.stg_cliente
WHERE ID_cliente IS NULL;
ALTER TABLE staging.stg_producto ADD COLUMN margen DECIMAL(10,2);

UPDATE staging.stg_producto
SET margen = precio_venta - precio_proveedor;

INSERT INTO datamart.dm_producto (ID_producto, nombre, ID_categoria, precio_venta, margen)
SELECT ID_producto, nombre, ID_categoria, precio_venta, margen
FROM staging.stg_producto;




