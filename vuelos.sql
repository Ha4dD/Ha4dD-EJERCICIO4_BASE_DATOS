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

INSERT INTO hotel(id_hotel,nombre,precio_alquiler,clasificacion,ubicacion) VALUES
(1,"tuki",40,3,"popayan"),
(2,"panorama",40,3,"popayan"),
(3,"lleguen",60,4,"cali"),
(4,"tuki1",40,3,"popayan"),
(5,"tuki2",40,3,"popayan");

INSERT INTO reservacion(id_reservacion,fecha,precio,id_hotel) VALUES
(1,"03/09/2021",131,1),
(2,"03/07/2021",112,2),
(3,"04/09/2021",190,3),
(4,"08/01/2021",132,4),
(5,"03/02/2021",120,5);

INSERT INTO cliente(id_cliente,id_pasaporte,nombre,edad,nacionalidad) VALUES
(1,321,"Juan",21,"Colombia"),
(2,323,"Boli",18,"Colombia"),
(3,352,"Tebi",42,"Colombia"),
(4,328,"Camilo",30,"Colombia"),
(5,325,"Diego",20,"Colombia");
