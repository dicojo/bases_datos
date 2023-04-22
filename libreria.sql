
CREATE DATABASE libreria

USE libreria;

DROP TABLE IF EXISTS asignatura

CREATE TABLE asignatura (
  codigomat varchar(10) NOT NULL,
  nombre varchar(50) NOT NULL,
  PRIMARY KEY (codigomat)
) 

INSERT INTO asignatura 
VALUES ('M01','Calculo'),('M02','Matematicas'),('M03','Estructura de datos'),('M04','Ingl'),('M05','Sistemas de Inf.'),('M06','Contabilidad'),('M07','Redes'),('M08','Diagramacion'),('M09','Base de datos');
---------------------------------------------------------------------------

select * from asignatura

INSERT INTO asignatura (codigomat,nombre)values('M10','Lengua Castellana')


DROP TABLE IF EXISTS autor

CREATE TABLE autor (
  codautor varchar(10) NOT NULL,
  nombre varchar(50) NOT NULL,
  PRIMARY KEY (codautor)
) 

INSERT INTO autor VALUES ('A01','Luis Joyanes'),('A02','Jorge Vasquez Posada'),('A03','Jhon Soars'),('A04','Riaz Khadem'),('A05','Robert Lorber'),('A06','Mario Dream');
-----------------------------------------------------------------------------
select * from editorial

DROP TABLE IF EXISTS editorial;

CREATE TABLE editorial (
  codedit varchar(10) NOT NULL,
  nombre varchar(50) NOT NULL,
  PRIMARY KEY (codedit)
) 

INSERT INTO editorial VALUES ('E01','Oveja Negra'),('E02','Norma'),('E03','Mc Graw Hill');
---------------------------------------------------------------------


DROP TABLE IF EXISTS libro

CREATE TABLE libro (
  idlibro varchar(10) NOT NULL,
  descripcion varchar(50) NOT NULL,
  nropagina int NOT NULL,
  precio int NOT NULL,
  codigomat varchar(10) NOT NULL,
  PRIMARY KEY (idlibro),
  FOREIGN KEY (codigomat) REFERENCES asignatura (codigomat)
) 

alter table 

INSERT INTO libro VALUES ('L01','Calculo II',120,55000,'M01'),('L02','BD II',150,65000,'M09'),('L03','Estructura de datos',180,85000,'M03'),('L04','Ingles',280,105000,'M04'),('L05','Admon en una pagina',70,7500,'M05'),('L06','Contabilidad I',170,27500,'M06'),('L07','Redes',370,32500,'M07'),('L08','Diagramacion',85,45000,'M08');
------------------------------------------------------------------------------------

DROP TABLE IF EXISTS liautedi;

CREATE TABLE liautedi (
  idlibro varchar(10) NOT NULL,
  codautor varchar(10) NOT NULL,
  codedit varchar(10) NOT NULL,
 FOREIGN KEY (idlibro) REFERENCES libro (idlibro),
 FOREIGN KEY (codautor) REFERENCES autor (codautor),
 FOREIGN KEY (codedit) REFERENCES editorial (codedit)
) 

INSERT INTO liautedi VALUES ('L02','A01','E01'),('L02','A05','E03'),('L06','A02','E02'),('L07','A05','E03'),('L04','A04','E01'),('L04','A04','E02'),('L04','A04','E03');
 select * from liautedi

 -----------------------------------------------
 create
 select
 insert into
 update
 delete


 select * from asignatura
 update editorial set nombre='El tiempo' where codedit='E01'
 
 update asignatura set nombre='INGLES' where codigomat='M04'

 PDATE tabla SET campo = ‘valor_nuevo’ WHERE condicion=‘valor’


 DELETE FROM TABLA WHERE CONDICION

 delete from asignatura where codigomat='m10'