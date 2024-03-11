-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2023 a las 05:32:27
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asesoriaspsicologicas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesoria`
--

CREATE TABLE `asesoria` (
  `id` int(11) NOT NULL,
  `tipo_de_asesoria` varchar(255) DEFAULT NULL,
  `resultado` text DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `psicologo_que_atendio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asesoria`
--

INSERT INTO `asesoria` (`id`, `tipo_de_asesoria`, `resultado`, `observaciones`, `fecha`, `hora`, `estado`, `idusuario`, `psicologo_que_atendio`) VALUES
(11, 'Asesoría Individual', 'Éxito', 'El estudiante mostró mejoría significativa en su rendimiento académico.', '2023-11-15', '10:00:00', 'Finalizada', 1, 2),
(12, 'Asesoría Grupal', 'En progreso', 'El grupo está trabajando bien en conjunto, pero algunos estudiantes necesitan atención adicional.', '2023-11-16', '14:30:00', 'En curso', 3, 4),
(13, 'Asesoría de Orientación Vocacional', 'Éxito', 'El estudiante ha elegido una carrera que se alinea con sus intereses y habilidades.', '2023-11-17', '11:00:00', 'Finalizada', 6, 7),
(14, 'Asesoría de Desarrollo Personal', 'En progreso', 'El estudiante está trabajando en mejorar sus habilidades de afrontamiento.', '2023-11-18', '13:45:00', 'En curso', 9, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributo`
--

CREATE TABLE `atributo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `atributo`
--

INSERT INTO `atributo` (`id`, `nombre`, `descripcion`) VALUES
(1, 'direccion_estudiante', 'Dirección del estudiante'),
(2, 'acudiente_estudiante', 'Nombre del acudiente del estudiante'),
(3, 'telefono_acudiente', 'Teléfono del acudiente'),
(4, 'correo_acudiente', 'Correo electrónico del acudiente'),
(5, 'direccion_acudiente', 'Dirección del acudiente'),
(6, 'grado_estudiante', 'Grado del estudiante'),
(7, 'promedio_estudiante', 'Promedio académico del estudiante'),
(8, 'nombre_materia_favorita', 'Nombre de la materia favorita'),
(9, 'hobby_estudiante', 'Hobby o pasatiempo del estudiante'),
(10, 'direccion_psicologo', 'Dirección del psicólogo'),
(11, 'especialidad_psicologo', 'Especialidad del psicólogo'),
(12, 'telefono_psicologo', 'Teléfono del psicólogo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributoxusuario`
--

