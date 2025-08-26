INSERT INTO clientes (nombre, apellido, direccion, email, fecha_registro, recomendacion)
VALUES ( 'juan', 'perez', 'corsega 536', 'juanpe@gmail.com', '2025-04-10', 2);
INSERT INTO clientes (nombre, apellido, direccion, email, fecha_registro, recomendacion)
VALUES ( 'carla', 'lopez', 'paris 80', 'carlita@gmail.com', '2025-03-22', 1);

INSERT INTO empleado (nombre, apellido)
VALUES ('cristhian', 'valenci');
INSERT INTO empleado(nombre, apellido)
VALUES ('hernan', 'rodriguez');

INSERT INTO gafas (marca, graduacion, tipo_montura, color_montura, color_cristal, precio, id_proveedor)
VALUES ('rayban', '80', 'metal', 'negro', 'gris', '89', 1);
INSERT INTO gafas (marca, graduacion, tipo_montura, color_montura, color_cristal, precio, id_proveedor)
VALUES ('adidas', '60', 'plastico', 'verde', 'negro', '99', 2);

INSERT INTO proveedor (nombre, apellido, telefono, direccion, nif)
VALUES ('lorenzo', 'vario', '6000909009', 'napols 89', '4545454545l');
INSERT INTO proveedor (nombre, apellido, telefono, direccion, nif)
VALUES ('pepe', 'rubianes', '6000656799', 'casanova 78', '2323232323l');

INSERT INTO ventas (fecha, id_clientes, id_empleado, id_gafas)
VALUES ('2023-02-10', 1, 1, 2);
INSERT INTO ventas (fecha, id_clientes, id_empleado, id_gafas)
VALUES ('2024-09-28', 1, 2, 1);


SELECT * FROM ventas
WHERE id_clientes = 1;

SELECT * FROM gafas
JOIN ventas ON ventas.id_gafas = gafas.id_gafas
JOIN empleado ON empleado.id_empleado = ventas.id_empleado


WHERE ventas.id_empleado = 1
AND ventas.fecha LIKE '2023%';

SELECT distinct * FROM proveedor
JOIN gafas ON gafas.id_proveedor = proveedor.id_proveedor
JOIN ventas ON ventas.id_gafas = gafas.id_gafas
WHERE ventas.id_gafas IS NOT NULL;

