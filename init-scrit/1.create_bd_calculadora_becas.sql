-- LICENCIATURAS
DROP TABLE IF EXISTS LICENCIATURAS;
CREATE TABLE LICENCIATURAS (
  ID_LICENCIATURA     INT         NOT NULL AUTO_INCREMENT,
  CVE_LICENCIATURA    VARCHAR(10) NOT NULL,
  NOMBRE_LICENCIATURA VARCHAR(50) NOT NULL,
  ESTATUS             ENUM ('S', 'N'),
  PRIMARY KEY (ID_LICENCIATURA)
);
-- GRUPOS
DROP TABLE IF EXISTS GRUPOS;
CREATE TABLE GRUPOS (
  ID_GRUPO        INT         NOT NULL  AUTO_INCREMENT,
  CVE_GRUPO       VARCHAR(10) NOT NULL,
  ID_LICENCIATURA INT         NOT NULL,
  ESTATUS         ENUM ('S', 'N'),
  PRIMARY KEY (ID_GRUPO),
  FOREIGN KEY (ID_LICENCIATURA) REFERENCES LICENCIATURAS (ID_LICENCIATURA)
);
-- ALUMNOS
DROP TABLE IF EXISTS ALUMNOS;
CREATE TABLE ALUMNOS (
  ID_ALUMNO   INT          NOT NULL AUTO_INCREMENT,
  MATRICULA   VARCHAR(12)  NOT NULL,
  NOMBRES     VARCHAR(150) NOT NULL,
  APE_PATERNO VARCHAR(150) NOT NULL,
  APE_MATERNO VARCHAR(150),
  ESTATUS     ENUM ('S', 'N'),
  PRIMARY KEY (ID_ALUMNO)
);

-- ACTIVIDADES
DROP TABLE IF EXISTS ACTIVIDADES;
CREATE TABLE ACTIVIDADES (
  ID_ACTIVIDAD     INT          NOT NULL AUTO_INCREMENT,
  NOMBRE_ACTIVIDAD VARCHAR(150) NOT NULL,
  OBLIGATORIO      ENUM ('S', 'N'),
  NUMERO_ALUMNOS   INT,
  ESTATUS          ENUM ('S', 'N'),
  PRIMARY KEY (ID_ACTIVIDAD)
);

-- USUARIOS
DROP TABLE IF EXISTS USUARIOS;
CREATE TABLE USUARIOS (
  ID_USUARIO   INT AUTO_INCREMENT  NOT NULL,
  NOMBRES      VARCHAR(150)        NOT NULL,
  APE_PATERNO  VARCHAR(150)        NOT NULL,
  APE_MATERNO  VARCHAR(150),
  TIPO_USUARIO ENUM ('ADMINISTRADOR', 'ENCARGADO'),
  USERNAME     VARCHAR(100) UNIQUE NOT NULL,
  PASSWORD     VARCHAR(255)        NOT NULL,
  ESTATUS      ENUM ('S', 'N'),
  PRIMARY KEY (ID_USUARIO)
);

-- RELACIÓN ACTIVIDADES CON USUARIOS
DROP TABLE IF EXISTS ACTIVIDAD_USUARIO;
CREATE TABLE ACTIVIDAD_USUARIO (
  ID_ACTIVIDAD_USUARIO INT AUTO_INCREMENT NOT NULL,
  ID_ACTIVIDAD         INT                NOT NULL,
  ID_USUARIO           INT                NOT NULL,
  PRIMARY KEY (ID_ACTIVIDAD_USUARIO),
  FOREIGN KEY (ID_ACTIVIDAD) REFERENCES ACTIVIDADES (ID_ACTIVIDAD),
  FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS (ID_USUARIO)
);

-- RELACIÓN ACTIVIDADES CON ALUMNOS
DROP TABLE IF EXISTS ACTIVIDAD_ALUMNO;
CREATE TABLE ACTIVIDAD_ALUMNO (
  ID_ACTIVIDAD_ALUMNO INT AUTO_INCREMENT NOT NULL,
  ID_ACTIVIDAD        INT                NOT NULL,
  ID_ALUMNO           INT                NOT NULL,
  ID_GRUPO            INT(10),
  PRIMARY KEY (ID_ACTIVIDAD_ALUMNO),
  FOREIGN KEY (ID_ACTIVIDAD) REFERENCES ACTIVIDADES (ID_ACTIVIDAD),
  FOREIGN KEY (ID_ALUMNO) REFERENCES ALUMNOS (ID_ALUMNO),
  FOREIGN KEY (ID_GRUPO) REFERENCES GRUPOS (ID_GRUPO)
);

-- PARCIALES
DROP TABLE IF EXISTS PARCIALES;
CREATE TABLE PARCIALES (
  ID_PARCIAL INT AUTO_INCREMENT NOT NULL,
  NUM_PARCIAL    INT                NOT NULL,
  PARCIAL_ACTUAL ENUM ('S', 'N') NOT NULL,
  ESTATUS    ENUM ('S', 'N'),
  PRIMARY KEY (ID_PARCIAL)
);

-- REPORTE DE BECAS POR ALUMNO, ACTIVIDAD Y  PARCIAL
DROP TABLE IF EXISTS PORCENTAJE_BECA;
CREATE TABLE PORCENTAJE_BECA (
  ID_PORCENTAJE_BECA    INT AUTO_INCREMENT NOT NULL,
  ID_ACTIVIDAD_ALUMNO   INT,
  PORCENTAJE_SALA       INT,
  PORCENTAJE_BIBLIOTECA INT,
  PORCENTAJE_ACTIVIDAD  INT,
  ID_ACTIVIDAD          INT                NOT NULL,
  ID_PARCIAL            INT                NOT NULL,
  PRIMARY KEY (ID_PORCENTAJE_BECA),
  FOREIGN KEY (ID_ACTIVIDAD_ALUMNO) REFERENCES ACTIVIDAD_ALUMNO (ID_ACTIVIDAD_ALUMNO),
  FOREIGN KEY (ID_ACTIVIDAD) REFERENCES ACTIVIDADES (ID_ACTIVIDAD),
  FOREIGN KEY (ID_PARCIAL) REFERENCES PARCIALES (ID_PARCIAL)
);