CREATE TABLE `atributoxusuario` (
  `id` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idatributo` int(11) DEFAULT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `atributoxusuario`
--

INSERT INTO `atributoxusuario` (`id`, `idusuario`, `idatributo`, `valor`, `descripcion`) VALUES
(1, 3, 4, 'alskd@gmail.com', 'correo electronico del acudiente del estudiante idusuario 3 Carlos Jones'),
(2, 7, 6, '11', 'Grado del estudiante idusuario 7 Javier Sanchez'),
(3, 5, 2, 'Sandra Rodriguez', 'Nombre del acudiente del estudiante idusuario 5 Robert Smith'),
(4, 8, 8, 'Historia', 'Nombre de la materia favorita idusuario 8 Marta Jimenez'),
(5, 6, 3, '555-9876', 'Teléfono del acudiente idusuario 6 Ana Gonzalez'),
(6, 4, 5, '789 Maple Avenue', 'Dirección del acudiente idusuario 4 Laura Lopez'),
(7, 9, 7, '9.0', 'Promedio académico del estudiante idusuario 9 Alejandro Herrera'),
(8, 12, 9, 'Pintura', 'Hobby o pasatiempo del estudiante idusuario 12 Sara Castillo'),
(9, 11, 10, '890 Pine Street', 'Dirección del psicólogo idusuario 11 Daniel Ruiz'),
(10, 10, 11, 'Psicología Educativa', 'Especialidad del psicólogo idusuario 10 Isabel Torres'),
(11, 2, 12, '555-5678', 'Teléfono del psicólogo idusuario 2 Maria Rodriguez'),
(12, 1, 1, '456 Oak Street', 'Dirección del estudiante idusuario 1 John Doe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosestudiante`
--

CREATE TABLE `datosestudiante` (
  `id` int(11) NOT NULL,
  `carrera` varchar(255) DEFAULT NULL,
  `facultad` varchar(255) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `jornada` varchar(255) DEFAULT NULL,
  `estado_laboral` varchar(255) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datosestudiante`
--

INSERT INTO `datosestudiante` (`id`, `carrera`, `facultad`, `semestre`, `jornada`, `estado_laboral`, `idusuario`) VALUES
(1, 'Ingeniería Informática', 'Facultad de Ingeniería', 5, 'Mañana', 'Tiempo parcial', 3),
(2, 'Psicología', 'Facultad de Ciencias Sociales', 7, 'Tarde', 'Tiempo completo', 9),
(5, 'Arquitectura', 'Facultad de Arquitectura', 8, 'Tarde', 'Medio tiempo', 1),
(6, 'Biología', 'Facultad de Ciencias Naturales', 4, 'Mañana', 'Tiempo completo', 6),
(10, 'Comunicación Social', 'Facultad de Ciencias Sociales', 8, 'Tarde', 'Tiempo completo', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospsicologo`
--

CREATE TABLE `datospsicologo` (
  `id` int(11) NOT NULL,
  `especialidad` varchar(255) DEFAULT NULL,
  `jornada` varchar(255) DEFAULT NULL,
  `experiencia_profesional` text DEFAULT NULL,
  `formacion_academica` text DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datospsicologo`
--

INSERT INTO `datospsicologo` (`id`, `especialidad`, `jornada`, `experiencia_profesional`, `formacion_academica`, `idusuario`) VALUES
(1, 'Psicología Clínica', 'Mañana', '5 años', 'Licenciatura en Psicología', 2),
(2, 'Psicología Educativa', 'Tarde', '8 años', 'Máster en Psicología Educativa', 4),
(3, 'Psicología Organizacional', 'Tarde', '10 años', 'Doctorado en Psicología Organizacional', 7),
(4, 'Psicología Infantil', 'Mañana', '6 años', 'Licenciatura en Psicología', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` int(11) NOT NULL,
  `numero_de_sesiones` int(11) DEFAULT NULL,
  `tipo_de_sesion` text DEFAULT NULL,
  `resultados_de_las_sesiones` text DEFAULT NULL,
  `antecedentes` text DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `psicologo_que_atendio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id`, `numero_de_sesiones`, `tipo_de_sesion`, `resultados_de_las_sesiones`, `antecedentes`, `observaciones`, `idusuario`, `psicologo_que_atendio`) VALUES
(10, 5, 'Sesiones Individuales', 'Avances significativos en la gestión del estrés.', 'Antecedentes de estrés', 'El estudiante ha implementado con éxito las técnicas de relajación aprendidas.', 1, 2),
(11, 8, 'Sesiones Familiares', 'Mejora en la comunicación familiar.', 'Antecedentes de conflictos familiares', 'La familia ha experimentado una mejoría en su dinámica y resolución de conflictos.', 3, 4),
(12, 12, 'Sesiones Individuales', 'Exploración de metas académicas y profesionales.', 'Antecedentes académicos y profesionales', 'El estudiante ha identificado metas claras para su futuro académico y profesional.', 6, 7),
(13, 10, 'Sesiones Grupales', 'Desarrollo de habilidades sociales.', 'Antecedentes de interacción social', 'Se han trabajado estrategias para mejorar la interacción social y la autoconfianza.', 9, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `nombre`, `descripcion`) VALUES
(1, 'estudiante', 'Rol para módulos de estudiantes'),
(2, 'psicologo', 'Rol para módulos de psicólogos'),
(3, 'administrador', 'Rol con todos los beneficios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE `sesiones` (
  `id` int(11) NOT NULL,
  `numero_de_sesiones` int(11) DEFAULT NULL,
  `duracion_media_sesion` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `psicologo_que_atendio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sesiones`
--

INSERT INTO `sesiones` (`id`, `numero_de_sesiones`, `duracion_media_sesion`, `fecha_inicio`, `fecha_fin`, `idusuario`, `psicologo_que_atendio`) VALUES
(1, 10, 45, '2023-11-15', '2023-12-15', 1, 2),
(2, 5, 60, '2023-11-16', '2023-12-16', 3, 4),
(3, 8, 50, '2023-11-17', '2023-12-17', 6, 7),
(4, 12, 40, '2023-11-18', '2023-12-18', 9, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `primer_apellido` varchar(255) DEFAULT NULL,
  `segundo_apellido` varchar(255) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `idperfil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `contrasena`, `nombre`, `primer_apellido`, `segundo_apellido`, `edad`, `sexo`, `documento`, `telefono`, `idperfil`) VALUES
(1, 'jdoe', 'NuevaContrasena', 'John', 'Doe', 'Smith', 25, 'M', '123456789', '555-1234', 1),
(2, 'mrodriguez', 'Yt3$rW6q', 'Maria', 'Rodriguez', 'Gomez', 30, 'F', '987654321', '555-5678', 2),
(3, 'cjones', 'Xb9@sK2m', 'Carlos', 'Jones', 'Martinez', 28, 'M', '456789012', '555-9012', 1),
(4, 'llopez', 'Hj5*pZ8o', 'Laura', 'Lopez', 'Gutierrez', 22, 'F', '345678901', '555-3456', 2),
(5, 'rsmith', 'Lx7!mV1b', 'Robert', 'Smith', 'Fernandez', 35, 'M', '234567890', '555-6789', 3),
(6, 'agonzalez', 'Qf4$tE9w', 'Ana', 'Gonzalez', 'Rodriguez', 26, 'F', '567890123', '555-7890', 1),
(7, 'jsanchez', 'Wv2@uR6y', 'Javier', 'Sanchez', 'Lopez', 32, 'M', '678901234', '555-8901', 2),
(8, 'mjimenez', 'Nk8*bZ3p', 'Marta', 'Jimenez', 'Martinez', 29, 'F', '789012345', '555-1234', 3),
(9, 'aherrera', 'Pq1#oG7z', 'Alejandro', 'Herrera', 'Vargas', 27, 'M', '890123456', '555-5678', 1),
(10, 'itorres', 'Uy6!hT3r', 'Isabel', 'Torres', 'Serrano', 31, 'F', '901234567', '555-9012', 2),
(11, 'druiz', 'Ew9@kI4s', 'Daniel', 'Ruiz', 'Perez', 24, 'M', '012345678', '555-3456', 3),
(12, 'scastillo', 'Mg7!hF2v', 'Sara', 'Castillo', 'Fernandez', 33, 'F', '345678901', '555-6789', 1),
(14, 'nuevo_usuario', 'nueva_contrasena', 'Nuevo', 'Usuario', 'Apellido', 30, 'M', '987654321', '555-1234', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asesoria`
--
ALTER TABLE `asesoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idusuario` (`idusuario`),
  ADD UNIQUE KEY `psicologo_que_atendio` (`psicologo_que_atendio`);

--
-- Indices de la tabla `atributo`
--
ALTER TABLE `atributo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `atributoxusuario`
--
ALTER TABLE `atributoxusuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idatributo` (`idatributo`);

--
-- Indices de la tabla `datosestudiante`
--
ALTER TABLE `datosestudiante`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `datospsicologo`
--
ALTER TABLE `datospsicologo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idusuario` (`idusuario`),
  ADD UNIQUE KEY `psicologo_que_atendio` (`psicologo_que_atendio`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idusuario` (`idusuario`),
  ADD UNIQUE KEY `psicologo_que_atendio` (`psicologo_que_atendio`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idperfil` (`idperfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asesoria`
--
ALTER TABLE `asesoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `atributo`
--
ALTER TABLE `atributo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `atributoxusuario`
--
ALTER TABLE `atributoxusuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `datosestudiante`
--
ALTER TABLE `datosestudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `datospsicologo`
--
ALTER TABLE `datospsicologo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asesoria`
--
ALTER TABLE `asesoria`
  ADD CONSTRAINT `asesoria_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `asesoria_ibfk_2` FOREIGN KEY (`psicologo_que_atendio`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `atributoxusuario`
--
ALTER TABLE `atributoxusuario`
  ADD CONSTRAINT `atributoxusuario_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `atributoxusuario_ibfk_2` FOREIGN KEY (`idatributo`) REFERENCES `atributo` (`id`);

--
-- Filtros para la tabla `datosestudiante`
--
ALTER TABLE `datosestudiante`
  ADD CONSTRAINT `datosestudiante_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `datospsicologo`
--
ALTER TABLE `datospsicologo`
  ADD CONSTRAINT `datospsicologo_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `historial_ibfk_2` FOREIGN KEY (`psicologo_que_atendio`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD CONSTRAINT `sesiones_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `sesiones_ibfk_2` FOREIGN KEY (`psicologo_que_atendio`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idperfil`) REFERENCES `perfil` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
