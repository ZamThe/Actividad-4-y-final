-- Crear base de datos Staging PARTE 2
CREATE DATABASE IF NOT EXISTS staging;
USE staging;


CREATE TABLE IF NOT EXISTS stg_cliente (
    ID_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(100),
    nombre_contacto VARCHAR(100),
    apellido_contacto VARCHAR(100),
    telefono VARCHAR(20),
    fax VARCHAR(20),
    linea_direccion1 VARCHAR(150),
    linea_direccion2 VARCHAR(150),
    ciudad VARCHAR(50),
    region VARCHAR(50),
    pais VARCHAR(50),
    codigo_postal VARCHAR(20),
    ID_empleado_rep_ventas INT,
    limite_credito DECIMAL(10,2),
    nombre_completo VARCHAR(200),
    categoria_cliente VARCHAR(20)
);


CREATE TABLE IF NOT EXISTS stg_producto (
    ID_producto INT PRIMARY KEY,
    nombre VARCHAR(100),
    ID_categoria INT,
    dimensiones VARCHAR(50),
    proveedor VARCHAR(100),
    descripcion TEXT,
    cantidad_en_stock INT,
    precio_venta DECIMAL(10,2),
    precio_proveedor DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS stg_pedido (
    ID_pedido INT PRIMARY KEY,
    fecha_pedido DATE,
    fecha_esperada DATE,
    fecha_entrega DATE,
    estado VARCHAR(50),
    comentarios TEXT,
    ID_cliente INT
);

CREATE TABLE IF NOT EXISTS stg_detalle_pedido (
    ID_detalle_pedido INT PRIMARY KEY AUTO_INCREMENT,
    ID_pedido INT,
    ID_producto INT,
    cantidad INT,
    precio_unitario DECIMAL(10,2),
    FOREIGN KEY (ID_pedido) REFERENCES stg_pedido(ID_pedido),
    FOREIGN KEY (ID_producto) REFERENCES stg_producto(ID_producto)
);


CREATE TABLE IF NOT EXISTS stg_pago (
    ID_pago INT PRIMARY KEY AUTO_INCREMENT,
    ID_cliente INT,
    forma_pago VARCHAR(50),
    id_transaccion VARCHAR(50),
    fecha_pago DATE,
    total DECIMAL(10,2)
);
