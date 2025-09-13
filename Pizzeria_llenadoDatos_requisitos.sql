INSERT INTO cliente (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono)
VALUES ('juan', 'perez', 'corsega 56', '08005', 'barcelona', 'barcelona', '7878787878');
INSERT INTO cliente (nombre, apellido, direccion, codigo_postal, localidad, provincia, telefono)
VALUES ('pepe', 'bal', 'ramblas 89', '08003', 'barcelona', 'barcelona', '454545454');

INSERT INTO empleado(nombre, apellido, nif, telefono, tipo, id_tienda)
VALUES ('chiara', 'vario', '676767676m', '454545454', 'repartidor', '1');
INSERT INTO empleado(nombre, apellido, nif, telefono, tipo, id_tienda)
VALUES ('carlos', 'gomez', '232323232f', '56565656', 'cocinero', '1');

INSERT INTO pedido (fecha_hora_recibido, modo_entrega, precio, id_cliente, id_tienda)
VALUES ( '2025-04-23 22:45', 'domicilio', '12.99', '2', '1');
INSERT INTO pedido (fecha_hora_recibido, modo_entrega, precio, id_cliente, id_tienda)
VALUES ( '2025-04-25 12:30', 'recogida', '10.00', '1', '2');

INSERT INTO pedido_a_domicilio ( fecha_hora_entrega, id_empleado, id_pedido)
VALUES ('2025-04-23 22:55', '1', '1');
INSERT INTO pedido_a_domicilio ( fecha_hora_entrega, id_empleado, id_pedido)
VALUES ('2025-04-25 12:40', '1', '2');

INSERT INTO categoria_pizza (nombre)
VALUES ('napolitana');
INSERT INTO categoria_pizza (nombre)
VALUES ('kentuky');

INSERT INTO producto (nombre, descripcion, imagen, tipo, precio, id_pedido, id_categoria_pizza)
VALUES ('margarita', 'salsa de tomate y muzzarella', 'IMG 3450', 'pizza', '12.99', '1', '1');
INSERT INTO producto (nombre, descripcion, imagen, tipo, precio, id_pedido, id_categoria_pizza)
VALUES ('cerveza', 'estrella galicia', 'IMG 2345', 'bebida', '3.00', '1', NULL );

INSERT INTO tienda (direccion, codigo_postal, localidad, provincia)
VALUES ('via laietana 2', '08005', 'barcelona', 'barcelona');
INSERT INTO tienda (direccion, codigo_postal, localidad, provincia)
VALUES ('marina 23', '08007', 'barcelona', 'barcelona');

INSERT INTO cantidad_de_productos( pedido_id_pedido, producto_id_producto, cantidad_de_productoscol)
VALUES (1, 2, 3);
INSERT INTO cantidad_de_productos( pedido_id_pedido, producto_id_producto, cantidad_de_productoscol)
VALUES (2, 2, 4);

SELECT COUNT(cantidad_de_productos.cantidad_de_productoscol) FROM cantidad_de_productos
JOIN  producto ON producto.id_producto = cantidad_de_productos.producto_id_producto
JOIN pedido ON pedido.id_pedido = producto.id_pedido
JOIN tienda ON tienda.id_tienda = pedido.id_tienda
WHERE producto.tipo LIKE 'bebida'
AND tienda.localidad LIKE 'barcelona';

SELECT COUNT(pedido.id_pedido) FROM pedido
JOIN pedido_a_domicilio ON pedido_a_domicilio.id_pedido = pedido.id_pedido
JOIN empleado ON empleado.id_empleado = pedido_a_domicilio.id_empleado
WHERE empleado.id_empleado = 1;
