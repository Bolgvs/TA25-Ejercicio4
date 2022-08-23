DROP TABLE IF EXISTS `peliculas`;
DROP TABLE IF EXISTS `salas`;


CREATE TABLE `peliculas` (
  `codigo` INT auto_increment,
  `nombre` VARCHAR(250) DEFAULT NULL,
  `calificacion_edad` INT DEFAULT NULL,
  PRIMARY KEY (`codigo`)
);

CREATE TABLE `salas` (
  `codigo` int auto_increment,
  `nombre` VARCHAR(250) DEFAULT NULL,
  `codigo_pelicula` INT DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  CONSTRAINT `salas_fk` FOREIGN KEY (`codigo_pelicula`) 
  REFERENCES `peliculas` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
);

insert into PELICULAS values (default,'Spiderman',14),(default,'Hulk',16),(default,'Thor',18);

insert into SALAS values (default,'Palace',1),(default,'Axion',2),(default,'Frightened',3);