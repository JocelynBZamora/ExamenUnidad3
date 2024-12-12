CREATE DATABASE  IF NOT EXISTS `webnoticias` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `webnoticias`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: webnoticias
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (2,'HARDWARE'),(4,'SOFTWARE'),(5,'TECNOLOGIA');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(100) NOT NULL,
  `Fecha` date NOT NULL,
  `Contenido` longtext NOT NULL,
  `FechaPublicacion` datetime NOT NULL,
  `Vistas` bigint(20) unsigned NOT NULL DEFAULT '0',
  `IdCategoria` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_noticias_1` (`IdCategoria`),
  CONSTRAINT `FK_noticias_1` FOREIGN KEY (`IdCategoria`) REFERENCES `categorias` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,'Microsoft se une a Linux Foundation','2016-11-16','Microsoft anunció el 16 de noviembre su incorporación a Linux Foundation, incluyendo un cupo en su directiva. Hace pocos años, la noticia habría causado conmoción. Sin embargo, ahora resulta un paso natural considerando el considerable aporte hecho por Microsoft a la comunidad Linux.\r\n\r\nGuthrie también realizó una demostración de la versión preliminar de Visual Studio para Mac, con la cual los desarrolladores pueden escribir aplicaciones en la nube, móviles y macOS en el sistema operativo Mac de Apple utilizando el popular ambiente de desarrollo; una presentación preliminar de la siguiente versión de la base de datos SQL Server de la compañía con soporte para Linux, contenedores Docker basados en Linux y ambientes basados en Windows, y una versión preliminar del Servicio de Aplicaciones Azure en Linux con soporte para contenedores.','2016-12-16 08:19:14',16,4),(2,'Google desarrolla nuevo sistema operativo','2016-09-26','El sitio Android Police, entre otros, informa que Google estaría desarrollando un sistema operativo totalmente nuevo. Los sistemas operativos desarrollados por Google son Android y Chrome OS, ambos basados en el kernel de Linux.\r\n\r\nSin embargo, el nuevo sistema operativo, conocido internamente en Google con el nombre Fuchsia OS, es un proyecto de código abierto y no estaría basado en Linux.\r\n\r\nFuchsia OS está basado en un kernel denominado Magenta, que a su vez tiene su origen en Little Kernel, sistema operativo diseñado para pequeños dispositivos integrados, dotados de procesadores ARM.\r\n\r\nSegún la fuente, es dable suponer que Fuchsia OS es mucho más escalable que los sistemas operativos “incrustados” conocidos hasta ahora. Magenta sería la plataforma central de Fuchsia OS y consistiría de un micro-kernel, combinado con funcionalidad “user space”, o espacio del usuario, necesaria para arrancar el sistema, comunicación con otro hardware, como asimismo para subida y ejecución de los procesos en dicho espacio. Estos procesos incluyen servicios, conectores y bibliotecas.','2016-12-16 08:19:40',5,4),(3,'Anuncian era de las computadoras biológicas','2016-03-01','La supercomputadoras actuales constituyen, en realidad, un grupo de servidores operando en paralelo, con el fin de resolver grandes tareas de cálculo. Generalmente, estas instalaciones ocupan gran espacio, junto con necesitar cuantiosa energía e infraestructura para refrigeración.\r\n\r\nLa semana pasada, científicos adscritos a las universidades suecas de Lund y Linné anunciaron un hito en investigación, que allanaría el camino para una nueva era en informática: la computación biológica. Éstos dispositivos estarían en condiciones de solucionar tareas matemáticas con mayor rapidez y mejor costo-eficiencia que la supercomputadoras actuales.\r\n\r\nSegún la Universidad de Lund, las computadoras actuales no son totalmente eficientes al solucionar problemas que impliquen un gran número de combinaciones y posibles soluciones. Ejemplos concretos de ello son la criptografía y el aprendizaje automático.','2016-12-15 18:07:17',14,2),(6,'Gente que roba datos de tu cabeza','2016-10-23','La última frontera del hurto no es apropiarse de tus cosas o tu dinero, sino de la información que alberga tu cerebro. Si bien este planteamiento pudiera parecer propio de una película de ciencia ficción, a uno de los últimos capítulos de la serie Black Mirror, podría suceder antes de lo que creemos.\r\n\r\nLos EEG son bandas o dispositivos biosensores que sirven, por ejemplo, para jugar a videojuegos, o para monitorizar nuestro sueño. Los auriculares EEG como el NeuroSky MyndWave, permite controlar con la mente muchas cosas.\r\n\r\nEn realidad, los auriculares EEG es un casco de encefalografía que, tras años de estudios científicos y aplicación en ámbitos clínicos, llega por primera vez al mercado de consumo masivo. La medición del casco se realiza mediante un innovador sensor seco que capta y digitaliza las frecuencias de las ondas cerebrales.\r\n\r\nEn el estudio anteriormente mencionado, un grupo de personas llevaban auriculares EEG puestos, y los investigadores les mostraron imágenes breves de cosas como teclados de cajeros automáticos para introducir el PIN, tarjetas de crédito y calendarios. Bajo las imágenes había preguntas del tipo \"¿cuál es tu PIN?\" o \"¿cuál es tu fecha de nacimiento?\".\r\n\r\nLos resultados fueron que, al leer las ondas cerebrales que irradiaban estos auriculares, los investigadores fueron capaces de averiguar el PIN de los sujetos con un 30% de fiabilidad y la fecha de nacimiento con un 60%.','2016-12-16 08:54:32',5,5),(7,'Ya estamos más cerca de poder cargar el móvil mientras caminamos','2015-12-12','La obsesión de hacer los teléfonos cada vez más delgados, unida a que la tecnología no ha variado apenas en años, hace que la autonomía siga siendo una de las principales preocupaciones de los usuarios móviles.\r\n\r\nYa que los miliamperios no crecen como deben, los fabricantes ahora tratan de llevar un paso más allá la carga rápida, que en ocasiones va unida a la carga inalámbrica. Pero una de las posibles soluciones para el futuro parece estar encontrando su camino. Ya está en marcha la tecnología que permitiría cargar nuestros móviles de forma cinética, simplemente con el movimiento.\r\n\r\nLa tecnología de que hablamos ha sido creada por investigadores de la Universidad Estatal de Michigan y se trata de un nanogenerador cuyo grosor es tan fino como un foli\r\no. Pero no sólo eso, sino que es posible plegarlo de forma que se adapte a cualquier forma y tamaño que deseemos con un regalo adicional: cuantos más pliegues tenga, más energía es capaz de generar.\r\n\r\nCon este nanogenerador, los investigadores han conseguido alimentar un conjunto de 20 luces LED de forma directa, sin la presencia siquiera de una batería conectada, simplemente con la energía generada por el dispositivo directa a su destino. Aunque eso supondría que se podría alimentar cualquier dispositivo simplemente con el movimiento, en el caso de los smartphones, por ejemplo, sí sería necesaria una batería para mantener el móvil encendido durante el tiempo que estuviese quieto al no hablar de ningún dispositivo de movimiento continuo.','2016-12-16 09:00:17',5,5),(8,'Yahoo utilizó criptografía obsoleta poniendo, nuevamente, en riesgo a sus usuarios','2016-11-02','Dependiendo de la información proporcionada por los usuarios, se trataría de su identificador para inicio de sesiones, dirección de correo electrónico, número telefónico, fecha de nacimiento y contraseña. La intrusión habría ocurrido en agosto de 2013; es decir, antes del incidente de 2014, que la empresa finalmente “confesó” en septiembre de este año. En esa oportunidad, la situación afectó a 500 millones de cuentas de usuarios.\r\n\r\nAl ser publicada con tanta tardanza, la nueva revelación de Yahoo en principio sólo dejaría de manifiesto, nuevamente, la indiferencia de la empresa frente a la seguridad de sus usuarios, y su necesidad de ser informados cuando sus datos personales quedan en manos de desconocidos. Sin embargo, lo que da un carácter especial a la nueva confesión de Yahoo es que las contraseñas utilizadas para la intrusión de 2013 utilizaban el algoritmo MD5 (abreviatura de Message-Digest Algorithm 5, o Algoritmo de Resumen del Mensaje 5). En su artículo sobre MD5, Wikipedia escribe: “A pesar de haber sido considerado criptográficamente seguro en un principio, ciertas investigaciones han revelado vulnerabilidades que hacen cuestionable el uso futuro del MD5”, agregando que en agosto de 2004; es decir, hace 12 años, un grupo de investigadores anunció el descubrimiento de colisiones de hash para MD5. “Su ataque se consumó en una hora de cálculo con un clúster IBM P690”.','2016-12-16 09:11:14',1,2),(9,'Actualización gratis de Windows 10 en 2017 centrada en la creatividad y el 3D','2016-08-26','A comienzos de 2017 veremos la Windows 10 Creators Update, una actualización en la que el 3D parece tener mucho protagonismo. Microsoft dice que las nuevas generaciones están creciendo en mundos 3D, editando mundos en Minecraft. Con la Creators Update la empresa quiera ayudar a los creadores a traer sus ideas a la realidad.\r\n\r\nCon la Creators Update Windows 10 incluirá Paint 3D en lugar de la app que conocíamos de siempre. Microsoft quiere que crear contenido 3D sea tan fácil como tomar una foto o un vídeo con tu smartphone, así que prometen que podrás usar tu dispositivo Android o un iPhone para obtener la experiencia en cualquier lugar.\r\n\r\n\r\nEl 3D también llegará a al resto de las aplicaciones de Microsoft. Durante el evento mostraron cómo podría usarse la tecnología para compartir recuerdos en 3D en Facebook, cómo podrás insertar modelos 3D en Power Point, o cómo navegar con las Hololens y Microsoft Edge en tres dimensiones.\r\n\r\n','2016-12-16 09:20:24',0,4),(10,'Facebook no para de ganar dinero y usuarios en cantidades abismales','2016-11-03','La empresa de Mark Zuckerberg es una máquina de hacer dinero, mientras en Twitter tienen que despedir al 9% de su plantilla para intentar recortar gastos y mantenerse a flote, en Facebook contrataron 1200 empleados tan solo en el último trismestre del año y han elevado su fuerza de trabajo a 15.700 personas.\r\n\r\nFacebook superó las predicciones de los analistas y reportó ingresos por más de 7000 millones de dólares, un aumento del 56% en relación con el mismo trimestre el año pasado. Las ganancias totales de la compañía se triplicaron el relación con 2015, con 2379 millones de dólares para el tercer trimestre de 2017. Es la sexta vez consecutiva que Facebook reporta números que superan las expectativas.\r\n\r\nFacebook no solo gana dinero, gana usuarios. El número de usuarios activos al mes alcanzó los 1790 millones en promedio durante septiembre de 2016, un aumento del 22% en comparación con el año anterior.','2016-12-16 09:26:16',0,5);
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-04  9:41:04
