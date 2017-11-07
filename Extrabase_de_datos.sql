CREATE DATABASE BD_Proyecto4;
USE BD_Proyecto;

CREATE TABLE PROYECTO3(
	id int,
	nombre varchar(10),
	descripcion varchar(255),	
	PRIMARY KEY(id)
	);


CREATE TABLE EXTRA_CRITERIO(
	id int AUTO_INCREMENT,
	nombre varchar(40),
	ponderacion int,
	tipo int,
	calificacion int,
	PRIMARY KEY(id)
);

CREATE TABLE CRITERIO_PROYECTO(
	idcriterio int AUTO_INCREMENT,
	idproyecto int,
	ponderacion int,
	PRIMARY KEY(idcriterio,idproyecto),
	FOREIGN KEY(idcriterio) REFERENCES EXTRA_CRITERIO(id),
	FOREIGN KEY(idproyecto) REFERENCES PROYECTO3(id)
); 

INSERT INTO EXTRA_CRITERIO (nombre,tipo,calificacion) values 
	('Duración (en meses)', 0, 0),
	('Valor Presente Neto', 0, 1),
	('Periodo de recuperación de la inversión', 0, 0),
	('Riesgo', 1, 0),
	('Generación de la tecnología propietaria', 1, 1);
