


--Categoria producto

INSERT INTO staging.stg_categoria_producto (ID_categoria, desc_categoria, descripcion_texto, descripcion_html, imagen)
SELECT ID_categoria, desc_categoria, descripcion_texto, descripcion_html, imagen 
FROM Jardineria.categoria_producto;


-- Categoria pago

INSERT INTO Staging.stg_pago (ID_cliente, forma_pago, id_transaccion, fecha_pago, total)
SELECT ID_cliente, forma_pago, id_transaccion, fecha_pago, total
FROM Jardineria.pago;

--Detalle pedido

INSERT INTO Staging.detalle_pedido (ID_pedido, ID_producto, cantidad, precio_unidad)
SELECT ID_pedido, ID_producto, cantidad, precio_unidad
FROM Jardineria.detalle_pedido;


--Pedido

INSERT INTO Staging.stg_pedido (ID_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, ID_cliente)
SELECT ID_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, ID_cliente
FROM Jardineria.pedido;


--Cliente

INSERT INTO Staging.cliente (
    ID_cliente, nombre_cliente, nombre_contacto, apellido_contacto, telefono, fax, 
    linea_direccion1, linea_direccion2, ciudad, region, pais, codigo_postal, 
    ID_empleado_rep_ventas, limite_credito
)
SELECT ID_cliente, nombre_cliente, nombre_contacto, apellido_contacto, telefono, fax, 
       linea_direccion1, linea_direccion2, ciudad, region, pais, codigo_postal, 
       ID_empleado_rep_ventas, limite_credito
FROM Jardineria.cliente;