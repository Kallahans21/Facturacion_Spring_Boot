/* Populate tabla productos */
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Juan', 'Guerrero', 'juanGuerrero@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Juan', 'Guerrero', 'juanGuerrero@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Juan', 'Guerrero', 'juanGuerrero@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Juan', 'Guerrero', 'juanGuerrero@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Juan', 'Guerrero', 'juanGuerrero@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Juan', 'Guerrero', 'juanGuerrero@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Juan', 'Guerrero', 'juanGuerrero@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Juan', 'Guerrero', 'juanGuerrero@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Juan', 'Guerrero', 'juanGuerrero@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Carlos', 'Moyano', 'CarlosMoyano@jc.com', '2017-12-29', '');
INSERT INTO clientes (nombre,apellido,email,create_at,foto) values ('Juan', 'Guerrero', 'juanGuerrero@jc.com', '2017-12-29', '');

/* Populate tabla productos */
INSERT INTO productos (nombre, precio, create_at) VALUES ('Panasonic Pantall LCD', 425, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Canon EOS 1300D Cámara digital', 374, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Apple iPhone X', 1432, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Sony Notebook Z110', 843, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Hewlett Packard Multifuncional F2280', 648, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Xioami QyCicle', 350, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Mica Comoda 5 Cajones', 100, NOW());

/* Populate tabla facturas */
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura equipos de oficina', null, 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (2, 1, 4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 7);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura Bicicleta', '¡Alguna nota importante!', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (3, 2, 6);

/* Creamos algunos usuarios con roles (todas las contraseñas son 1234, encryptadas en Bcrypt)*/
insert into users (username, password, enabled) VALUES('juan carlos', '$2a$10$qejSghPMOTsf8z8PQ6OQ6OpMA2FHUdRGimj..cpCz6kQAHs4wROiS', 1);
insert into users (username, password, enabled) VALUES('admin', '$2a$10$NK8MQe9g/0YimlPxbo4G3uRQ2nHgO4cIuBNmELyWMvDP.tpuM9wEm', 1);

insert into authorities (user_id, authority) VALUES(1, 'ROLE_USER');
insert into authorities (user_id, authority) VALUES(2, 'ROLE_USER');
insert into authorities (user_id, authority) VALUES(2, 'ROLE_ADMIN');
