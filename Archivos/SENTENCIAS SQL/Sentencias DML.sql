-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `role`) VALUES
(1, 'petstylobog@gmail.com', 'pet1234', 'admin');


-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id_cita`, `nombre_propietario`, `numero_contacto`, `nombre_mascota`, `raza_mascota`, `servicio`, `fecha_cita`, `hora_cita`, `id_mascota`) VALUES
(2, 'Juan Cristancho', '3213255489', 'lucas', 'Chandouis', 'dedede', '2024-09-21', '13:48:00', 3),
(6, 'Brayan Araque', '3213255489', 'lucas', 'Chandouis', 'Resurreccion', '2024-09-20', '16:56:00', 3),
(8, 'Maria Torrencia', '3254452152', 'Jacinto', 'Lobo', 'Lavado', '2024-09-13', '01:00:00', NULL),
(10, 'Carlos Gomez', '3521458965', 'Zeus', 'Angora', 'lavado', '2024-09-21', '02:00:00', NULL),
(11, 'Luis Torre', '3526456325', 'Milo', 'Criollo', 'lavado', '2024-09-20', '01:00:00', NULL),
(12, 'Juan Perez', '3211234567', 'Firulais', 'Pastor Alemán', 'Baño', '2024-09-20', '10:00:00', NULL),
(13, 'Camila Franco', '3215445554', 'Tony', 'Lobo', 'Baño y uñas', '2024-09-20', '10:00:00', NULL),
(14, 'Antonio Diaz', '3211655665', 'Firu', 'Chanda', 'Baño y uñas', '2024-09-20', '10:00:00', NULL),
(15, 'Luisa Camelo', '321677667', 'Zeus', 'Bulldog', 'Baño', '2024-09-20', '10:00:00', NULL),
(16, 'Brayan Gomez', '3217765444', 'Princesa', 'Chihuahua', 'Baño y uñas ', '2024-09-20', '10:00:00', NULL),
(17, 'Sebastian Fuentes', '3219878788', 'Chikys', 'Criolla', 'Baño', '2024-09-20', '10:00:00', NULL),
(18, 'Alejandra Araque', '3219898676', 'Churco', 'Criollo', 'Baño y uñas', '2024-09-20', '10:00:00', NULL),
(19, 'Jose Barahona', '321188766', 'Guardian', 'Pator Aleman', 'Baño', '2024-09-20', '10:00:00', NULL),
(20, 'Nicol Sanchez', '3213255489', 'Terminator', 'Pitbull', 'Lavado y secado', '2024-09-20', '11:12:00', 3),
(21, 'Juan Cristancho', '3213255489', 'lucas', 'Chandouis', 'Resurreccion', '2024-09-27', '12:21:00', 3);



-- Volcado de datos para la tabla `login`
--

INSERT INTO login (email, password) VALUES (?, ?);

INSERT INTO `login` (`id`, `email`, `password`, `reset_token`, `token_expiry`, `reg_date`) VALUES
(1, 'baraquemora@gmail.com', '$2y$10$sZ/TP8jC2UCqSW15hZyapu73HXA/9OfCY70UcrfvaEDYaBUb52dpu', NULL, NULL, '2024-08-27 15:05:45'),
(2, 'baraquemora@gmail.com', '$2y$10$IPSrf4a4RmE5kEfTCqq9quso82phwSXURFCQWt3EzmKGeaxUcdUky', NULL, NULL, '2024-08-27 15:05:50'),
(3, 'baraquemora@gmail.com', '$2y$10$ujLsLuCLAHUDwKXpyfe.vuoQmX9UjmvKlTwqnk8poVuKpNMXXnXeO', NULL, NULL, '2024-08-28 13:43:21'),
(4, 'aprendizti@pprimavera.com', '$2y$10$YTc5ggDPk5gDTs1ISlaIAu1Sn45y/PEasTtBt1cy/1AIxtjo1C/eO', NULL, NULL, '2024-09-02 13:04:09');


-- Volcado de datos para la tabla `mascota`
INSERT INTO `mascota` (`id_mascota`, `id`, `estatura`, `nombre_mascota`, `peso`, `raza`) VALUES
(1, 1, 42.00, 'ruco', 35.00, 'pitbull'),
(2, 1, 2.00, 'fff', 23.00, '32'),
(3, 4, 34.00, 'lucas', 43.00, 'Chandouis');



-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `productos`, `valor_total`, `fecha_pedido`) VALUES
(1, 'Hueso ahumado - 10000 (Cantidad: 1)', 10000.00, '2024-09-02 13:18:39'),
(2, 'Hueso ahumado - 10000 (Cantidad: 1)', 10000.00, '2024-09-02 19:06:02');




-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_Producto`, `Nombre_P`, `Precio_P`, `Cantidad`, `descripcion`, `image`) VALUES
(140, 'peinilla', 15000, 27, 'Peinilla para mascotas de gran caluidad y cuidado con el peleja por sus hebras.', '..\\assets\\camilo\\Pictures\\nuevas\\peinilla.jpg'),
(142, 'Hueso ahumado', 10000, 12, 'Manten tu perro entretenido con un rico perone ahumado extra duradero y extra delicioso. ', '..\\assets\\camilo\\Pictures\\nuevas\\perone_ahumado.png'),
(143, 'Remov-Pelos', 21000, 21, 'manten tu casa libre de exceso de pelaje con el removedor extra util y manten limpio todo.', '..\\assets\\camilo\\Pictures\\nuevas\\removedor_pelos.webp');


