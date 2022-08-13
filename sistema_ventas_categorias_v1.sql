CREATE DATABASE IF NOT EXISTS sistema_ventas_categorias;

USE sistema_ventas_categorias;

CREATE TABLE IF NOT EXISTS tbl_usuario (
	cveUsuario SMALLINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(350) NOT NULL,
    apellidos VARCHAR(450) NOT NULL,
    username VARCHAR(150) NOT NULL,
    password VARCHAR(350) NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_categoria (
	cveCategoria SMALLINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(250) NOT NULL,
    descripcion VARCHAR(500),
    tipo SMALLINT NOT NULL,
    cveUsuario SMALLINT NOT NULL,
    FOREIGN KEY (cveUsuario) REFERENCES tbl_usuario(cveUsuario)
);