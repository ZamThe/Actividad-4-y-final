-- Crear la base de datos Staging
CREATE DATABASE IF NOT EXISTS Staging;
USE Staging;

-- Tabla Clientes
CREATE TABLE IF NOT EXISTS clientes (
    ID_cliente INT PRIMARY KEY,
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    email VARCHAR(255),
    telefono VARCHAR(20),
    direccion TEXT
);

-- Tabla Categoría Producto
CREATE TABLE IF NOT EXISTS stg_categoria_producto (
    ID_categoria INT PRIMARY KEY,
    desc_categoria VARCHAR(255),
    descripcion_texto TEXT,
    descripcion_html TEXT,
    imagen VARCHAR(255)
);

-- Tabla Productos
CREATE TABLE IF NOT EXISTS stg_producto (
    ID_producto INT PRIMARY KEY,
    nombre VARCHAR(255),
    ID_categoria INT,
    dimensiones VARCHAR(100),
    proveedor VARCHAR(255),
    descripcion TEXT,
    cantidad_en_stock INT,
    precio_venta DECIMAL(10,2),
    precio_proveedor DECIMAL(10,2),
    FOREIGN KEY (ID_categoria) REFERENCES stg_categoria_producto(ID_categoria)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- Tabla Pedidos
CREATE TABLE IF NOT EXISTS stg_pedido (
    ID_pedido INT PRIMARY KEY,
    ID_cliente INT,
    fecha_pedido DATETIME,
    estado VARCHAR(50),
    total DECIMAL(10,2),
    FOREIGN KEY (ID_cliente) REFERENCES stg_clientes(ID_cliente)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla Detalle Pedido
CREATE TABLE IF NOT EXISTS detalle_pedido (
    ID_detalle_pedido INT PRIMARY KEY,
    ID_pedido INT,
    ID_producto INT,
    cantidad INT,
    precio_unitario DECIMAL(10,2),
    subtotal DECIMAL(10,2),
    FOREIGN KEY (ID_pedido) REFERENCES stg_pedido(ID_pedido)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_producto) REFERENCES stg_producto(ID_producto)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla Pagos
CREATE TABLE IF NOT EXISTS stg_pagos (
    ID_pago INT PRIMARY KEY,
    ID_cliente INT,
    fecha_pago DATETIME,
    monto DECIMAL(10,2),
    metodo_pago VARCHAR(50),
    FOREIGN KEY (ID_cliente) REFERENCES stg_clientes(ID_cliente)
        ON DELETE CASCADE ON UPDATE CASCADE
);




