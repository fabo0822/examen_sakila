CREATE DATABASE sakila;
USE sakila;

CREATE TABLE idioma (
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(20) ,
ultima_actualizacion TIMESTAMP 
);


CREATE TABLE pais (
id INT PRIMARY KEY ,
nombre VARCHAR(50) ,
ultima_actualizacion TIMESTAMP 
);

CREATE TABLE ciudad (
id INT PRIMARY KEY ,
nombre VARCHAR(50) ,
id_pais INT,
ultima_actualizacion TIMESTAMP,
FOREIGN KEY (id_pais) REFERENCES pais(id)
);

CREATE TABLE direccion (
id INT PRIMARY KEY ,
direccion VARCHAR(50),
direccion2  VARCHAR(50),
distrito  VARCHAR(20),
id_ciudad INT,
codigo_postal VARCHAR(10),
telefono VARCHAR(20),
ultima_actualizacion TIMESTAMP ,
FOREIGN KEY (id_ciudad) REFERENCES ciudad(id)
);

CREATE TABLE actor(
id INT PRIMARY KEY ,
nombre VARCHAR(45) ,
apellidos VARCHAR(45) ,
ultima_actualizacion TIMESTAMP 
);

CREATE TABLE categoria(
id INT PRIMARY KEY ,
nombre VARCHAR(25) ,
ultima_actualizacion TIMESTAMP 
);

CREATE TABLE pelicula (
id INT PRIMARY KEY ,
titulo VARCHAR (255),
descripcion TEXT,
anyo_lanzamiento YEAR,
id_idioma INT,
id_idioma_original INT,
duracion_alquiler INT,
rental_rate DECIMAL(4.2),
duracion  SMALLINT,
relacement_cost DECIMAL(5,2),
clasificacion  ENUM('G', 'PG', 'PG-13', 'R', 'NC-17'),
caracteristicas_especiales SET('Trailers','Commentaries','Deleted Scenes', 'Behind The Scenes'), 
ultima_actualizacion TIMESTAMP,
FOREIGN KEY (id_idioma) REFERENCES idioma(id)
);

CREATE TABLE pelicula_actor (
id_actor INT,
id_pelicula INT, 
ultima_actualizacion TIMESTAMP,
FOREIGN KEY (id_actor) REFERENCES actor(id),
FOREIGN KEY (id_pelicula) REFERENCES pelicula(id)
);

CREATE TABLE pelicula_categoria (
id_pelicula INT,
id_categoria INT, 
ultima_actualizacion TIMESTAMP,
FOREIGN KEY (id_categoria) REFERENCES categoria(id),
FOREIGN KEY (id_pelicula) REFERENCES pelicula(id)
);

CREATE TABLE almacen (
id INT PRIMARY KEY,
id_empleado_jefe INT,
id_direccion INT, 
ultima_actualizacion TIMESTAMP,
FOREIGN KEY (id_direccion) REFERENCES direccion(id)
);

CREATE TABLE clientes (
id INT PRIMARY KEY,
nombre VARCHAR(45),
apellidos VARCHAR(45),
email VARCHAR(50),
id_direccion INT, 
activo INT(1),
fecha_creacion DATETIME,
ultima_actualizacion TIMESTAMP,
FOREIGN KEY (id_direccion) REFERENCES direccion(id)
);

CREATE TABLE empleado (
id INT PRIMARY KEY,
nombre VARCHAR(45),
apellidos VARCHAR(45),
id_direccion INT, 
imagen BLOB,
id_almacen INT,
activo INT(1),
username VARCHAR(16),
password VARCHAR(40),
ultima_actualizacion TIMESTAMP,
FOREIGN KEY (id_direccion) REFERENCES direccion(id),
FOREIGN KEY (id_almacen) REFERENCES almacen(id) )
;

CREATE TABLE pago (
id INT PRIMARY KEY,
id_pelicula INT,
id_almacen INT, 
ultima_actualizacion TIMESTAMP,
FOREIGN KEY (id_pelicula) REFERENCES pelicula(id),
FOREIGN KEY (id_almacen) REFERENCES almacen(id)
);

CREATE TABLE inventario (
id INT PRIMARY KEY,
id_pelicula INT, 
id_almacen INT,
ultima_actualizacion TIMESTAMP,
FOREIGN KEY (id_pelicula) REFERENCES pelicula(id),
FOREIGN KEY (id_almacen) REFERENCES almacen(id)
);

CREATE TABLE alquiler (
id INT PRIMARY KEY,
fecha_alquiler DATETIME,
id_inventario INT,
id_cliente INT,
fecha_devolucion DATETIME,
ultima_actualizacion TIMESTAMP,
FOREIGN KEY (id_inventario) REFERENCES inventario(id),
FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

CREATE TABLE film_text (
id INT PRIMARY KEY,
title VARCHAR(255), 
descripcion TEXT
);


