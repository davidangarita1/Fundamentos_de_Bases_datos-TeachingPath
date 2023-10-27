CREATE DATABASE provider;

CREATE TABLE zonas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE fabricantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE repuestos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    precio VARCHAR(255),
    unidades INT,
    id_fabricante INT,
    id_equipo INT,
    id_zona INT,
    FOREIGN KEY (id_fabricante) REFERENCES fabricantes (id),
    FOREIGN KEY (id_equipo) REFERENCES equipos (id),
    FOREIGN KEY (id_zona) REFERENCES zonas (id)
);