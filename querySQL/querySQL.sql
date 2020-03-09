DELETE FROM CANCION;
DELETE FROM ALBUM;
DELETE FROM ARTISTA;
DELETE FROM DISCOGRAFICA;
--------------------------------------------------
CREATE TABLE `CANCION` (
  `CANCION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,

  `TITULO` varchar(30) NOT NULL,

  `DURACION` int(10) NOT NULL,

  `ALBUM_ID` int(10),

  PRIMARY KEY (`CANCION_ID`)
);

CREATE TABLE `ALBUM` (

  `ALBUM_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,

  
`NOMBRE` varchar(30) NOT NULL,

  `NUM_CANCIONES` int(3) NOT NULL,
  `FECHA_LANZAMIENTO` DATE NOT NULL,
  `ARTISTA_ID` int(10),

  PRIMARY KEY (`ALBUM_ID`)

);
ALTER TABLE CANCION
ADD FOREIGN KEY (ALBUM_ID) REFERENCES ALBUM(ALBUM_ID);

CREATE TABLE `ARTISTA` (

  `ARTISTA_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,

  
`NOMBRE` varchar(30) NOT NULL,
  
`GENERO` varchar(30) NOT NULL,
  `DISCOGRAFICA_ID` int(10),

  PRIMARY KEY (`ARTISTA_ID`)

);
ALTER TABLE ALBUM
ADD FOREIGN KEY (ARTISTA_ID) REFERENCES ARTISTA(ARTISTA_ID);

CREATE TABLE `DISCOGRAFICA` (

  `DISCOGRAFICA_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,

  
`NOMBRE` varchar(30) NOT NULL,

  PRIMARY KEY (`DISCOGRAFICA_ID`)

);
ALTER TABLE ARTISTA
ADD FOREIGN KEY (DISCOGRAFICA_ID) REFERENCES DISCOGRAFICA(DISCOGRAFICA_ID);
--------------------------------------------------
insert into discografica values ( 1, 'Napalm Records');
insert into artista values (1, 'Powerwolf', 'Metal', 1);
insert into album values ( 1, 'Blessed & Possessed', 11, to_date('2015-01-01','YYYY-MM-DD'), 1);
insert into cancion values ( 1, 'Army of The Night', 220, 1);
----------------------------------------------------

