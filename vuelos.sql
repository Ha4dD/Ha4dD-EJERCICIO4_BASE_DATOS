CREATE DATABASE vuelos;

CREATE TABLE hotel(
	id_hotel INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50),
    precio_alquiler INT(10),
    clasificacion INT(5),
    ubicacion VARCHAR(50)
);

CREATE TABLE reservacion (
	id_reservacion INT PRIMARY KEY NOT NULL,
    fecha VARCHAR(20),
    precio INT,
    id_hotel INT,
    FOREIGN KEY(id_hotel) REFERENCES hotel(id_hotel)
);

CREATE TABLE cliente (
	id_cliente INT PRIMARY KEY NOT NULL,
    id_pasaporte INT,
    nombre VARCHAR(50),
    edad INT(3),
    nacionalidad VARCHAR(50)
);

CREATE TABLE vuelo(
	id_vuelo INT PRIMARY KEY NOT NULL,
    origen VARCHAR(50),
    destino VARCHAR(50),
    numero_pasajeros INT(3),
    precio_vuelo INT(10) 
);

CREATE TABLE cliente_reservacion(
	id Integer (20) PRIMARY KEY NOT NULL,
	id_cliente Integer (12),
  	id_reservacion Integer(12),
    FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY(id_reservacion) REFERENCES reservacion(id_reservacion) ON DELETE CASCADE
);

CREATE TABLE cliente_vuelo(
	id Integer (20) PRIMARY KEY NOT NULL,
	id_cliente Integer (12),
  	id_vuelo Integer(12),
    FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY(id_vuelo) REFERENCES vuelo(id_vuelo) ON DELETE CASCADE
);
