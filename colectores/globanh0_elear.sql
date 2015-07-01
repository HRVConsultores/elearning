-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2015 at 09:22 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `globanh0_elear`
--

-- --------------------------------------------------------

--
-- Table structure for table `au_exam`
--

CREATE TABLE IF NOT EXISTS `au_exam` (
`id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `score` float(6,2) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `valid` varchar(45) NOT NULL DEFAULT 'Y',
  `sc_Course_id` int(11) unsigned NOT NULL,
  `sc_Student_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `au_exam`
--

INSERT INTO `au_exam` VALUES(2, '2015-04-28 16:41:03', '2015-04-28 16:41:03', 1.00, 1, 'Y', 1, 20121);
INSERT INTO `au_exam` VALUES(3, '2015-06-01 19:13:48', '2015-06-01 19:13:48', NULL, NULL, 'Y', 1, 20121);

-- --------------------------------------------------------

--
-- Table structure for table `au_exam_has_au_question`
--

CREATE TABLE IF NOT EXISTS `au_exam_has_au_question` (
  `au_exam_id` int(11) NOT NULL,
  `au_question_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `score` float(6,2) NOT NULL,
  `order` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `au_exam_has_au_question`
--

INSERT INTO `au_exam_has_au_question` VALUES(2, 127, '', 0.00, 20);
INSERT INTO `au_exam_has_au_question` VALUES(2, 128, '', 0.00, 39);
INSERT INTO `au_exam_has_au_question` VALUES(2, 129, '', 0.00, 33);
INSERT INTO `au_exam_has_au_question` VALUES(2, 130, '', 0.00, 11);
INSERT INTO `au_exam_has_au_question` VALUES(2, 131, '', 0.00, 40);
INSERT INTO `au_exam_has_au_question` VALUES(2, 132, '', 0.00, 36);
INSERT INTO `au_exam_has_au_question` VALUES(2, 133, '', 0.00, 16);
INSERT INTO `au_exam_has_au_question` VALUES(2, 134, '', 0.00, 21);
INSERT INTO `au_exam_has_au_question` VALUES(2, 135, '', 0.00, 34);
INSERT INTO `au_exam_has_au_question` VALUES(2, 136, '', 0.00, 9);
INSERT INTO `au_exam_has_au_question` VALUES(2, 137, '', 0.00, 17);
INSERT INTO `au_exam_has_au_question` VALUES(2, 138, '', 0.00, 12);
INSERT INTO `au_exam_has_au_question` VALUES(2, 139, '', 0.00, 27);
INSERT INTO `au_exam_has_au_question` VALUES(2, 140, '', 0.00, 29);
INSERT INTO `au_exam_has_au_question` VALUES(2, 141, '', 0.00, 19);
INSERT INTO `au_exam_has_au_question` VALUES(2, 142, '', 0.00, 28);
INSERT INTO `au_exam_has_au_question` VALUES(2, 143, '', 0.00, 37);
INSERT INTO `au_exam_has_au_question` VALUES(2, 144, '', 0.00, 6);
INSERT INTO `au_exam_has_au_question` VALUES(2, 145, '', 0.00, 2);
INSERT INTO `au_exam_has_au_question` VALUES(2, 146, '', 0.00, 38);
INSERT INTO `au_exam_has_au_question` VALUES(2, 147, '', 0.00, 10);
INSERT INTO `au_exam_has_au_question` VALUES(2, 148, '', 0.00, 26);
INSERT INTO `au_exam_has_au_question` VALUES(2, 149, '', 0.00, 23);
INSERT INTO `au_exam_has_au_question` VALUES(2, 150, '', 0.00, 3);
INSERT INTO `au_exam_has_au_question` VALUES(2, 151, '', 0.00, 18);
INSERT INTO `au_exam_has_au_question` VALUES(2, 152, '', 0.00, 24);
INSERT INTO `au_exam_has_au_question` VALUES(2, 153, '', 0.00, 15);
INSERT INTO `au_exam_has_au_question` VALUES(2, 154, '', 0.00, 8);
INSERT INTO `au_exam_has_au_question` VALUES(2, 155, '', 0.00, 25);
INSERT INTO `au_exam_has_au_question` VALUES(2, 156, '', 0.00, 35);
INSERT INTO `au_exam_has_au_question` VALUES(2, 157, '', 0.00, 4);
INSERT INTO `au_exam_has_au_question` VALUES(2, 158, '', 0.00, 1);
INSERT INTO `au_exam_has_au_question` VALUES(2, 159, '', 0.00, 30);
INSERT INTO `au_exam_has_au_question` VALUES(2, 160, '', 0.00, 31);
INSERT INTO `au_exam_has_au_question` VALUES(2, 161, '', 0.00, 22);
INSERT INTO `au_exam_has_au_question` VALUES(2, 162, '', 0.00, 32);
INSERT INTO `au_exam_has_au_question` VALUES(2, 163, '', 0.00, 5);
INSERT INTO `au_exam_has_au_question` VALUES(2, 164, '', 0.00, 7);
INSERT INTO `au_exam_has_au_question` VALUES(2, 165, '', 0.00, 13);
INSERT INTO `au_exam_has_au_question` VALUES(2, 166, '', 0.00, 14);
INSERT INTO `au_exam_has_au_question` VALUES(3, 127, '', 0.00, 10);
INSERT INTO `au_exam_has_au_question` VALUES(3, 128, '', 0.00, 18);
INSERT INTO `au_exam_has_au_question` VALUES(3, 129, '', 0.00, 13);
INSERT INTO `au_exam_has_au_question` VALUES(3, 130, '', 0.00, 11);
INSERT INTO `au_exam_has_au_question` VALUES(3, 131, '', 0.00, 20);
INSERT INTO `au_exam_has_au_question` VALUES(3, 132, '', 0.00, 22);
INSERT INTO `au_exam_has_au_question` VALUES(3, 133, '', 0.00, 1);
INSERT INTO `au_exam_has_au_question` VALUES(3, 134, '', 0.00, 30);
INSERT INTO `au_exam_has_au_question` VALUES(3, 135, '', 0.00, 16);
INSERT INTO `au_exam_has_au_question` VALUES(3, 136, '', 0.00, 38);
INSERT INTO `au_exam_has_au_question` VALUES(3, 137, '', 0.00, 21);
INSERT INTO `au_exam_has_au_question` VALUES(3, 138, '', 0.00, 27);
INSERT INTO `au_exam_has_au_question` VALUES(3, 139, '', 0.00, 25);
INSERT INTO `au_exam_has_au_question` VALUES(3, 140, '', 0.00, 33);
INSERT INTO `au_exam_has_au_question` VALUES(3, 141, '', 0.00, 29);
INSERT INTO `au_exam_has_au_question` VALUES(3, 142, '', 0.00, 28);
INSERT INTO `au_exam_has_au_question` VALUES(3, 143, '', 0.00, 6);
INSERT INTO `au_exam_has_au_question` VALUES(3, 144, '', 0.00, 35);
INSERT INTO `au_exam_has_au_question` VALUES(3, 145, '', 0.00, 5);
INSERT INTO `au_exam_has_au_question` VALUES(3, 146, '', 0.00, 36);
INSERT INTO `au_exam_has_au_question` VALUES(3, 147, '', 0.00, 8);
INSERT INTO `au_exam_has_au_question` VALUES(3, 148, '', 0.00, 9);
INSERT INTO `au_exam_has_au_question` VALUES(3, 149, '', 0.00, 17);
INSERT INTO `au_exam_has_au_question` VALUES(3, 150, '', 0.00, 24);
INSERT INTO `au_exam_has_au_question` VALUES(3, 151, '', 0.00, 14);
INSERT INTO `au_exam_has_au_question` VALUES(3, 152, '', 0.00, 4);
INSERT INTO `au_exam_has_au_question` VALUES(3, 153, '', 0.00, 23);
INSERT INTO `au_exam_has_au_question` VALUES(3, 154, '', 0.00, 7);
INSERT INTO `au_exam_has_au_question` VALUES(3, 155, '', 0.00, 12);
INSERT INTO `au_exam_has_au_question` VALUES(3, 156, '', 0.00, 40);
INSERT INTO `au_exam_has_au_question` VALUES(3, 157, '', 0.00, 3);
INSERT INTO `au_exam_has_au_question` VALUES(3, 158, '', 0.00, 19);
INSERT INTO `au_exam_has_au_question` VALUES(3, 159, '', 0.00, 2);
INSERT INTO `au_exam_has_au_question` VALUES(3, 160, '', 0.00, 32);
INSERT INTO `au_exam_has_au_question` VALUES(3, 161, '', 0.00, 39);
INSERT INTO `au_exam_has_au_question` VALUES(3, 162, '', 0.00, 15);
INSERT INTO `au_exam_has_au_question` VALUES(3, 163, '', 0.00, 37);
INSERT INTO `au_exam_has_au_question` VALUES(3, 164, '', 0.00, 26);
INSERT INTO `au_exam_has_au_question` VALUES(3, 165, '', 0.00, 34);
INSERT INTO `au_exam_has_au_question` VALUES(3, 166, '', 0.00, 31);

-- --------------------------------------------------------

--
-- Table structure for table `au_log`
--

CREATE TABLE IF NOT EXISTS `au_log` (
`id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `valid` varchar(45) NOT NULL DEFAULT 'Y',
  `sc_Course_id` int(11) unsigned NOT NULL,
  `sc_Student_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `au_log`
--

INSERT INTO `au_log` VALUES(4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y', 1, 20121);

-- --------------------------------------------------------

--
-- Table structure for table `au_question`
--

CREATE TABLE IF NOT EXISTS `au_question` (
`id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `label` text,
  `options` text,
  `alternative` text,
  `answer` text,
  `score` int(11) DEFAULT NULL,
  `valid` varchar(45) NOT NULL DEFAULT 'Y',
  `sc_Course_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `au_question`
--

INSERT INTO `au_question` VALUES(127, 1, 'vf', NULL, NULL, 'Las drogas afectan la conducta de las personas', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(128, 1, 'alt', 'Dentro de las funciones del colector  se encuentra', NULL, 'Resguardar la confidencialidad de la información del testeo||Cumplir a cabalidad el protocolo de testeo||Entregar transparencia y seguridad en el manejo de las muestras ||Todas las anteriores||Ninguna de las anteriores', '3', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(129, 1, 'alt', 'Respecto a la confidencialidad de los resultados del testeo , el colector debe', NULL, 'Dar a conocer al trabajador y RPE solo los resultados negativos||Dar a conocer al trabajador y RPE solo los resultados positivos||Informar al trabajador y RPE, cualquiera sea el resultado||Solo informar al RPE  los resultados negativos ||Ninguna de las anteriores', '2', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(130, 2, 'vf', NULL, NULL, 'El consumo de alcohol se puede detectar en orina, hasta 24 horas después de su último trago', '0', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(131, 2, 'vf', NULL, NULL, 'El alcohol se absorbe y elimina más rápidamente que otras drogas, por lo anterior, después de incidentes o accidentes habitualmente se solicita examen de alcohol dentro de las siguientes dos horas de ocurrido el evento', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(132, 2, 'alt', 'En un consumidor de marihuana ocasional o poco frecuente, se puede detectar el consumo', NULL, 'Hasta 30 días después del último consumo||Hasta 60 días después del último consumo||Hasta 15 días después de haber consumido||Máximo hasta 10 días de haber consumido||Ninguno de los anteriores', '3', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(133, 2, 'alt', 'En un consumidor de marihuana crónico (consume casi todos los días), se puede detectar el consumo', NULL, 'Después de 90 días del último consumo||Después de 15 días de haber consumido||Hasta 20 días después del último consumo||Máximo hasta 10 días de haber consumido||Ninguno de los anteriores', '2', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(134, 2, 'vf', NULL, NULL, 'Las benzodiacepinas no se pueden detectar en orina', '0', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(135, 2, 'alt', 'En un consumidor de cocaína ocasional o experimentador, el examen de orina saldrá positivo para cocaína hasta', NULL, '9 días después de del último consumo||Máximo hasta 4 días de haber consumido||Después de 15 días de haber consumido||Hasta 30 días después del último consumo||Ninguno de los anteriores', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(136, 2, 'alt', 'El examen de detección de drogas más comúnmente usado es', NULL, 'El examen de orina||El examen de pelo||El examen de exhalación de aire||Todos los anteriores||Ninguno de los anteriores', '0', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(137, 2, 'alt', 'Para la confirmación de un examen de drogas en orina', NULL, 'Se utiliza la misma muestra||Se toma otra muestra de orina el mismo día||Se toma otra muestra de orina, al día siguiente||Se toma una muestra de sangre||No se puede confirmar el examen', '0', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(138, 2, 'alt', 'El testeo ocupacional es aquel que se realiza', NULL, 'Antes de ser contratado||Después de ser contratado||Cuando el trabajador sufre un accidente||Alternativas b) y c)||Ninguno de los anteriores', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(139, 2, 'alt', 'Los tipos de muestras  que una empresa puede definir para controlar a sus trabajadores son', NULL, 'Muestra aleatoria o random||Muestra total o censo||Muestra por sospecha fundada||Muestra post accidente||Todas las anteriores', '4', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(140, 2, 'vf', NULL, NULL, 'En Chile la ley 20.000 sanciona el tráfico ilícito de estupefacientes y sustancias psicotrópicas', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(141, 2, 'vf', NULL, NULL, 'El Reglamento de Seguridad Minera en Chile prohíbe el ingreso a una faena a trabajadores que se encuentren bajo la influencia de alcohol y/o drogas', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(142, 2, 'vf', NULL, NULL, 'De acuerdo a la dirección del Trabajo, la normativa de control y disciplina por consumo de drogas y abuso del alcohol, deben ser incorporadas al Reglamento Interno de cada empresa', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(143, 3, 'alt', 'Antes de realizar el testeo, el colector debe solicitar la identificación al trabajador para verificar sus datos con:<br><br>I. El carnet de identidad<br>II. Cualquier<br>identificación  es valida<br>III. La credencial de la empresa con foto<br>IV. Una carta firmada por el Gerente o jefe directo<br>V. Cualquier tarjeta o carnet que tenga su nombre y firma', NULL, 'Solo I||Solo III||I y III||I, II y III||Todas las anteriores', '2', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(144, 3, 'vf', NULL, NULL, 'Si el trabajador NO firma la autorización para realizar testeo de A&D y entrega de resultados a la empresa solicitante,  el colector no puede ejecutar el testeo', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(145, 3, 'vf', NULL, NULL, 'El colector siempre debe realizar la toma de muestra observada', '0', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(146, 3, 'vf', NULL, NULL, 'El examen de alcohol en una empresa se realiza a través de una muestra de sangre', '0', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(147, 3, 'vf', NULL, NULL, 'Los resultados del test de alcohol,  se interpretan inmediatamente y se le dan a conocer al donante para su confirmación verbal y escrita', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(148, 3, 'alt', 'Para tomar la muestra de orina se entrega al trabajador<br><br>I. Un drug screen test cups<br>II. Solo un frasco<br>III.  Un frasco de contra muestra tapa roja<br>IV. Dos drug screen test cups<br>V. Cualquier frasco de orina', NULL, 'Solo I||Solo IV||I y III||I y V||Ninguno de los anteriores', '2', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(149, 3, 'vf', NULL, NULL, 'El colector elegirá un  drug screen test cups  y lo abrirá antes que entre el donante entre a la sala de testeo', '0', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(150, 3, 'alt', 'Los elementos de validación de la muestra son:<br><br>I. Color<br>II. Temperatura<br>III. Volumen<br>IV. Olor<br>V. Control de adulterantes', NULL, 'I-II y IV||II- III y IV||I y II||II –III y V||I-II y IV', '3', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(151, 3, 'alt', 'Los adulterantes  son', NULL, 'Temperatura, Ph y Color||PH, Prueba de gravedad específica, Antioxidantes||PH, Antioxidantes, Volumen||Temperatura, Olor, Ph||Ninguno de los anteriores', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(152, 3, 'alt', 'Si se detecta adulteración de la muestra de orina se debe', NULL, 'Informar al jefe directo||Tomar una segunda muestra al día siguiente||Repetir el examen en 4 horas más tarde||Activar el Test e informarlo||Ninguno de los anteriores', '4', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(153, 3, 'alt', 'Si la temperatura de la orina esta fuera de rango', NULL, 'Se toma otra muestra de orina, al día siguiente||Se toma una muestra de sangre||Se repite el examen de inmediato||No se puede repetir  el examen||Se activa igual el dispositivo', '2', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(154, 3, 'alt', 'Si el resultado del test de drogas es Presunto positivo', NULL, 'Se repite la muestra||No se informa, y se repite el examen||Se debe obtener una confirmación verbal del consumo por parte del trabajador||Se toma una muestra de sangre para confirmar||Ninguno de los anteriores', '2', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(155, 3, 'vf', NULL, NULL, 'Los resultados  Presunto positivo no reconocido por el trabajador, se confirman con la técnica de Cromatografía  de gas/ masas en el laboratorio de confirmación', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(156, 4, 'vf', NULL, NULL, 'Si el trabajador ha ingerido cualquier alimento o bebida alcohólica inmediatamente antes del alcotest, debe enjuagarse la boca antes de soplar la boquilla', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(157, 4, 'vf', NULL, NULL, 'La boquilla del alcotest se debe cambiar cada 5 trabajadores', '0', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(158, 4, 'alt', 'Los problemas más frecuentes en la recolección de muestras de orina son', NULL, 'Síndrome de vejiga tímida||Intento de adulteración||Muestra insuficiente||Todas las anteriores||Ninguna de las anteriores', '4', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(159, 4, 'alt', 'Si el alcotest entrega un resultado sobre 3 gr/lt., Ud debe pensar que', NULL, 'El equipo esta descalibrado||Que están fallando las pilas||Que el trabajador tiene trazas de alcohol en la boca||Que el resultado es incorrecto||Todas las anteriores', '4', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(160, 4, 'vf', NULL, NULL, 'El síndrome de vejiga tímida es aquel, en que la persona tiene dificultad  para orinar en lugares desconocidos (en baños públicos o lugares donde haya otras personas)', '1', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(161, 4, 'alt', 'Si el alcotest no marca resultados ', NULL, 'No se toma el examen||Se cita otro día||Se debe revisar la conexión eléctrica o estado de las pilas||Ninguno de los anteriores||Todas las anteriores', '2', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(162, 4, 'alt', 'Si el alcotest no imprime', NULL, 'Revisar el cable o la conexión inalámbrica||Se revisa si tiene papel suficiente||Apague y vuelva  a encender||Todos los anteriores||Ninguno de los anteriores', '3', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(163, 4, 'alt', 'Las muestras de orina con resultado negativo deberán eliminarse por el Colector', NULL, 'Después de 24 hrs||Después de 48 hrs||El mismo día que fue tomada la muestra||Después de un mes||Después de un año', '2', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(164, 4, 'alt', 'La eliminación de  las muestras de orina se realiza  utilizando', NULL, 'Mascarilla y guantes||Solo guantes||Guantes y mascarilla desechables, pechera y antiparras||Delantal blanco, guantes desechables y mascarilla||Ninguno de los anteriores', '2', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(165, 4, 'alt', 'En el caso de testeo en terreno los desechos se eliminan en', NULL, 'El baño de la empresa||Se dejan en la empresa y se avisa que los eliminen||Se busca un contenedor en el camino||Se llevan de regreso a la oficinas, donde se eliminan||Ninguno de los anteriores', '3', 1, 'Y', 1);
INSERT INTO `au_question` VALUES(166, 4, 'alt', 'Para la realización de un test de A&D de acuerdo al programa DFWP debemos  contar con kits que cumplan con las siguientes características:<br><br>I. Deben estar aprobados por la FDA (Food and Drug Administration) de EEUU e ISP<br>II. Debe utilizar el Punto de corte de SAHMSA<br>III. Control de adulterantes<br>IV. Deben tener sello de inviolabilidad<br>V. Deben tener llave de activación', NULL, ' I, II y IV||I y III||II, III, IV y V||I, II, III, IV y V||Ninguno de los anteriores', '3', 1, 'Y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `au_seccion`
--

CREATE TABLE IF NOT EXISTS `au_seccion` (
`id` int(10) unsigned NOT NULL,
  `module` int(10) unsigned NOT NULL,
  `unit` int(10) unsigned NOT NULL,
  `page` varchar(100) NOT NULL COMMENT 'indica que pagina se debe cargar',
  `title` varchar(200) NOT NULL COMMENT 'es el titulo de la pagina',
  `type` varchar(10) NOT NULL COMMENT 'Tipo: front,indice, unidad, examen, perfil, evaluacion',
  `index` tinyint(4) NOT NULL COMMENT 'permite mostrar o no la pagina en un indice',
  `template` varchar(100) NOT NULL COMMENT 'selecciona bajo que template se debe cargar la pagina',
  `navigation` int(11) NOT NULL COMMENT 'realiza control del breadcrum y la navegacion.      *             -1 -> sin next , 1 -> sin previous',
  `order` int(10) unsigned NOT NULL COMMENT 'Orden en el que debe ir las unidades',
  `estado` tinyint(4) NOT NULL,
  `sc_Course_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `au_seccion`
--

INSERT INTO `au_seccion` VALUES(1, 0, 0, 'index', 'Home', 'front', 1, 'index', -10, 0, 1, 1);
INSERT INTO `au_seccion` VALUES(2, 1, 0, 'm1/0', '', 'indice', 1, 'index_int', 1, 1, 1, 1);
INSERT INTO `au_seccion` VALUES(3, 1, 0, 'm1/1', 'Objetivo 1', 'indice', 1, 'index_int', 0, 2, 1, 1);
INSERT INTO `au_seccion` VALUES(4, 1, 0, 'm1/2', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 3, 1, 1);
INSERT INTO `au_seccion` VALUES(5, 1, 0, 'm1/3', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 4, 1, 1);
INSERT INTO `au_seccion` VALUES(6, 1, 0, 'm1/4', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 5, 1, 1);
INSERT INTO `au_seccion` VALUES(7, 1, 0, 'm1/5', 'Objetivo 2', 'unidad', 1, 'index_int', 0, 6, 1, 1);
INSERT INTO `au_seccion` VALUES(8, 1, 0, 'm1/6', 'Objetivo 2', 'unidad', 1, 'index_int', 0, 7, 1, 1);
INSERT INTO `au_seccion` VALUES(9, 1, 0, 'm1/7', 'Objetivo 2', 'unidad', 1, 'index_int', 0, 8, 1, 1);
INSERT INTO `au_seccion` VALUES(10, 1, 0, 'm1/8', 'Objetivo 2', 'unidad', 1, 'index_int', 0, 9, 1, 1);
INSERT INTO `au_seccion` VALUES(11, 1, 0, 'm1/9', 'Objetivo 2', 'unidad', 1, 'index_int', 0, 10, 1, 1);
INSERT INTO `au_seccion` VALUES(12, 1, 0, 'm1/10', 'Objetivo 2', 'unidad', 1, 'index_int', 0, 11, 1, 1);
INSERT INTO `au_seccion` VALUES(13, 1, 0, 'm1/11', 'Objetivo 2', 'unidad', 1, 'index_int', 0, 12, 1, 1);
INSERT INTO `au_seccion` VALUES(14, 1, 0, 'm1/12', 'Objetivo 2', 'unidad', 1, 'index_int', 0, 13, 1, 1);
INSERT INTO `au_seccion` VALUES(15, 1, 0, 'm1/13', 'Objetivo 2', 'unidad', 1, 'index_int', 0, 14, 1, 1);
INSERT INTO `au_seccion` VALUES(16, 1, 0, 'm1/14', 'Objetivo 3', 'unidad', 1, 'index_int', 0, 15, 1, 1);
INSERT INTO `au_seccion` VALUES(17, 1, 0, 'm1/15', 'Objetivo 3', 'unidad', 1, 'index_int', 0, 16, 1, 1);
INSERT INTO `au_seccion` VALUES(18, 1, 0, 'm1/16', 'Objetivo 4', 'unidad', 1, 'index_int', 0, 17, 1, 1);
INSERT INTO `au_seccion` VALUES(19, 1, 0, 'm1/17', 'Objetivo 4', 'unidad', 1, 'index_int', 0, 18, 1, 1);
INSERT INTO `au_seccion` VALUES(20, 1, 0, 'm1/18', 'Objetivo 4', 'unidad', 1, 'index_int', 0, 19, 1, 1);
INSERT INTO `au_seccion` VALUES(21, 1, 0, 'm1/19', 'Objetivo 5', 'unidad', 1, 'index_int', 0, 20, 1, 1);
INSERT INTO `au_seccion` VALUES(22, 1, 0, 'm1/20', 'Objetivo 5', 'unidad', 1, 'index_int', 0, 21, 1, 1);
INSERT INTO `au_seccion` VALUES(23, 1, 0, 'm1/21', 'Objetivo 5', 'unidad', 1, 'index_int', 0, 22, 1, 1);
INSERT INTO `au_seccion` VALUES(24, 1, 0, 'm1/22', 'Objetivo 5', 'unidad', 1, 'index_int', 0, 23, 1, 1);
INSERT INTO `au_seccion` VALUES(25, 1, 0, 'm1/23', 'Objetivo 5', 'unidad', 1, 'index_int', 0, 24, 1, 1);
INSERT INTO `au_seccion` VALUES(26, 1, 0, 'm1/24', 'Objetivo 5', 'unidad', 1, 'index_int', 0, 25, 1, 1);
INSERT INTO `au_seccion` VALUES(27, 1, 0, 'm1/25', 'Objetivo 5', 'unidad', 1, 'index_int', 0, 26, 1, 1);
INSERT INTO `au_seccion` VALUES(28, 1, 0, 'm1/26', 'Objetivo 5', 'unidad', 1, 'index_int', 0, 27, 1, 1);
INSERT INTO `au_seccion` VALUES(29, 1, 0, 'm1/27', 'Objetivo 5', 'unidad', 1, 'index_int', 0, 28, 1, 1);
INSERT INTO `au_seccion` VALUES(30, 1, 0, 'm1/28', 'Objetivo 5', 'unidad', 1, 'index_int', 0, 29, 1, 1);
INSERT INTO `au_seccion` VALUES(31, 1, 0, 'm1/29', 'Objetivo 5', 'unidad', 1, 'index_int', 0, 30, 1, 1);
INSERT INTO `au_seccion` VALUES(32, 1, 0, 'm1/30', '', 'unidad', 1, 'index_int', 0, 31, 1, 1);
INSERT INTO `au_seccion` VALUES(33, 1, 0, 'm1/31', '', 'unidad', 1, 'index_int', 0, 32, 1, 1);
INSERT INTO `au_seccion` VALUES(34, 1, 0, 'm1/32', '', 'unidad', 1, 'index_int', 0, 33, 1, 1);
INSERT INTO `au_seccion` VALUES(35, 1, 0, 'm1/33', '', 'unidad', 1, 'index_int', 0, 34, 1, 1);
INSERT INTO `au_seccion` VALUES(36, 1, 0, 'm1/34', '', 'unidad', 1, 'index_int', 0, 35, 1, 1);
INSERT INTO `au_seccion` VALUES(37, 2, 0, 'm2/35', '', 'indice', 1, 'index_int', 0, 36, 1, 1);
INSERT INTO `au_seccion` VALUES(38, 2, 0, 'm2/36', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 37, 1, 1);
INSERT INTO `au_seccion` VALUES(39, 2, 0, 'm2/37', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 38, 1, 1);
INSERT INTO `au_seccion` VALUES(40, 2, 0, 'm2/38', 'Objetivo 2', 'unidad', 1, 'index_int', 0, 39, 1, 1);
INSERT INTO `au_seccion` VALUES(41, 2, 0, 'm2/39', 'Objetivo 3', 'unidad', 1, 'index_int', 0, 40, 1, 1);
INSERT INTO `au_seccion` VALUES(42, 2, 0, 'm2/40', 'Objetivo 3', 'unidad', 1, 'index_int', 0, 41, 1, 1);
INSERT INTO `au_seccion` VALUES(43, 2, 0, 'm2/41', 'Objetivo 4', 'unidad', 1, 'index_int', 0, 42, 1, 1);
INSERT INTO `au_seccion` VALUES(44, 2, 0, 'm2/42', 'Objetivo 4', 'unidad', 1, 'index_int', 0, 43, 1, 1);
INSERT INTO `au_seccion` VALUES(45, 2, 0, 'm2/43', 'Objetivo 4', 'unidad', 1, 'index_int', 0, 44, 1, 1);
INSERT INTO `au_seccion` VALUES(46, 2, 0, 'm2/44', 'Objetivo 4', 'unidad', 1, 'index_int', 0, 45, 1, 1);
INSERT INTO `au_seccion` VALUES(47, 2, 0, 'm2/45', 'Objetivo 4', 'unidad', 1, 'index_int', 0, 46, 1, 1);
INSERT INTO `au_seccion` VALUES(48, 2, 0, 'm2/46', 'Objetivo 4', 'unidad', 1, 'index_int', 0, 47, 1, 1);
INSERT INTO `au_seccion` VALUES(49, 2, 0, 'm2/47', 'Objetivo 4', 'unidad', 1, 'index_int', 0, 48, 1, 1);
INSERT INTO `au_seccion` VALUES(50, 2, 0, 'm2/48', 'Objetivo 5', 'unidad', 1, 'index_int', 0, 49, 1, 1);
INSERT INTO `au_seccion` VALUES(51, 2, 0, 'm2/49', 'Objetivo 6', 'unidad', 1, 'index_int', 0, 50, 1, 1);
INSERT INTO `au_seccion` VALUES(52, 2, 0, 'm2/50', 'Objetivo 6', 'unidad', 1, 'index_int', 0, 51, 1, 1);
INSERT INTO `au_seccion` VALUES(53, 2, 0, 'm2/51', 'Objetivo 6', 'unidad', 1, 'index_int', 0, 52, 1, 1);
INSERT INTO `au_seccion` VALUES(54, 2, 0, 'm2/52', 'Objetivo 6', 'unidad', 1, 'index_int', 0, 53, 1, 1);
INSERT INTO `au_seccion` VALUES(55, 2, 0, 'm2/53', 'Objetivo 6', 'unidad', 1, 'index_int', 0, 54, 1, 1);
INSERT INTO `au_seccion` VALUES(56, 2, 0, 'm2/54', 'Objetivo 7', 'unidad', 1, 'index_int', 0, 55, 1, 1);
INSERT INTO `au_seccion` VALUES(57, 2, 0, 'm2/55', 'Objetivo 7', 'unidad', 1, 'index_int', 0, 56, 1, 1);
INSERT INTO `au_seccion` VALUES(58, 2, 0, 'm2/56', 'Objetivo 7', 'unidad', 1, 'index_int', 0, 57, 1, 1);
INSERT INTO `au_seccion` VALUES(59, 2, 0, 'm2/57', 'Objetivo 7', 'unidad', 1, 'index_int', 0, 58, 1, 1);
INSERT INTO `au_seccion` VALUES(60, 2, 0, 'm2/58', 'Objetivo 7', 'unidad', 1, 'index_int', 0, 59, 1, 1);
INSERT INTO `au_seccion` VALUES(61, 2, 0, 'm2/59', 'Objetivo 7', 'unidad', 1, 'index_int', 0, 60, 1, 1);
INSERT INTO `au_seccion` VALUES(62, 2, 0, 'm2/60', 'Objetivo 7', 'unidad', 1, 'index_int', 0, 61, 1, 1);
INSERT INTO `au_seccion` VALUES(63, 2, 0, 'm2/61', 'Objetivo 7', 'unidad', 1, 'index_int', 0, 62, 1, 1);
INSERT INTO `au_seccion` VALUES(64, 2, 0, 'm2/62', 'Objetivo 7', 'unidad', 1, 'index_int', 0, 63, 1, 1);
INSERT INTO `au_seccion` VALUES(65, 2, 0, 'm2/63', 'Objetivo 7', 'unidad', 1, 'index_int', 0, 64, 1, 1);
INSERT INTO `au_seccion` VALUES(66, 2, 0, 'm2/64', '', 'unidad', 1, 'index_int', 0, 65, 1, 1);
INSERT INTO `au_seccion` VALUES(67, 2, 0, 'm2/65', '', 'unidad', 1, 'index_int', 0, 66, 1, 1);
INSERT INTO `au_seccion` VALUES(68, 2, 0, 'm2/66', '', 'unidad', 1, 'index_int', 0, 67, 1, 1);
INSERT INTO `au_seccion` VALUES(69, 2, 0, 'm2/67', '', 'unidad', 1, 'index_int', 0, 68, 1, 1);
INSERT INTO `au_seccion` VALUES(70, 2, 0, 'm2/68', '', 'unidad', 1, 'index_int', 0, 69, 1, 1);
INSERT INTO `au_seccion` VALUES(71, 3, 0, 'm3/69', '', 'indice', 1, 'index_int', 0, 70, 1, 1);
INSERT INTO `au_seccion` VALUES(72, 3, 0, 'm3/70', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 71, 1, 1);
INSERT INTO `au_seccion` VALUES(73, 3, 0, 'm3/71', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 72, 1, 1);
INSERT INTO `au_seccion` VALUES(74, 3, 0, 'm3/72', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 73, 1, 1);
INSERT INTO `au_seccion` VALUES(75, 3, 0, 'm3/73', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 74, 1, 1);
INSERT INTO `au_seccion` VALUES(76, 3, 0, 'm3/74', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 75, 1, 1);
INSERT INTO `au_seccion` VALUES(77, 3, 0, 'm3/75', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 76, 1, 1);
INSERT INTO `au_seccion` VALUES(78, 3, 0, 'm3/76', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 77, 1, 1);
INSERT INTO `au_seccion` VALUES(79, 3, 0, 'm3/77', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 78, 1, 1);
INSERT INTO `au_seccion` VALUES(80, 3, 0, 'm3/78', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 79, 1, 1);
INSERT INTO `au_seccion` VALUES(81, 3, 0, 'm3/79', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 80, 1, 1);
INSERT INTO `au_seccion` VALUES(82, 3, 0, 'm3/80', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 81, 1, 1);
INSERT INTO `au_seccion` VALUES(83, 3, 0, 'm3/81', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 82, 1, 1);
INSERT INTO `au_seccion` VALUES(84, 3, 0, 'm3/82', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 83, 1, 1);
INSERT INTO `au_seccion` VALUES(85, 3, 0, 'm3/83', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 84, 1, 1);
INSERT INTO `au_seccion` VALUES(86, 3, 0, 'm3/84', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 85, 1, 1);
INSERT INTO `au_seccion` VALUES(87, 3, 0, 'm3/85', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 86, 1, 1);
INSERT INTO `au_seccion` VALUES(88, 3, 0, 'm3/86', 'Objetivo 1 y Objetivo 2', 'unidad', 1, 'index_int', 0, 87, 1, 1);
INSERT INTO `au_seccion` VALUES(89, 3, 0, 'm3/87', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 88, 1, 1);
INSERT INTO `au_seccion` VALUES(90, 3, 0, 'm3/88', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 89, 1, 1);
INSERT INTO `au_seccion` VALUES(91, 3, 0, 'm3/89', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 90, 1, 1);
INSERT INTO `au_seccion` VALUES(92, 3, 0, 'm3/90', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 91, 1, 1);
INSERT INTO `au_seccion` VALUES(93, 3, 0, 'm3/91', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 92, 1, 1);
INSERT INTO `au_seccion` VALUES(94, 3, 0, 'm3/92', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 93, 1, 1);
INSERT INTO `au_seccion` VALUES(95, 3, 0, 'm3/93', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 94, 1, 1);
INSERT INTO `au_seccion` VALUES(96, 3, 0, 'm3/94', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 95, 1, 1);
INSERT INTO `au_seccion` VALUES(97, 3, 0, 'm3/95', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 96, 1, 1);
INSERT INTO `au_seccion` VALUES(98, 3, 0, 'm3/96', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 97, 1, 1);
INSERT INTO `au_seccion` VALUES(99, 3, 0, 'm3/97', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 98, 1, 1);
INSERT INTO `au_seccion` VALUES(100, 3, 0, 'm3/98', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 99, 1, 1);
INSERT INTO `au_seccion` VALUES(101, 3, 0, 'm3/99', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 100, 1, 1);
INSERT INTO `au_seccion` VALUES(102, 3, 0, 'm3/100', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 101, 1, 1);
INSERT INTO `au_seccion` VALUES(103, 3, 0, 'm3/101', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 102, 1, 1);
INSERT INTO `au_seccion` VALUES(104, 3, 0, 'm3/102', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 103, 1, 1);
INSERT INTO `au_seccion` VALUES(105, 3, 0, 'm3/103', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 104, 1, 1);
INSERT INTO `au_seccion` VALUES(106, 3, 0, 'm3/104', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 105, 1, 1);
INSERT INTO `au_seccion` VALUES(107, 3, 0, 'm3/105', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 106, 1, 1);
INSERT INTO `au_seccion` VALUES(108, 3, 0, 'm3/106', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 107, 1, 1);
INSERT INTO `au_seccion` VALUES(109, 3, 0, 'm3/107', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 108, 1, 1);
INSERT INTO `au_seccion` VALUES(110, 3, 0, 'm3/108', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 109, 1, 1);
INSERT INTO `au_seccion` VALUES(111, 3, 0, 'm3/109', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 110, 1, 1);
INSERT INTO `au_seccion` VALUES(112, 3, 0, 'm3/9997', '', 'modal', 1, 'modal_int', 0, 9998, 1, 1);
INSERT INTO `au_seccion` VALUES(113, 3, 0, 'm3/9996', '', 'modal', 1, 'modal_int', 0, 9997, 1, 1);
INSERT INTO `au_seccion` VALUES(114, 3, 0, 'm3/9998', '', 'modal', 1, 'modal_int', 0, 9999, 1, 1);
INSERT INTO `au_seccion` VALUES(115, 3, 0, 'm3/9995', '', 'modal', 1, 'modal_int', 0, 9996, 1, 1);
INSERT INTO `au_seccion` VALUES(116, 3, 0, 'm3/9994', '', 'modal', 1, 'modal_int', 0, 9995, 1, 1);
INSERT INTO `au_seccion` VALUES(117, 3, 0, 'm3/9993', '', 'modal', 1, 'modal_int', 0, 9994, 1, 1);
INSERT INTO `au_seccion` VALUES(118, 3, 0, 'm3/9992', '', 'modal', 1, 'modal_int', 0, 9993, 1, 1);
INSERT INTO `au_seccion` VALUES(119, 3, 0, 'm3/9991', '', 'modal', 1, 'modal_int', 0, 9992, 1, 1);
INSERT INTO `au_seccion` VALUES(120, 3, 0, 'm3/9990', '', 'modal', 1, 'modal_int', 0, 9991, 1, 1);
INSERT INTO `au_seccion` VALUES(121, 3, 0, 'm3/9989', '', 'modal', 1, 'modal_int', 0, 9990, 1, 1);
INSERT INTO `au_seccion` VALUES(122, 4, 0, 'm4/110', '', 'indice', 1, 'index_int', 0, 111, 1, 1);
INSERT INTO `au_seccion` VALUES(123, 4, 0, 'm4/111', 'Objetivo 1', 'unidad', 1, 'index_int', 0, 112, 1, 1);
INSERT INTO `au_seccion` VALUES(124, 4, 0, 'm4/112', 'Objetivo 2', 'unidad', 1, 'index_int', 0, 113, 1, 1);
INSERT INTO `au_seccion` VALUES(125, 4, 0, 'm4/113', 'Objetivo 3', 'unidad', 1, 'index_int', 0, 114, 1, 1);
INSERT INTO `au_seccion` VALUES(126, 4, 0, 'm4/114', 'Objetivo 3', 'unidad', 1, 'index_int', 0, 115, 1, 1);
INSERT INTO `au_seccion` VALUES(127, 4, 0, 'm4/115', 'Objetivo 3', 'unidad', 1, 'index_int', 0, 116, 1, 1);
INSERT INTO `au_seccion` VALUES(128, 4, 0, 'm4/116', '', 'unidad', 1, 'index_int', 0, 117, 1, 1);
INSERT INTO `au_seccion` VALUES(129, 4, 0, 'm4/117', '', 'unidad', 1, 'index_int', 0, 118, 1, 1);
INSERT INTO `au_seccion` VALUES(130, 4, 0, 'm4/118', '', 'unidad', 1, 'index_int', 0, 119, 1, 1);
INSERT INTO `au_seccion` VALUES(131, 4, 0, 'm4/119', '', 'unidad', 1, 'index_int', 0, 120, 1, 1);
INSERT INTO `au_seccion` VALUES(132, 4, 0, 'm4/9988', '', 'modal', 1, 'modal_int', 0, 9989, 1, 1);
INSERT INTO `au_seccion` VALUES(133, 4, 0, 'm4/9987', '', 'modal', 1, 'modal_int', 0, 9988, 1, 1);
INSERT INTO `au_seccion` VALUES(134, 4, 0, 'm4/9986', '', 'modal', 1, 'modal_int', 0, 9987, 1, 1);
INSERT INTO `au_seccion` VALUES(135, 4, 0, 'm4/9985', '', 'modal', 1, 'modal_int', 0, 9986, 1, 1);
INSERT INTO `au_seccion` VALUES(136, 4, 0, 'm4/9984', '', 'modal', 1, 'modal_int', 0, 9985, 1, 1);
INSERT INTO `au_seccion` VALUES(137, 9999, 9999, 'examen/examen', 'Examen Final', 'examen', 1, 'index_int', -10, 121, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pv_enrolment`
--

CREATE TABLE IF NOT EXISTS `pv_enrolment` (
`id` int(10) unsigned NOT NULL,
  `sc_Student_id` int(10) unsigned NOT NULL,
  `courseId` int(10) unsigned NOT NULL,
  `finalscore` decimal(10,2) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enrolmentStatus` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `valid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3499 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pv_enrolment`
--

INSERT INTO `pv_enrolment` VALUES(3498, 20121, 1, NULL, NULL, 'Matriculado', 'Y', '2014-11-12 00:00:00', '2014-11-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sc_course`
--

CREATE TABLE IF NOT EXISTS `sc_course` (
`id` int(10) unsigned NOT NULL,
  `coursetypeid` int(10) unsigned NOT NULL,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortdescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longdescription` text COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startdate` date NOT NULL,
  `enddate` date DEFAULT NULL,
  `valid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sc_course`
--

INSERT INTO `sc_course` VALUES(1, 1, 'DR201409', 'Toma de muestra para detectar consumo de sustancias', 'http://localhost:8080/cursos/gordo/home', NULL, 'http://localhost:8080/cursos/gordo/home', '2014-11-12', '2015-12-31', 'Y', '2014-11-12 00:00:00', '2014-11-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sc_student`
--

CREATE TABLE IF NOT EXISTS `sc_student` (
`id` int(10) unsigned NOT NULL,
  `identitynumber` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `courseusername` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coursepassword` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fatherlastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `motherlastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `valid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `last_login` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20122 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sc_student`
--

INSERT INTO `sc_student` VALUES(20121, '0', 'userdeprueba', '1407391eb31426fe22ce7334ce13e1cd', 'davidmorenoazua@gmail.com', 'H', '1984-08-10', 'David', 'Moreno', 'Azúa', 'Y', 1434399434, '2014-11-12 00:00:00', '2014-11-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_groups`
--

CREATE TABLE IF NOT EXISTS `tb_groups` (
`group_id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `level` int(6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_groups`
--

INSERT INTO `tb_groups` VALUES(1, 'Superadmin', 'Root Superadmin , should be as top level group', 1);
INSERT INTO `tb_groups` VALUES(2, 'Administrator', 'Administrator level, level No 2', 2);
INSERT INTO `tb_groups` VALUES(3, 'Users', '<p>Users as registered / member</p>', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_groups_access`
--

CREATE TABLE IF NOT EXISTS `tb_groups_access` (
`id` int(6) NOT NULL,
  `group_id` int(6) DEFAULT NULL,
  `module_id` int(6) DEFAULT NULL,
  `access_data` text
) ENGINE=InnoDB AUTO_INCREMENT=448 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_groups_access`
--

INSERT INTO `tb_groups_access` VALUES(166, 1, 2, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(167, 2, 2, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(169, 1, 8, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(170, 2, 8, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(171, 3, 8, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(199, 1, 7, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(200, 2, 7, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(201, 3, 7, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(202, 1, 1, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(204, 3, 1, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(223, 1, 11, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"0","is_edit":"0","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(224, 2, 11, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(225, 3, 11, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(277, 1, 14, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(278, 2, 14, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(279, 3, 14, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(286, 1, 17, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(287, 2, 17, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(288, 3, 17, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(304, 1, 22, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(305, 2, 22, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(306, 3, 22, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(307, 1, 23, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(308, 2, 23, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(309, 3, 23, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(313, 1, 24, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(314, 2, 24, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(315, 3, 24, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(442, 1, 49, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(443, 2, 49, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(444, 3, 49, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');
INSERT INTO `tb_groups_access` VALUES(445, 1, 50, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(446, 2, 50, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}');
INSERT INTO `tb_groups_access` VALUES(447, 3, 50, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `tb_logs`
--

CREATE TABLE IF NOT EXISTS `tb_logs` (
`auditID` int(20) NOT NULL,
  `ipaddress` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `task` varchar(50) DEFAULT NULL,
  `note` text,
  `logdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_logs`
--

INSERT INTO `tb_logs` VALUES(4, '127.0.0.1', 1, 'logs', 'destroy', 'ID : 3  , Has Been Removed Successfull', '2014-11-28 01:49:22');
INSERT INTO `tb_logs` VALUES(5, '127.0.0.1', 1, 'employee', 'save', ' ID : 1  , Has Been Changed Successfull', '2014-12-09 13:51:32');
INSERT INTO `tb_logs` VALUES(6, '127.0.0.1', 1, 'simplecrud', 'save', ' ID : 1  , Has Been Changed Successfull', '2014-12-11 02:30:29');
INSERT INTO `tb_logs` VALUES(7, '127.0.0.1', 1, 'order', 'save', ' ID : 10248  , Has Been Changed Successfull', '2014-12-11 04:53:04');
INSERT INTO `tb_logs` VALUES(8, '127.0.0.1', 1, 'order', 'save', ' ID : 10250  , Has Been Changed Successfull', '2014-12-12 01:21:14');
INSERT INTO `tb_logs` VALUES(9, '127.0.0.1', 1, 'order', 'save', ' ID : 10251  , Has Been Changed Successfull', '2014-12-12 01:26:43');
INSERT INTO `tb_logs` VALUES(10, '127.0.0.1', 1, 'employee', 'save', ' ID : 8  , Has Been Changed Successfull', '2014-12-15 01:51:00');
INSERT INTO `tb_logs` VALUES(11, '127.0.0.1', 1, 'acustomer', 'destroy', 'ID : 138,139,140  , Has Been Removed Successfull', '2014-12-16 00:39:52');
INSERT INTO `tb_logs` VALUES(12, '127.0.0.1', 1, 'acustomer', 'destroy', 'ID :   , Has Been Removed Successfull', '2014-12-25 03:52:27');
INSERT INTO `tb_logs` VALUES(13, '127.0.0.1', 1, 'acustomer', 'destroy', 'ID :   , Has Been Removed Successfull', '2014-12-25 03:53:31');
INSERT INTO `tb_logs` VALUES(14, '127.0.0.1', 1, 'acustomer', 'destroy', 'ID : 72  , Has Been Removed Successfull', '2014-12-25 03:57:26');
INSERT INTO `tb_logs` VALUES(15, '127.0.0.1', 1, 'acustomer', 'save', 'New Entry row with ID : 3  , Has Been Save Successfull', '2014-12-25 04:22:34');
INSERT INTO `tb_logs` VALUES(16, '127.0.0.1', 1, 'acustomer', 'save', 'New Entry row with ID : 3  , Has Been Save Successfull', '2014-12-25 04:22:55');
INSERT INTO `tb_logs` VALUES(17, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 4  , Has Been Save Successfull', '2014-12-26 07:54:21');
INSERT INTO `tb_logs` VALUES(18, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 5  , Has Been Save Successfull', '2014-12-26 07:55:08');
INSERT INTO `tb_logs` VALUES(19, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 5  , Has Been Save Successfull', '2014-12-26 07:55:57');
INSERT INTO `tb_logs` VALUES(20, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 5  , Has Been Save Successfull', '2014-12-26 08:03:10');
INSERT INTO `tb_logs` VALUES(21, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 5  , Has Been Save Successfull', '2014-12-26 08:39:24');
INSERT INTO `tb_logs` VALUES(22, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 5  , Has Been Save Successfull', '2014-12-26 08:45:50');
INSERT INTO `tb_logs` VALUES(23, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 5  , Has Been Save Successfull', '2014-12-26 08:46:37');
INSERT INTO `tb_logs` VALUES(24, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 4  , Has Been Save Successfull', '2014-12-26 08:46:47');
INSERT INTO `tb_logs` VALUES(25, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 4  , Has Been Save Successfull', '2014-12-26 08:47:55');
INSERT INTO `tb_logs` VALUES(26, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 4  , Has Been Save Successfull', '2014-12-26 08:48:07');
INSERT INTO `tb_logs` VALUES(27, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 4  , Has Been Save Successfull', '2014-12-26 08:48:55');
INSERT INTO `tb_logs` VALUES(28, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 4  , Has Been Save Successfull', '2014-12-26 08:49:52');
INSERT INTO `tb_logs` VALUES(29, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 4  , Has Been Save Successfull', '2014-12-26 08:50:06');
INSERT INTO `tb_logs` VALUES(30, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 4  , Has Been Save Successfull', '2014-12-26 08:50:29');
INSERT INTO `tb_logs` VALUES(31, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 5  , Has Been Save Successfull', '2014-12-26 08:51:09');
INSERT INTO `tb_logs` VALUES(32, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 4  , Has Been Save Successfull', '2014-12-26 09:27:21');
INSERT INTO `tb_logs` VALUES(33, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 4  , Has Been Save Successfull', '2014-12-26 09:29:44');
INSERT INTO `tb_logs` VALUES(34, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID :   , Has Been Save Successfull', '2014-12-26 09:46:02');
INSERT INTO `tb_logs` VALUES(35, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID :   , Has Been Save Successfull', '2014-12-26 09:57:22');
INSERT INTO `tb_logs` VALUES(36, '127.0.0.1', 1, 'asdsad', 'save', 'New Entry row with ID : 1  , Has Been Save Successfull', '2014-12-27 09:35:19');
INSERT INTO `tb_logs` VALUES(37, '127.0.0.1', 1, 'asdsad', 'save', 'New Entry row with ID : 1  , Has Been Save Successfull', '2014-12-29 05:11:16');
INSERT INTO `tb_logs` VALUES(38, '127.0.0.1', 1, 'asdsad', 'save', 'New Entry row with ID : 1  , Has Been Save Successfull', '2014-12-29 05:13:13');
INSERT INTO `tb_logs` VALUES(39, '127.0.0.1', 1, 'students', 'save', 'New Entry row with ID : 20122  , Has Been Save Successfull', '2015-06-16 12:48:59');
INSERT INTO `tb_logs` VALUES(40, '127.0.0.1', 1, 'students', 'save', 'New Entry row with ID : 20122  , Has Been Save Successfull', '2015-06-16 12:50:05');
INSERT INTO `tb_logs` VALUES(41, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 1  , Has Been Save Successfull', '2015-06-16 12:52:29');
INSERT INTO `tb_logs` VALUES(42, '127.0.0.1', 1, 'students', 'save', 'New Entry row with ID : 20123  , Has Been Save Successfull', '2015-06-16 13:11:08');
INSERT INTO `tb_logs` VALUES(43, '127.0.0.1', 1, 'students', 'save', 'New Entry row with ID : 20124  , Has Been Save Successfull', '2015-06-16 13:15:20');
INSERT INTO `tb_logs` VALUES(44, '127.0.0.1', 1, 'enrolment', 'save', 'New Entry row with ID : 3499  , Has Been Save Successfull', '2015-06-16 13:23:56');
INSERT INTO `tb_logs` VALUES(45, '127.0.0.1', 1, 'students', 'destroy', 'ID : 20122,20123,20124  , Has Been Removed Successfull', '2015-06-16 13:29:18');
INSERT INTO `tb_logs` VALUES(46, '127.0.0.1', 1, 'enrolment', 'destroy', 'ID : 3499  , Has Been Removed Successfull', '2015-06-16 13:30:10');
INSERT INTO `tb_logs` VALUES(47, '127.0.0.1', 1, 'students', 'save', 'New Entry row with ID : 20125  , Has Been Save Successfull', '2015-06-16 13:30:54');
INSERT INTO `tb_logs` VALUES(48, '127.0.0.1', 1, 'enrolment', 'save', 'New Entry row with ID : 3500  , Has Been Save Successfull', '2015-06-16 13:31:10');
INSERT INTO `tb_logs` VALUES(49, '127.0.0.1', 1, 'students', 'save', 'New Entry row with ID : 20126  , Has Been Save Successfull', '2015-06-16 13:34:49');
INSERT INTO `tb_logs` VALUES(50, '127.0.0.1', 1, 'enrolment', 'save', 'New Entry row with ID : 3501  , Has Been Save Successfull', '2015-06-16 13:35:00');
INSERT INTO `tb_logs` VALUES(51, '127.0.0.1', 1, 'enrolment', 'destroy', 'ID : 3500,3501  , Has Been Removed Successfull', '2015-06-16 13:38:58');
INSERT INTO `tb_logs` VALUES(52, '127.0.0.1', 1, 'students', 'destroy', 'ID : 20125,20126  , Has Been Removed Successfull', '2015-06-16 13:40:04');
INSERT INTO `tb_logs` VALUES(53, '127.0.0.1', 1, 'students', 'save', 'New Entry row with ID : 20127  , Has Been Save Successfull', '2015-06-16 13:40:36');
INSERT INTO `tb_logs` VALUES(54, '127.0.0.1', 1, 'enrolment', 'save', 'New Entry row with ID : 3502  , Has Been Save Successfull', '2015-06-16 13:40:52');
INSERT INTO `tb_logs` VALUES(55, '127.0.0.1', 1, 'enrolment', 'destroy', 'ID : 3502  , Has Been Removed Successfull', '2015-06-16 13:41:29');
INSERT INTO `tb_logs` VALUES(56, '127.0.0.1', 1, 'students', 'destroy', 'ID : 20127  , Has Been Removed Successfull', '2015-06-16 13:41:36');
INSERT INTO `tb_logs` VALUES(57, '127.0.0.1', 1, 'users', 'destroy', 'ID : 5  , Has Been Removed Successfull', '2015-06-16 13:50:05');
INSERT INTO `tb_logs` VALUES(58, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 4  , Has Been Save Successfull', '2015-06-16 13:51:06');
INSERT INTO `tb_logs` VALUES(59, '127.0.0.1', 4, 'students', 'save', 'New Entry row with ID : 20128  , Has Been Save Successfull', '2015-06-16 14:05:29');
INSERT INTO `tb_logs` VALUES(60, '127.0.0.1', 4, 'enrolment', 'save', 'New Entry row with ID : 3503  , Has Been Save Successfull', '2015-06-16 14:05:53');
INSERT INTO `tb_logs` VALUES(61, '127.0.0.1', 1, 'users', 'destroy', 'ID : 4  , Has Been Removed Successfull', '2015-06-16 14:19:22');
INSERT INTO `tb_logs` VALUES(62, '127.0.0.1', 1, 'users', 'save', 'New Entry row with ID : 6  , Has Been Save Successfull', '2015-06-16 14:20:06');
INSERT INTO `tb_logs` VALUES(63, '127.0.0.1', 6, 'enrolment', 'destroy', 'ID : 3503  , Has Been Removed Successfull', '2015-06-16 14:21:49');
INSERT INTO `tb_logs` VALUES(64, '127.0.0.1', 6, 'students', 'destroy', 'ID : 20128  , Has Been Removed Successfull', '2015-06-16 14:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE IF NOT EXISTS `tb_menu` (
`menu_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `menu_name` varchar(100) DEFAULT NULL,
  `menu_type` char(10) DEFAULT NULL,
  `role_id` varchar(100) DEFAULT NULL,
  `deep` smallint(2) DEFAULT NULL,
  `ordering` int(6) DEFAULT NULL,
  `position` enum('top','sidebar','both') DEFAULT NULL,
  `menu_icons` varchar(30) DEFAULT NULL,
  `active` enum('0','1') DEFAULT '1',
  `access_data` text,
  `allow_guest` enum('0','1') DEFAULT '0',
  `menu_lang` text
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` VALUES(2, 0, 'contact-us', '', 'Contact Us', 'internal', NULL, NULL, 5, 'top', '', '1', '{"1":"0","2":"0","3":"0"}', '1', NULL);
INSERT INTO `tb_menu` VALUES(7, 0, 'faq', '', 'FAQ', 'internal', NULL, NULL, 4, 'top', '', '1', '{"1":"1","2":"0","3":"0"}', '1', NULL);
INSERT INTO `tb_menu` VALUES(12, 0, 'about-us', '', 'About', 'internal', NULL, NULL, 1, 'top', '', '1', '{"1":"0","2":"0","3":"0"}', '1', NULL);
INSERT INTO `tb_menu` VALUES(13, 0, 'service', '', 'Service', 'internal', NULL, NULL, 3, 'top', '', '1', '{"1":"0","2":"0","3":"0"}', '1', '{"title":{"in":"Serpis","pt-br":""}}');
INSERT INTO `tb_menu` VALUES(30, 0, 'portpolio', '', 'Portpolio', 'internal', '0', 0, 2, 'top', '', '1', '{"1":"0","2":"0","3":"0"}', '1', NULL);
INSERT INTO `tb_menu` VALUES(31, 0, '', '', 'Home', 'internal', '0', 0, 0, 'top', '', '1', '{"1":"0","2":"0","3":"0"}', '1', NULL);
INSERT INTO `tb_menu` VALUES(32, 0, 'students', '', 'Estudiantes', 'internal', '0', 0, NULL, 'sidebar', 'fa fa-users', '1', '{"1":"1","2":"1","3":"0"}', '1', NULL);
INSERT INTO `tb_menu` VALUES(33, 0, '', '', 'Cursos', 'external', '0', 0, NULL, 'sidebar', 'fa fa-university', '1', '{"1":"1","2":"1","3":"0"}', '1', NULL);
INSERT INTO `tb_menu` VALUES(34, 0, 'enrolment', '', 'Matrículas', 'internal', '0', 0, NULL, 'sidebar', 'fa fa-file-text', '1', '{"1":"1","2":"1","3":"0"}', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_module`
--

CREATE TABLE IF NOT EXISTS `tb_module` (
`module_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `module_title` varchar(100) DEFAULT NULL,
  `module_note` varchar(255) DEFAULT NULL,
  `module_author` varchar(100) DEFAULT NULL,
  `module_created` timestamp NULL DEFAULT NULL,
  `module_desc` text,
  `module_db` varchar(255) DEFAULT NULL,
  `module_db_key` varchar(100) DEFAULT NULL,
  `module_type` enum('master','report','proccess','core','generic','addon') DEFAULT 'master',
  `module_config` longtext,
  `module_lang` text
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_module`
--

INSERT INTO `tb_module` VALUES(1, 'users', 'Users System', 'Users System', 'Mango Tm', '2013-07-10 15:46:46', NULL, 'tb_users', 'id', 'core', 'eyJ0YWJsZV9kY4oIonR4XgVzZXJzo4w4cHJ1bWFyeV9rZXk4O4JlciVyXi3ko4w4cgFsXgN3bGVjdCoIo3NFTEVDVCA5dGJfdXN3cnMuK4w5oHR4XidybgVwcymuYWl3oFxyXGmGUk9NoHR4XgVzZXJzoExFR3Q5Sk9JT4B0Y39ncp9lcHM5T0a5dGJfZgJvdXBzLpdybgVwXi3koD05dGJfdXN3cnMuZgJvdXBf6WQ4LCJzcWxfdih3cpU4O4o5oCBXSEVSRSB0Y39lciVycym1ZCAhPScnoCA4LCJzcWxfZgJvdXA4O4o5oCA5o4w4Zp9ybXM4O3t7opZ1ZWxkoj246WQ4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGF4ZWw4O4JJZCosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj2xLCJ0eXB3oj246G3kZGVuo4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIojE4LCJzbgJ0bG3zdCoIojA4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24ZgJvdXBf6WQ4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGF4ZWw4O4JHcp9lcCBcLyBMZXZ3bCosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIonJ3cXV1cpVko4w4dp33dyoIMSw4dH3wZSoIonN3bGVjdCosopFkZCoIMSw4ci3IZSoIojA4LCJ3ZG30oj2xLCJzZWFyYi54O4oxo4w4ci9ydGx1cgQ4O4oyo4w4bgB06W9uoj17op9wdF90eXB3oj24ZXh0ZXJuYWw4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4J0Y39ncp9lcHM4LCJsbi9rdXBf6iVmoj24ZgJvdXBf6WQ4LCJsbi9rdXBfdpFsdWU4O4JuYWl3o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24dXN3cpmhbWU4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGF4ZWw4O4JVciVybpFtZSosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIonJ3cXV1cpVko4w4dp33dyoIMSw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj24MSosonNvcnRs6XN0oj24Myosop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4Jp6XJzdF9uYWl3o4w4YWx1YXM4O4J0Y39lciVycyosopxhYpVsoj24Rp3ycgQ5TpFtZSosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIonJ3cXV1cpVko4w4dp33dyoIMSw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj24MSosonNvcnRs6XN0oj24NCosop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JsYXN0XimhbWU4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGF4ZWw4O4JMYXN0oEmhbWU4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMSw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj24MSosonNvcnRs6XN0oj24NSosop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4J3bWF1bCosopFs6WFzoj24dGJfdXN3cnM4LCJsYWJ3bCoIokVtYW3so4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24ZWlh6Ww4LCJi6WVgoj2xLCJ0eXB3oj24dGVadCosopFkZCoIMSw4ci3IZSoIojA4LCJ3ZG30oj2xLCJzZWFyYi54O4oxo4w4ci9ydGx1cgQ4O4oio4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIonBhcgNgbgJko4w4YWx1YXM4O4J0Y39lciVycyosopxhYpVsoj24UGFzcgdvcpQ4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojc4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4owo4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIopxvZi3uXiF0dGVtcHQ4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGF4ZWw4O4JMbid1b4BBdHR3bXB0o4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjEsonRmcGU4O4J0ZXh0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4oao4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIopxhcgRfbG9n6Wa4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGF4ZWw4O4JMYXN0oExvZi3uo4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjAsonRmcGU4O4J0ZXh0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4omo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24MCosopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JhYgR1dpU4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGF4ZWw4O4JTdGF0dXM4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4JyZXFl6XJ3ZCosonZ1ZXc4OjEsonRmcGU4O4JyYWR1byosopFkZCoIMSw4ci3IZSoIojA4LCJ3ZG30oj2xLCJzZWFyYi54O4oxo4w4ci9ydGx1cgQ4O4oxMCosop9wdG3vb4oIeyJvcHRfdH3wZSoIopRhdGFs6XN0o4w4bG9v6gVwXgFlZXJmoj24MD1JbpFjdG3iZXwxOkFjdG3iZSosopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JhdpF0YXo4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGF4ZWw4O4JBdpF0YXo4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMSw4dH3wZSoIopZ1bGU4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojExo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo3wvdXBsbiFkclwvdXN3cnNcLyosonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIop3tYWd3o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24YgJ3YXR3ZF9hdCosopFs6WFzoj24dGJfdXN3cnM4LCJsYWJ3bCoIokNyZWF0ZWQ5QXQ4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHRhcpVho4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4oxM4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JlcGRhdGVkXiF0o4w4YWx1YXM4O4J0Y39lciVycyosopxhYpVsoj24VXBkYXR3ZCBBdCosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj2wLCJ0eXB3oj24dGVadGFyZWE4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojEzo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fXldLCJncp3koj1beyJp6WVsZCoIop3ko4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JJZCosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjAsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojA4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24YXZhdGFyo4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JBdpF0YXo4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2wLCJzZWFyYi54OjEsopRvdimsbiFkoj2wLCJpcp9IZWa4OjEsond1ZHR2oj24MzA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojE4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjEsonBhdG54O4JcLgVwbG9hZHNcLgVzZXJzXC84LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24ZgJvdXBf6WQ4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokdybgVwo4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MyosopNvbpa4Ons4dpFs6WQ4O4oxo4w4ZGo4O4J0Y39ncp9lcHM4LCJrZXk4O4Jncp9lcF91ZCosopR1cgBsYXk4O4JuYWl3on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bpFtZSosopFs6WFzoj24dGJfZgJvdXBzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokdybgVwo4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NCosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JlciVybpFtZSosopFs6WFzoj24dGJfdXN3cnM4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VXN3cpmhbWU4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4o4LCJzbgJ0bG3zdCoIojU4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24Zp3ycgRfbpFtZSosopFs6WFzoj24dGJfdXN3cnM4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24Rp3ycgQ5TpFtZSosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIo4osonNvcnRs6XN0oj24N4osopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JsYXN0XimhbWU4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokxhcgQ5TpFtZSosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIo4osonNvcnRs6XN0oj24NyosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4J3bWF1bCosopFs6WFzoj24dGJfdXN3cnM4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24RWlh6Ww4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4o4LCJzbgJ0bG3zdCoIoj54LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24cGFzcgdvcpQ4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIo3BhcgNgbgJko4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24OSosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4Jsbid1b39hdHR3bXB0o4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JMbid1b4BBdHR3bXB0o4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MTA4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24YgJ3YXR3ZF9hdCosopFs6WFzoj24dGJfdXN3cnM4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24QgJ3YXR3ZCBBdCosonZ1ZXc4OjAsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjAsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojExo4w4Yi9ub4oIeyJiYWx1ZCoIo4osopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIopxhcgRfbG9n6Wa4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokxhcgQ5TG9n6Wa4LCJi6WVgoj2wLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2wLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oxM4osopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JlcGRhdGVkXiF0o4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JVcGRhdGVkoEF0o4w4dp33dyoIMCw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MTM4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24YWN06XZ3o4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JBYgR1dpU4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2wLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4o4LCJzbgJ0bG3zdCoIojE0o4w4Yi9ub4oIeyJiYWx1ZCoIo4osopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fXldfQ==', NULL);
INSERT INTO `tb_module` VALUES(2, 'groups', 'Users Group', 'View All', 'Mango Tm', '2013-07-10 06:45:14', NULL, 'tb_groups', 'group_id', 'core', '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O4JJRCosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojA4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMCw4bG3u6yoIo4osonRhcpd3dCoIo39zZWxpo4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bpFtZSosopFs6WFzoj24dGJfZgJvdXBzo4w4bGF4ZWw4O4JOYWl3o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24o4w4ci9ydGx1cgQ4O4oxo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjAsopx1bps4O4o4LCJ0YXJnZXQ4O4JfciVsZ4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIopR3ciNy6XB06W9uo4w4YWx1YXM4O4J0Y39ncp9lcHM4LCJsYWJ3bCoIokR3ciNy6XB06W9uo4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24o4w4ci9ydGx1cgQ4O4oyo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjAsopx1bps4O4o4LCJ0YXJnZXQ4O4JfciVsZ4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIopx3dpVso4w4YWx1YXM4O4J0Y39ncp9lcHM4LCJsYWJ3bCoIokx3dpVso4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MyosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2wLCJs6Wmroj24o4w4dGFyZiV0oj24XgN3bGY4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9XX0=', NULL);
INSERT INTO `tb_module` VALUES(4, 'module', 'Module Management', 'All module applications', 'Mango Tm', '2013-08-25 04:58:43', NULL, 'tb_module', 'module_id', 'core', 'eyJ0YWJsZV9kY4oIonR4XilvZHVsZSosonBy6Wlhcn3f6iVmoj24bW9kdWx3Xi3ko4w4cgFsXgN3bGVjdCoIo3NFTEVDVCB0Y39tbiRlbGUubW9kdWx3Xi3kLHR4XilvZHVsZSmtbiRlbGVfbpFtZSx0Y39tbiRlbGUubW9kdWx3XgR1dGx3LHR4XilvZHVsZSmtbiRlbGVfbp90ZSx0Y39tbiRlbGUubW9kdWx3XiFldGhvc4x0Y39tbiRlbGUubW9kdWx3XiNyZWF0ZWQsdGJfbW9kdWx3LplvZHVsZV9kZXNjLHR4XilvZHVsZSmtbiRlbGVfZGosdGJfbW9kdWx3LplvZHVsZV9kY39rZXksdGJfbW9kdWx3LplvZHVsZV90eXB3LHR4XilvZHVsZSmncp9lcF91ZCx0Y39tbiRlbGUubW9kdWx3XgBhdG55oEZST005dGJfbW9kdWx3oCosonNxbF9g6GVyZSoIo4A5oFdoRVJFoHR4XilvZHVsZSmtbiRlbGVf6WQ5SVM5Tk9UoEmVTEw5QUmEoGlvZHVsZV9uYWl3oCE9JilvZHVsZSc5oCosonNxbF9ncp9lcCoIo4A5oCA4LCJpbgJtcyoIWgs4Zp33bGQ4O4JtbiRlbGVf6WQ4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24TW9kdWx3oE3ko4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjEsonRmcGU4O4J26WRkZWa4LCJhZGQ4OpZhbHN3LCJ3ZG30oj1pYWxzZSw4ciVhcpN2oj2wLCJz6X13oj24cgBhbjEyo4w4ci9ydGx1cgQ4O4owo4w4bgB06W9uoj17op9wdF90eXB3oj1pYWxzZSw4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIZpFsciUsopxvbitlcF9iYWxlZSoIZpFsciUsop3zXiR3cGVuZGVuYgk4OpZhbHN3LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4OpZhbHN3LCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj1pYWxzZSw4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24bW9kdWx3XimhbWU4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24TW9kdWx3oEmhbWU4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHQ4LCJhZGQ4O4o4LCJ3ZG30oj24o4w4ciVhcpN2oj2xLCJz6X13oj24cgBhbjEyo4w4ci9ydGx1cgQ4OjEsop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIojA4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JtbiRlbGVfdG30bGU4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24TW9kdWx3oFR1dGx3o4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MSosonZ1ZXc4OjEsonRmcGU4O4J0ZXh0o4w4YWRkoj24o4w4ZWR1dCoIo4osonN3YXJj6CoIMSw4ci3IZSoIonNwYWaxM4osonNvcnRs6XN0oj2yLCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4owo4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24bW9kdWx3XimvdGU4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24TW9kdWx3oEmvdGU4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4o4LCJi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dGVuZF9jbGFzcyoIo4J9fV0sopdy6WQ4O3t7opZ1ZWxkoj24bW9kdWx3Xi3ko4w4YWx1YXM4O4J0Y39tbiRlbGU4LCJsYWJ3bCoIoklvZHVsZSBJZCosonZ1ZXc4OjAsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojE4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMCw4bG3u6yoIo4osonRhcpd3dCoIo39zZWxpo4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bW9kdWx3XgBhdG54LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24QXBwcyosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojo4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMCw4bG3u6yoIo4osonRhcpd3dCoIo39zZWxpo4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bW9kdWx3XimhbWU4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24Qi9udHJvbGx3c4osonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojM4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMCw4bG3u6yoIo4osonRhcpd3dCoIo39zZWxpo4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bW9kdWx3XgR1dGx3o4w4YWx1YXM4O4J0Y39tbiRlbGU4LCJsYWJ3bCoIoklvZHVsZSBOYWl3o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEyMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NCosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2wLCJs6Wmroj24o4w4dGFyZiV0oj24XgN3bGY4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JtbiRlbGVfbp90ZSosopFs6WFzoj24dGJfbW9kdWx3o4w4bGF4ZWw4O4JObgR3o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojElMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NSosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2wLCJs6Wmroj24o4w4dGFyZiV0oj24XgN3bGY4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JtbiRlbGVfYXV06G9yo4w4YWx1YXM4O4J0Y39tbiRlbGU4LCJsYWJ3bCoIokFldGhvc4osonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojY4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMCw4bG3u6yoIo4osonRhcpd3dCoIo39zZWxpo4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bW9kdWx3XiNyZWF0ZWQ4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24QgJ3YXR3ZCosonZ1ZXc4OjAsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojc4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMCw4bG3u6yoIo4osonRhcpd3dCoIo39zZWxpo4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bW9kdWx3XiR3ciM4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24TW9kdWx3oER3ciM4LCJi6WVgoj2wLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oao4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjAsopx1bps4O4o4LCJ0YXJnZXQ4O4JfciVsZ4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIoplvZHVsZV9kY4osopFs6WFzoj24dGJfbW9kdWx3o4w4bGF4ZWw4O4JNbiRlbGU5RGo4LCJi6WVgoj2wLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4omo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjAsopx1bps4O4o4LCJ0YXJnZXQ4O4JfciVsZ4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIoplvZHVsZV9kY39rZXk4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24TW9kdWx3oER4oEt3eSosonZ1ZXc4OjAsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojEwo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjAsopx1bps4O4o4LCJ0YXJnZXQ4O4JfciVsZ4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIoplvZHVsZV90eXB3o4w4YWx1YXM4O4J0Y39tbiRlbGU4LCJsYWJ3bCoIo3RmcGU4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oxMSosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2wLCJs6Wmroj24o4w4dGFyZiV0oj24XgN3bGY4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4Jncp9lcF91ZCosopFs6WFzoj24dGJfbW9kdWx3o4w4bGF4ZWw4O4JHcp9lcCBJZCosonZ1ZXc4OjAsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojEyo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjAsopx1bps4O4o4LCJ0YXJnZXQ4O4JfciVsZ4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fXldfQ==', NULL);
INSERT INTO `tb_module` VALUES(7, 'menu', 'Menu Management', 'Manage All Menu', 'Mango Tm', '2014-01-06 07:50:29', NULL, 'tb_menu', 'menu_id', 'core', 'eyJ0YWJsZV9kY4oIonR4Xil3bnU4LCJwcp3tYXJmXit3eSoIopl3bnVf6WQ4LCJzcWxfciVsZWN0oj24U0VMRUNUoHR4Xil3bnUuK4A5R3JPTSB0Y39tZWmloCosonNxbF9g6GVyZSoIo4BXSEVSRSB0Y39tZWmlLpl3bnVf6WQ5SVM5Tk9UoEmVTEw4LCJzcWxfZgJvdXA4O4o4LCJncp3koj1beyJp6WVsZCoIopl3bnVf6WQ4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIokl3bnU5SWQ4LCJi6WVgoj24MCosopR3dGF1bCoIojA4LCJzbgJ0YWJsZSoIojE4LCJzZWFyYi54O4oxo4w4ZG9gbpxvYWQ4O4oxo4w4ZnJvepVuoj24MCosoph1ZGR3b4oIojA4LCJhbG3nb4oIopx3ZnQ4LCJg6WR06CoIojEwMCosonNvcnRs6XN0oj24MCosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj1pYWxzZSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj1pYWxzZSw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0on0seyJp6WVsZCoIonBhcpVudF91ZCosopFs6WFzoj24dGJfbWVudSosopxhYpVsoj24UGFyZWm0oE3ko4w4dp33dyoIojE4LCJkZXRh6Ww4O4oxo4w4ci9ydGF4bGU4O4oxo4w4ciVhcpN2oj24MSosopRvdimsbiFkoj24MSosopZybg13b4oIojA4LCJ26WRkZWa4O4oxo4w4YWx1Zia4O4JsZWZ0o4w4di3kdG54O4oxMDA4LCJzbgJ0bG3zdCoIojE4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIZpFsciUsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIZpFsciUsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9LCJ0eXB3oj24dGVadCJ9LHs4Zp33bGQ4O4JtbiRlbGU4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIoklvZHVsZSosonZ1ZXc4O4oxo4w4ZGV0YW3soj24MSosonNvcnRhYpx3oj24MSosonN3YXJj6CoIojE4LCJkbgdubG9hZCoIojE4LCJpcp9IZWa4O4owo4w46G3kZGVuoj24MCosopFs6Wduoj24bGVpdCosond1ZHR2oj24MTUwo4w4ci9ydGx1cgQ4O4ozo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OpZhbHN3LCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OpZhbHN3LCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fSw4dH3wZSoIonR3eHQ4fSx7opZ1ZWxkoj24dXJso4w4YWx1YXM4O4J0Y39tZWmlo4w4bGF4ZWw4O4JVcpw4LCJi6WVgoj24MCosopR3dGF1bCoIojA4LCJzbgJ0YWJsZSoIojE4LCJzZWFyYi54O4oxo4w4ZG9gbpxvYWQ4O4oxo4w4ZnJvepVuoj24MCosoph1ZGR3b4oIojA4LCJhbG3nb4oIopx3ZnQ4LCJg6WR06CoIojEwMCosonNvcnRs6XN0oj24MyosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj1pYWxzZSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj1pYWxzZSw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0on0seyJp6WVsZCoIopl3bnVfbpFtZSosopFs6WFzoj24dGJfbWVudSosopxhYpVsoj24TWVudSBOYWl3o4w4dp33dyoIojE4LCJkZXRh6Ww4O4oxo4w4ci9ydGF4bGU4O4oxo4w4ciVhcpN2oj24MSosopRvdimsbiFkoj24MSosopZybg13b4oIojA4LCJ26WRkZWa4O4owo4w4YWx1Zia4O4JsZWZ0o4w4di3kdG54O4ozMDA4LCJzbgJ0bG3zdCoIojo4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIZpFsciUsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIZpFsciUsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9LCJ0eXB3oj24dGVadCJ9LHs4Zp33bGQ4O4JtZWmlXgRmcGU4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIokl3bnU5VH3wZSosonZ1ZXc4O4owo4w4ZGV0YW3soj24MCosonNvcnRhYpx3oj24MSosonN3YXJj6CoIojE4LCJkbgdubG9hZCoIojE4LCJpcp9IZWa4O4owo4w46G3kZGVuoj24MCosopFs6Wduoj24bGVpdCosond1ZHR2oj24MTAwo4w4ci9ydGx1cgQ4O4olo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OpZhbHN3LCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OpZhbHN3LCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fSw4dH3wZSoIonR3eHQ4fSx7opZ1ZWxkoj24cp9sZV91ZCosopFs6WFzoj24dGJfbWVudSosopxhYpVsoj24Up9sZSBJZCosonZ1ZXc4O4owo4w4ZGV0YW3soj24MSosonNvcnRhYpx3oj24MSosonN3YXJj6CoIojE4LCJkbgdubG9hZCoIojE4LCJpcp9IZWa4O4owo4w46G3kZGVuoj24MCosopFs6Wduoj24bGVpdCosond1ZHR2oj24MTAwo4w4ci9ydGx1cgQ4O4oio4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OpZhbHN3LCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OpZhbHN3LCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fSw4dH3wZSoIonR3eHQ4fSx7opZ1ZWxkoj24ZGV3cCosopFs6WFzoj24dGJfbWVudSosopxhYpVsoj24RGV3cCosonZ1ZXc4O4owo4w4ZGV0YW3soj24MSosonNvcnRhYpx3oj24MSosonN3YXJj6CoIojE4LCJkbgdubG9hZCoIojE4LCJpcp9IZWa4O4owo4w46G3kZGVuoj24MCosopFs6Wduoj24bGVpdCosond1ZHR2oj24MTAwo4w4ci9ydGx1cgQ4O4ogo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OpZhbHN3LCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OpZhbHN3LCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fSw4dH3wZSoIonR3eHQ4fSx7opZ1ZWxkoj24bgJkZXJ1bpc4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIok9yZCosonZ1ZXc4O4oxo4w4ZGV0YW3soj24MSosonNvcnRhYpx3oj24MSosonN3YXJj6CoIojE4LCJkbgdubG9hZCoIojE4LCJpcp9IZWa4O4owo4w46G3kZGVuoj24MCosopFs6Wduoj24bGVpdCosond1ZHR2oj24NTA4LCJzbgJ0bG3zdCoIoj54LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIZpFsciUsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIZpFsciUsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9LCJ0eXB3oj24dGVadCJ9LHs4Zp33bGQ4O4JwbgN1dG3vb4osopFs6WFzoj24dGJfbWVudSosopxhYpVsoj24UG9z6XR1bia4LCJi6WVgoj24MCosopR3dGF1bCoIojA4LCJzbgJ0YWJsZSoIojE4LCJzZWFyYi54O4oxo4w4ZG9gbpxvYWQ4O4oxo4w4ZnJvepVuoj24MCosoph1ZGR3b4oIojA4LCJhbG3nb4oIopx3ZnQ4LCJg6WR06CoIojEwMCosonNvcnRs6XN0oj24OSosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj1pYWxzZSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj1pYWxzZSw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0on0seyJp6WVsZCoIopl3bnVf6WNvbnM4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIo4BJYi9uo4w4dp33dyoIojE4LCJkZXRh6Ww4O4oxo4w4ci9ydGF4bGU4O4oxo4w4ciVhcpN2oj24MSosopRvdimsbiFkoj24MSosopZybg13b4oIojA4LCJ26WRkZWa4O4owo4w4YWx1Zia4O4JsZWZ0o4w4di3kdG54O4olMCosonNvcnRs6XN0oj24MTA4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIZpFsciUsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIZpFsciUsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9LCJ0eXB3oj24dGVadCJ9LHs4Zp33bGQ4O4JhYgR1dpU4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIokFjdG3iZSosonZ1ZXc4O4oxo4w4ZGV0YW3soj24MSosonNvcnRhYpx3oj24MSosonN3YXJj6CoIojE4LCJkbgdubG9hZCoIojE4LCJpcp9IZWa4O4owo4w46G3kZGVuoj24MCosond1ZHR2oj24NTA4LCJhbG3nb4oIopN3bnR3c4osonNvcnRs6XN0oj24NyosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj1pYWxzZSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj1pYWxzZSw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0onldLCJpbgJtcyoIWgs4Zp33bGQ4O4JtZWmlXi3ko4w4YWx1YXM4O4J0Y39tZWmlo4w4bGF4ZWw4O4JNZWmloE3ko4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIojE4LCJ0eXB3oj24dGVadCosopFkZCoIojE4LCJ3ZG30oj24MSosonN3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bG9hZCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24bWVudV90eXB3o4w4YWx1YXM4O4J0Y39tZWmlo4w4bGF4ZWw4O4JNZWmloFRmcGU4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoINSw4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIonJvbGVf6WQ4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIo3JvbGU5SWQ4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoIN4w4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIopR3ZXA4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIokR3ZXA4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoINyw4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIop9yZGVy6Wmno4w4YWx1YXM4O4J0Y39tZWmlo4w4bGF4ZWw4O4JPcpR3cp3uZyosonJ3cXV1cpVkoj24MCosonZ1ZXc4O4oxo4w4dH3wZSoIonR3eHQ4LCJhZGQ4O4oxo4w4ZWR1dCoIojE4LCJzZWFyYi54O4oxo4w4ci3IZSoIonNwYWaxM4osonNvcnRs6XN0oj2aLCJpbgJtXidybgVwoj24o4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24cG9z6XR1bia4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIo3Bvci306W9uo4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIojE4LCJ0eXB3oj24dGVadCosopFkZCoIojE4LCJ3ZG30oj24MSosonN3YXJj6CoIojE4LCJz6X13oj24cgBhbjEyo4w4ci9ydGx1cgQ4OjksopZvcplfZgJvdXA4O4o4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JtZWmlXi3jbimzo4w4YWx1YXM4O4J0Y39tZWmlo4w4bGF4ZWw4O4JNZWmloE3jbimzo4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIojE4LCJ0eXB3oj24dGVadCosopFkZCoIojE4LCJ3ZG30oj24MSosonN3YXJj6CoIojE4LCJz6X13oj24cgBhbjEyo4w4ci9ydGx1cgQ4OjEwLCJpbgJtXidybgVwoj24o4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24YWN06XZ3o4w4YWx1YXM4O4J0Y39tZWmlo4w4bGF4ZWw4O4JBYgR1dpU4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoIMTEsopZvcplfZgJvdXA4O4o4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9XX0=', NULL);
INSERT INTO `tb_module` VALUES(8, 'pages', 'Pages CMS Management', 'View all static pages', 'Mango Tm', '2014-03-25 22:33:41', NULL, 'tb_pages', 'pageID', 'core', 'eyJ0YWJsZV9kY4oIonR4XgBhZiVzo4w4cHJ1bWFyeV9rZXk4O4JwYWd3SUQ4LCJzcWxfciVsZWN0oj24oFNFTEVDVCB0Y39wYWd3cyaqoEZST005dGJfcGFnZXM5o4w4cgFsXgd2ZXJ3oj24oFdoRVJFoHR4XgBhZiVzLnBhZiVJRCBJUyBOTlQ5T3VMTCosonNxbF9ncp9lcCoIo4osopdy6WQ4O3t7opZ1ZWxkoj24cGFnZU3Eo4w4YWx1YXM4O4J0Y39wYWd3cyosopxhbpdlYWd3oj17op3uoj24on0sopxhYpVsoj24UGFnZU3Eo4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MSosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0on0seyJp6WVsZCoIonR1dGx3o4w4YWx1YXM4O4J0Y39wYWd3cyosopxhbpdlYWd3oj17op3uoj24on0sopxhYpVsoj24VG30bGU4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oyo4w4Yi9ub4oIeyJiYWx1ZCoIo4osopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fSw4dH3wZSoIonR3eHQ4fSx7opZ1ZWxkoj24bp90ZSosopFs6WFzoj24dGJfcGFnZXM4LCJsYWmndWFnZSoIeyJ1b4oIo4J9LCJsYWJ3bCoIokmvdGU4LCJi6WVgoj2wLCJkZXRh6Ww4OjAsonNvcnRhYpx3oj2wLCJzZWFyYi54OjEsopRvdimsbiFkoj2wLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4ozo4w4Yi9ub4oIeyJiYWx1ZCoIo4osopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fSw4dH3wZSoIonR3eHQ4fSx7opZ1ZWxkoj24YWx1YXM4LCJhbG3hcyoIonR4XgBhZiVzo4w4bGFuZgVhZiU4Ons46Wa4O4o4fSw4bGF4ZWw4O4JTbHVno4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NCosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0on0seyJp6WVsZCoIopNyZWF0ZWQ4LCJhbG3hcyoIonR4XgBhZiVzo4w4bGFuZgVhZiU4Ons46Wa4O4o4fSw4bGF4ZWw4O4JDcpVhdGVko4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24OCosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0on0seyJp6WVsZCoIonVwZGF0ZWQ4LCJhbG3hcyoIonR4XgBhZiVzo4w4bGFuZgVhZiU4Ons46Wa4O4o4fSw4bGF4ZWw4O4JVcGRhdGVko4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24OSosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0on0seyJp6WVsZCoIopZ1bGVuYWl3o4w4YWx1YXM4O4J0Y39wYWd3cyosopxhbpdlYWd3oj17op3uoj24on0sopxhYpVsoj24Rp3sZWmhbWU4LCJi6WVgoj2wLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4olo4w4Yi9ub4oIeyJiYWx1ZCoIo4osopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fSw4dH3wZSoIonR3eHQ4fSx7opZ1ZWxkoj24cgRhdHVzo4w4YWx1YXM4O4J0Y39wYWd3cyosopxhbpdlYWd3oj17op3uoj24on0sopxhYpVsoj24UgRhdHVzo4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24N4osopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0on0seyJp6WVsZCoIopFjYiVzcyosopFs6WFzoj24dGJfcGFnZXM4LCJsYWmndWFnZSoIeyJ1b4oIo4J9LCJsYWJ3bCoIokFjYiVzcyosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjAsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojc4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9LCJ0eXB3oj24dGVadCJ9LHs4Zp33bGQ4O4JhbGxvdl9ndWVzdCosopFs6WFzoj24dGJfcGFnZXM4LCJsYWmndWFnZSoIeyJ1b4oIo4J9LCJsYWJ3bCoIokFsbG9goEdlZXN0o4w4dp33dyoIMCw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24OSosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9LCJ0eXB3oj24dGVadCJ9LHs4Zp33bGQ4O4J0ZWlwbGF0ZSosopFs6WFzoj24dGJfcGFnZXM4LCJsYWmndWFnZSoIeyJ1b4oIo4J9LCJsYWJ3bCoIo3R3bXBsYXR3o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MTA4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fSw4dH3wZSoIonR3eHQ4fV0sopZvcplzoj1beyJp6WVsZCoIonBhZiVJRCosopFs6WFzoj24dGJfcGFnZXM4LCJsYWJ3bCoIo3BhZiVJRCosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj2xLCJ0eXB3oj246G3kZGVuo4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIojE4LCJzbgJ0bG3zdCoIojE4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24dG30bGU4LCJhbG3hcyoIonR4XgBhZiVzo4w4bGF4ZWw4O4JU6XRsZSosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIonJ3cXV1cpVko4w4dp33dyoIMSw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj24MSosonNvcnRs6XN0oj24M4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JubgR3o4w4YWx1YXM4O4J0Y39wYWd3cyosopxhYpVsoj24Tp90ZSosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj2wLCJ0eXB3oj24dGVadCosopFkZCoIMSw4ci3IZSoIojA4LCJ3ZG30oj2xLCJzZWFyYi54OjAsonNvcnRs6XN0oj24OSosop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JhbG3hcyosopFs6WFzoj24dGJfcGFnZXM4LCJsYWJ3bCoIokFs6WFzo4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24YWxwYSosonZ1ZXc4OjEsonRmcGU4O4J0ZXh0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIojE4LCJzbgJ0bG3zdCoIojM4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24YgJ3YXR3ZCosopFs6WFzoj24dGJfcGFnZXM4LCJsYWJ3bCoIokNyZWF0ZWQ4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMSw4dH3wZSoIoph1ZGR3b4osopFkZCoIMSw4ZWR1dCoIMSw4ciVh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', '{"title":{"in":"","pt-br":""},"note":{"in":"","pt-br":""}}');
INSERT INTO `tb_module` VALUES(11, 'logs', 'Logs', 'Users Activity Log', 'Mango Tm', '2014-04-21 22:59:43', NULL, 'tb_logs', 'auditID', 'core', 'eyJ0YWJsZV9kY4oIonR4XixvZgM4LCJwcp3tYXJmXit3eSoIopFlZG30SUQ4LCJzcWxfciVsZWN0oj24oFNFTEVDVCB0Y39sbidzL425R3JPTSB0Y39sbidzoCosonNxbF9g6GVyZSoIo4BXSEVSRSB0Y39sbidzLpFlZG30SUQ5SVM5Tk9UoEmVTEw4LCJzcWxfZgJvdXA4O4o4LCJncp3koj1beyJp6WVsZCoIopFlZG30SUQ4LCJhbG3hcyoIonR4XixvZgM4LCJsYWJ3bCoIokFlZG30SUQ4LCJi6WVgoj2wLCJkZXRh6Ww4OjAsonNvcnRhYpx3oj2wLCJzZWFyYi54OjEsopRvdimsbiFkoj2wLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oxo4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4J1cGFkZHJ3cgM4LCJhbG3hcyoIonR4XixvZgM4LCJsYWJ3bCoIok3Qo4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24M4osopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24dXN3c391ZCosopFs6WFzoj24dGJfbG9ncyosopxhYpVsoj24VXN3cnM4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4ozo4w4Yi9ub4oIeyJiYWx1ZCoIojE4LCJkY4oIonR4XgVzZXJzo4w46iVmoj246WQ4LCJk6XNwbGFmoj24Zp3ycgRfbpFtZSJ9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIoplvZHVsZSosopFs6WFzoj24dGJfbG9ncyosopxhYpVsoj24TW9kdWx3o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NCosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24dGFz6yosopFs6WFzoj24dGJfbG9ncyosopxhYpVsoj24VGFz6yosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojU4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIopmvdGU4LCJhbG3hcyoIonR4XixvZgM4LCJsYWJ3bCoIokmvdGU4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oio4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JsbidkYXR3o4w4YWx1YXM4O4J0Y39sbidzo4w4bGF4ZWw4O4JMbidkYXR3o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NyosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fV0sopZvcplzoj1beyJp6WVsZCoIopFlZG30SUQ4LCJhbG3hcyoIonR4XixvZgM4LCJsYWJ3bCoIokFlZG30SUQ4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoIMCw4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIop3wYWRkcpVzcyosopFs6WFzoj24dGJfbG9ncyosopxhYpVsoj24SXBhZGRyZXNzo4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIojE4LCJ0eXB3oj24dGVadCosopFkZCoIojE4LCJ3ZG30oj24MSosonN3YXJj6CoIojE4LCJz6X13oj24cgBhbjEyo4w4ci9ydGx1cgQ4OjEsopZvcplfZgJvdXA4O4o4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JlciVyXi3ko4w4YWx1YXM4O4J0Y39sbidzo4w4bGF4ZWw4O4JVciVyoE3ko4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjEsonRmcGU4O4JzZWx3YgQ4LCJhZGQ4OjEsopVk6XQ4OjEsonN3YXJj6CoI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', NULL);
INSERT INTO `tb_module` VALUES(49, 'students', 'Estudiantes', 'Estudiantes', NULL, '2015-06-16 17:34:49', NULL, 'sc_student', 'id', 'addon', 'eyJzcWxfciVsZWN0oj24oFNFTEVDVCBzYl9zdHVkZWm0L425R3JPTSBzYl9zdHVkZWm0oCosonNxbF9g6GVyZSoIo4BXSEVSRSBzYl9zdHVkZWm0Lp3koE3ToEmPVCBOVUxMo4w4cgFsXidybgVwoj24o4w4dGF4bGVfZGo4O4JzYl9zdHVkZWm0o4w4cHJ1bWFyeV9rZXk4O4J1ZCosopZvcplfYi9sdWluoj2yLCJpbgJtXixheW9ldCoIeyJjbixlbWa4OjosonR1dGx3oj24RGF0bgM5UGVyci9uYWx3cyxDdWVudGE4LCJpbgJtYXQ4O4J0YWo4LCJk6XNwbGFmoj246G9y6X1vbnRhbCJ9LCJncp3koj1beyJp6WVsZCoIop3ko4w4YWx1YXM4O4JzYl9zdHVkZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIo4M5TWF0c3xlMDB3ZGNlbGE4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oxo4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4J1ZGVudG30eWmlbWJ3c4osopFs6WFzoj24ciNfcgRlZGVudCosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4ojoE3kZWm06WRhZCosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojo4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIopmhbWU4LCJhbG3hcyoIonNjXgN0dWR3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24Tp9tYnJ3o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MyosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24ZpF06GVybGFzdGmhbWU4LCJhbG3hcyoIonNjXgN0dWR3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24QXB3bGx1ZG85MSosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojQ4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIoplvdGh3cpxhcgRuYWl3o4w4YWx1YXM4O4JzYl9zdHVkZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokFwZWxs6WRvoDo4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4olo4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JjbgVyciVlciVybpFtZSosopFs6WFzoj24ciNfcgRlZGVudCosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JVcgVhcp3vo4w4dp33dyoIMCw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24N4osopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24Yi9lcnN3cGFzcgdvcpQ4LCJhbG3hcyoIonNjXgN0dWR3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24Qi9udHJhciVcdTAwZjFho4w4dp33dyoIMCw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NyosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24ZWlh6Ww4LCJhbG3hcyoIonNjXgN0dWR3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24RSltYW3so4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24OCosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24ZiVuZGVyo4w4YWx1YXM4O4JzYl9zdHVkZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokdcdTAwZT3uZXJvo4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24OSosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24Yp3ydGhkYXR3o4w4YWx1YXM4O4JzYl9zdHVkZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokZ3YihhoGR3oEmhYi3t6WVudG84LCJi6WVgoj2wLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oxMCosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24dpFs6WQ4LCJhbG3hcyoIonNjXgN0dWR3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VpFs6WQ4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oxMSosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bGFzdF9sbid1b4osopFs6WFzoj24ciNfcgRlZGVudCosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JMYXN0oExvZi3uo4w4dp33dyoIMCw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MTo4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIopNyZWF0ZWRfYXQ4LCJhbG3hcyoIonNjXgN0dWR3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24QgJ3YXR3ZCBBdCosonZ1ZXc4OjAsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojEzo4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JlcGRhdGVkXiF0o4w4YWx1YXM4O4JzYl9zdHVkZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIo3VwZGF0ZWQ5QXQ4LCJi6WVgoj2wLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oxNCosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fV0sopZvcplzoj1beyJp6WVsZCoIop3ko4w4YWx1YXM4O4JzYl9zdHVkZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIok3ko4w4Zp9ybV9ncp9lcCoIojA4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj2xLCJ0eXB3oj246G3kZGVuo4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4owo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj246WR3bnR1dH3udWl4ZXo4LCJhbG3hcyoIonNjXgN0dWR3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24T3xlMDBpYWl3cp85ZGU5SWR3bnR1ZGFko4w4Zp9ybV9ncp9lcCoIojA4LCJyZXFl6XJ3ZCoIopFscGFfbnVto4w4dp33dyoIMSw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj24MSosonNvcnRs6XN0oj24MSosop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w46XNfbXVsdG3wbGU4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIopmhbWU4LCJhbG3hcyoIonNjXgN0dWR3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24Tp9tYnJ3o4w4Zp9ybV9ncp9lcCoIojA4LCJyZXFl6XJ3ZCoIopFscGE4LCJi6WVgoj2xLCJ0eXB3oj24dGVadCosopFkZCoIMSw4ci3IZSoIojA4LCJ3ZG30oj2xLCJzZWFyYi54O4oxo4w4ci9ydGx1cgQ4O4oyo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24ZpF06GVybGFzdGmhbWU4LCJhbG3hcyoIonNjXgN0dWR3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24QXB3bGx1ZG85MSosopZvcplfZgJvdXA4O4owo4w4cpVxdW3yZWQ4O4JhbHBho4w4dp33dyoIMSw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj24MSosonNvcnRs6XN0oj24Myosop9wdG3vb4oIeyJv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o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHRfZGF0ZXR1bWU4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojc4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osop3zXillbHR1cGx3oj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JiYWx1ZCosopFs6WFzoj24ciNfcgRlZGVudCosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JWYWx1ZCosopZvcplfZgJvdXA4O4owo4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj24MSosonNvcnRs6XN0oj24OCosop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w46XNfbXVsdG3wbGU4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIopxhcgRfbG9n6Wa4LCJhbG3hcyoIonNjXgN0dWR3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24TGFzdCBMbid1b4osopZvcplfZgJvdXA4O4owo4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojk4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osop3zXillbHR1cGx3oj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JjcpVhdGVkXiF0o4w4YWx1YXM4O4JzYl9zdHVkZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokNyZWF0ZWQ5QXQ4LCJpbgJtXidybgVwoj24MCosonJ3cXV1cpVkoj24MCosonZ1ZXc4OjAsonRmcGU4O4J0ZXh0XiRhdGV06Wl3o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4oxMCosop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w46XNfbXVsdG3wbGU4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIonVwZGF0ZWRfYXQ4LCJhbG3hcyoIonNjXgN0dWR3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VXBkYXR3ZCBBdCosopZvcplfZgJvdXA4O4owo4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHRfZGF0ZXR1bWU4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojExo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24Yi9lcnN3dXN3cpmhbWU4LCJhbG3hcyoIonNjXgN0dWR3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VXNlYXJ1byosopZvcplfZgJvdXA4O4oxo4w4cpVxdW3yZWQ4O4JhbHBhXimlbSosonZ1ZXc4OjEsonRmcGU4O4J0ZXh0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4O4oxM4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w46XNfbXVsdG3wbGU4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIopNvdXJzZXBhcgNgbgJko4w4YWx1YXM4O4JzYl9zdHVkZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokNvbnRyYXN3XHUwMGYxYSosopZvcplfZgJvdXA4O4oxo4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMSw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIojEzo4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fVl9', NULL);
INSERT INTO `tb_module` VALUES(50, 'enrolment', 'Matrículas', 'Matrículas', NULL, '2015-06-16 18:16:14', NULL, 'pv_enrolment', 'id', 'addon', 'eyJzcWxfciVsZWN0oj24oFNFTEVDVCBwd393bnJvbGl3bnQuK4BGUk9NoHBiXiVucp9sbWVudCA4LCJzcWxfdih3cpU4O4o5V0hFUkU5cHZfZWmybixtZWm0Lp3koE3ToEmPVCBOVUxMo4w4cgFsXidybgVwoj24o4w4dGF4bGVfZGo4O4Jwd393bnJvbGl3bnQ4LCJwcp3tYXJmXit3eSoIop3ko4w4ZgJ1ZCoIWgs4Zp33bGQ4O4J1ZCosopFs6WFzoj24cHZfZWmybixtZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIok3ko4w4dp33dyoIMCw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MSosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24ciNfUgRlZGVudF91ZCosopFs6WFzoj24cHZfZWmybixtZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokVzdHVk6WFudGU4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oyo4w4Yi9ub4oIeyJiYWx1ZCoIojE4LCJkY4oIonNjXgN0dWR3bnQ4LCJrZXk4O4J1ZCosopR1cgBsYXk4O4J1ZHxuYWl3fGZhdGh3cpxhcgRuYWl3on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24Yi9lcnN3SWQ4LCJhbG3hcyoIonBiXiVucp9sbWVudCosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JDdXJzbyosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojM4LCJjbimuoj17onZhbG3koj24MSosopR4oj24ciNfYi9lcnN3o4w46iVmoj246WQ4LCJk6XNwbGFmoj24Yi9kZXxuYWl3on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24Zp3uYWxzYi9yZSosopFs6WFzoj24cHZfZWmybixtZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokmvdGE5Zp3uYWw4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4o0o4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JjbiltZWm0o4w4YWx1YXM4O4Jwd393bnJvbGl3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24Qi9tZWm0YXJ1byosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojU4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIopVucp9sbWVudFN0YXRlcyosopFs6WFzoj24cHZfZWmybixtZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokVzdGFkbyosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojY4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIonZhbG3ko4w4YWx1YXM4O4Jwd393bnJvbGl3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VpFs6WQ4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4ogo4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JjcpVhdGVkXiF0o4w4YWx1YXM4O4Jwd393bnJvbGl3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24QgJ3YWRvo4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24OCosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24dXBkYXR3ZF9hdCosopFs6WFzoj24cHZfZWmybixtZWm0o4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokFjdHVhbG3IYWRvo4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24OSosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fV0sopZvcplfYi9sdWluoj2xLCJpbgJtXixheW9ldCoIeyJjbixlbWa4OjEsonR1dGx3oj24ZWmybixtZWm0o4w4Zp9ybWF0oj24ZgJ1ZCosopR1cgBsYXk4O4J2bgJ1ep9udGFson0sopZvcplzoj1beyJp6WVsZCoIop3ko4w4YWx1YXM4O4Jwd393bnJvbGl3bnQ4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24SWQ4LCJpbgJtXidybgVwoj2wLCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj2xLCJ0eXB3oj246G3kZGVuo4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIojE4LCJzbgJ0bG3zdCoIMCw4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJ1cl9tdWx06XBsZSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24Yi9lcnN3SWQ4LCJhbG3hcyoIonBiXiVucp9sbWVudCosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JDdXJzbyosopZvcplfZgJvdXA4OjAsonJ3cXV1cpVkoj24cpVxdW3yZWQ4LCJi6WVgoj2xLCJ0eXB3oj24ciVsZWN0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIojE4LCJzbgJ0bG3zdCoIMSw4bgB06W9uoj17op9wdF90eXB3oj24ZXh0ZXJuYWw4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4JzYl9jbgVyciU4LCJsbi9rdXBf6iVmoj246WQ4LCJsbi9rdXBfdpFsdWU4O4JjbiR3fGmhbWU4LCJ1cl9kZXB3bpR3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YWJ3bCoIokNyZWF0ZWQ5QXQ4LCJpbgJtXidybgVwoj2wLCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj2wLCJ0eXB3oj24dGVadF9kYXR3dG3tZSosopFkZCoIMSw4ci3IZSoIojA4LCJ3ZG30oj2xLCJzZWFyYi54O4oxo4w4ci9ydGx1cgQ4Ojcsop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w46XNfbXVsdG3wbGU4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIonVwZGF0ZWRfYXQ4LCJhbG3hcyoIonBiXiVucp9sbWVudCosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JVcGRhdGVkoEF0o4w4Zp9ybV9ncp9lcCoIMCw4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHRfZGF0ZXR1bWU4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj24MSosonNvcnRs6XN0oj2aLCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osop3zXillbHR1cGx3oj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9XX0=', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pages`
--

CREATE TABLE IF NOT EXISTS `tb_pages` (
`pageID` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `status` enum('enable','disable') DEFAULT 'enable',
  `access` text,
  `allow_guest` enum('0','1') DEFAULT '0',
  `template` enum('frontend','backend') DEFAULT 'frontend'
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_pages`
--

INSERT INTO `tb_pages` VALUES(1, 'Homepage', NULL, 'home', '2014-02-14 00:00:00', '2014-02-14 00:00:00', 'home', 'enable', '{"1":"1","2":"1","3":"1"}', '1', 'frontend');
INSERT INTO `tb_pages` VALUES(29, 'service', NULL, 'service', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'service', 'enable', '{"1":"1","2":"0","3":"0"}', '1', 'frontend');
INSERT INTO `tb_pages` VALUES(27, 'About Us', NULL, 'about-us', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'aboutus', 'enable', '{"1":"1","2":"0","3":"0"}', '1', 'frontend');
INSERT INTO `tb_pages` VALUES(26, 'Contact Us', NULL, 'contact-us', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'contactus', 'enable', '{"1":"1","2":"0","3":"0"}', '1', 'frontend');
INSERT INTO `tb_pages` VALUES(35, 'FAQ', NULL, 'faq', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'faq', 'enable', '{"1":"1","2":"0","3":"0"}', '1', 'frontend');
INSERT INTO `tb_pages` VALUES(36, 'Portpolio', NULL, 'portpolio', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'portpolio', 'enable', '{"1":"1","2":"1","3":"1"}', '1', 'frontend');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE IF NOT EXISTS `tb_users` (
`id` int(11) NOT NULL,
  `group_id` int(6) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `login_attempt` tinyint(2) DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reminder` varchar(64) DEFAULT NULL,
  `activation` varchar(50) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` VALUES(1, 1, 'superadmin', '5f4dcc3b5aa765d61d8327deb882cf99', 'davidmorenoazua@gmail.com', 'David', 'Moreno Azúa', 'photo-4000.png', 1, 0, '2015-06-16 15:57:19', '2014-03-12 09:18:46', '2014-12-22 00:07:31', '', NULL, '5EspLUTGAWYSjz1BuvTkGuIqPWdvSyxO5VMkAD6VaLdTReLopmgVqrU0udUR');
INSERT INTO `tb_users` VALUES(6, 2, 'matriculador', '4297f44b13955235245b2497399d7a93', 'matriculador@mail.com', 'Matriculador', '', NULL, 1, 0, '2015-06-16 16:31:52', '2015-06-16 14:20:06', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `au_exam`
--
ALTER TABLE `au_exam`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_au_exam_sc_Course1_idx` (`sc_Course_id`), ADD KEY `fk_au_exam_sc_Student1_idx` (`sc_Student_id`);

--
-- Indexes for table `au_exam_has_au_question`
--
ALTER TABLE `au_exam_has_au_question`
 ADD PRIMARY KEY (`au_exam_id`,`au_question_id`), ADD KEY `fk_au_exam_has_au_question_au_question1_idx` (`au_question_id`), ADD KEY `fk_au_exam_has_au_question_au_exam1_idx` (`au_exam_id`);

--
-- Indexes for table `au_log`
--
ALTER TABLE `au_log`
 ADD PRIMARY KEY (`id`,`sc_Student_id`,`sc_Course_id`,`unit`), ADD KEY `fk_au_log_sc_Course_idx` (`sc_Course_id`), ADD KEY `fk_au_log_sc_Student1_idx` (`sc_Student_id`);

--
-- Indexes for table `au_question`
--
ALTER TABLE `au_question`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_au_question_sc_Course_id_sc_Course_id` (`sc_Course_id`);

--
-- Indexes for table `au_seccion`
--
ALTER TABLE `au_seccion`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_au_seccion_sc_Course_id_sc_Course_id` (`sc_Course_id`);

--
-- Indexes for table `pv_enrolment`
--
ALTER TABLE `pv_enrolment`
 ADD PRIMARY KEY (`id`), ADD KEY `courseid_idx` (`courseId`), ADD KEY `userid_idx` (`sc_Student_id`);

--
-- Indexes for table `sc_course`
--
ALTER TABLE `sc_course`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `coursetypeid_idx` (`coursetypeid`);

--
-- Indexes for table `sc_student`
--
ALTER TABLE `sc_student`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tb_groups`
--
ALTER TABLE `tb_groups`
 ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `tb_groups_access`
--
ALTER TABLE `tb_groups_access`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_logs`
--
ALTER TABLE `tb_logs`
 ADD PRIMARY KEY (`auditID`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
 ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tb_module`
--
ALTER TABLE `tb_module`
 ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `tb_pages`
--
ALTER TABLE `tb_pages`
 ADD PRIMARY KEY (`pageID`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `au_exam`
--
ALTER TABLE `au_exam`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `au_log`
--
ALTER TABLE `au_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `au_question`
--
ALTER TABLE `au_question`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `au_seccion`
--
ALTER TABLE `au_seccion`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `pv_enrolment`
--
ALTER TABLE `pv_enrolment`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3499;
--
-- AUTO_INCREMENT for table `sc_course`
--
ALTER TABLE `sc_course`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sc_student`
--
ALTER TABLE `sc_student`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20122;
--
-- AUTO_INCREMENT for table `tb_groups`
--
ALTER TABLE `tb_groups`
MODIFY `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_groups_access`
--
ALTER TABLE `tb_groups_access`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=448;
--
-- AUTO_INCREMENT for table `tb_logs`
--
ALTER TABLE `tb_logs`
MODIFY `auditID` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tb_module`
--
ALTER TABLE `tb_module`
MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tb_pages`
--
ALTER TABLE `tb_pages`
MODIFY `pageID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `au_exam`
--
ALTER TABLE `au_exam`
ADD CONSTRAINT `fk_au_exam_sc_Course1` FOREIGN KEY (`sc_Course_id`) REFERENCES `sc_course` (`id`),
ADD CONSTRAINT `fk_au_exam_sc_Student1` FOREIGN KEY (`sc_Student_id`) REFERENCES `sc_student` (`id`);

--
-- Constraints for table `au_exam_has_au_question`
--
ALTER TABLE `au_exam_has_au_question`
ADD CONSTRAINT `fk_au_exam_has_au_question_au_exam1` FOREIGN KEY (`au_exam_id`) REFERENCES `au_exam` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_au_exam_has_au_question_au_question1` FOREIGN KEY (`au_question_id`) REFERENCES `au_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `au_log`
--
ALTER TABLE `au_log`
ADD CONSTRAINT `fk_au_log_sc_Course` FOREIGN KEY (`sc_Course_id`) REFERENCES `sc_course` (`id`),
ADD CONSTRAINT `fk_au_log_sc_Student1` FOREIGN KEY (`sc_Student_id`) REFERENCES `sc_student` (`id`);

--
-- Constraints for table `au_question`
--
ALTER TABLE `au_question`
ADD CONSTRAINT `fk_au_question_sc_Course_id_sc_Course_id` FOREIGN KEY (`sc_Course_id`) REFERENCES `sc_course` (`id`);

--
-- Constraints for table `au_seccion`
--
ALTER TABLE `au_seccion`
ADD CONSTRAINT `fk_au_seccion_sc_Course_id_sc_Course_id` FOREIGN KEY (`sc_Course_id`) REFERENCES `sc_course` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