-- Volcado de datos para la tabla `usuario`


INSERT INTO `usuario` (`id`, `nombre`, `correo`, `telefono`) VALUES
(1, 'Carlos Mora', 'baraquemora@gmail.com', '32546521'),
(4, 'Juan Cristancho', 'aprendizti@pprimavera.com', '3213255489');



----------------------
--------------------------------------------------------------
-- INSERT, CONSULTAS, UPDATES, DELETES SQL------------------------------------------------------

--                            TABLA LOGIN
-- Crear usuario
INSERT INTO login (email, password) VALUES (?, ?);

-- verificacion usuario
SELECT id, password FROM login WHERE email = 'baraquemora@gmail.com';

-- Encontrar usuario por email
SELECT * FROM login WHERE email = '' ;

-- actualizar token
UPDATE login SET reset_token = ?, token_expiry = ? WHERE email = ?;

-- encontrarUsuarioPorToken
SELECT * FROM login WHERE reset_token = ? AND token_expiry > NOW();

-- actualizarPassword
UPDATE login SET password = ? WHERE id = ?;



--                         TABLA ADMIN
-- Verificar credenciales administrador
SELECT role FROM admin WHERE email = ?;



--                          TABLA CITA
-- Obtener citas
SELECT * FROM citas ;

-- Obtener cita por id
SELECT * FROM citas WHERE id_cita = ? ;

-- Actualizar cita
UPDATE citas SET nombre_propietario = ?, numero_contacto = ?, nombre_mascota = ?, raza_mascota = ?, servicio = ?, fecha_cita = ?, hora_cita = ? WHERE id_cita = ?;

-- Crear cita
INSERT INTO citas (nombre_propietario, numero_contacto, nombre_mascota, raza_mascota, servicio, fecha_cita, hora_cita) VALUES (?, ?, ?, ?, ?, ?, ?);

-- 
SELECT COUNT(*) FROM citas WHERE fecha_cita = ? AND hora_cita = ?;


-- Borrar cita
DELETE FROM citas WHERE id_cita = ? ;


--                        TABLA PRODUCTOS

-- Guardar producto
INSERT INTO productos (Nombre_P, Precio_p, Cantidad, descripcion, image) VALUES (?, ?, ?, ?, ?);

-- Consultar productos
SELECT * FROM productos ;

-- Eliminar producto por id
DELETE FROM productos WHERE ID_Producto = ? ;

-- Actualizar producto 
UPDATE productos SET Nombre_P = ?, descripcion = ?, Precio_P = ?, Cantidad = ? WHERE ID_Producto = ?;


--                        TABLA PEDIDOS
INSERT INTO pedidos (productos, valor_total) VALUES (?, ?);



--                       TABLA MASCOTA

-- Verificar si la mascota ya se encuentra registrada
SELECT id_mascota FROM mascota WHERE id_mascota = ? ;


-- INNER JOIN

SELECT u.nombre AS nombre_propietario, u.telefono AS numero_contacto, m.nombre_mascota, m.raza AS raza_mascota 
                  FROM usuario u 
                  LEFT JOIN mascota m ON u.id = m.id 
                  WHERE u.id = ? LIMIT 1 ;
                  
-- Obtener mascota por usuario id
SELECT id_mascota FROM mascota WHERE id = ? LIMIT 1 ;




