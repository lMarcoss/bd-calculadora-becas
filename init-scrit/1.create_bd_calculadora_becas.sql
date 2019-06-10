-- DROP TABLES

DROP TABLE IF EXISTS PORCENTAJE_BECA;
DROP TABLE IF EXISTS PARCIALES;
DROP TABLE IF EXISTS ACTIVIDAD_ALUMNO;
DROP TABLE IF EXISTS HORARIO_ACTIVIDAD;
DROP TABLE IF EXISTS USUARIOS;
DROP TABLE IF EXISTS ACTIVIDADES;
DROP TABLE IF EXISTS CICLO_ESCOLAR;
DROP TABLE IF EXISTS ALUMNOS;
DROP TABLE IF EXISTS GRUPOS;
DROP TABLE IF EXISTS LICENCIATURAS;


-- LICENCIATURAS
CREATE TABLE LICENCIATURAS (
  ID_LICENCIATURA     INT             NOT NULL AUTO_INCREMENT,
  CVE_LICENCIATURA    VARCHAR(10)     NOT NULL,
  NOMBRE_LICENCIATURA VARCHAR(50)     NOT NULL,
  ESTATUS             ENUM ('S', 'N') NOT NULL,
  AGREGADO_POR        VARCHAR(150)    NOT NULL,
  FECHA_CREACION      DATETIME        NOT NULL,
  ACTUALIZADO_POR     VARCHAR(150),
  FECHA_ACTUALIZACION DATETIME,
  PRIMARY KEY (ID_LICENCIATURA)
);

-- GRUPOS
CREATE TABLE GRUPOS (
  ID_GRUPO            INT             NOT NULL  AUTO_INCREMENT,
  CVE_GRUPO           VARCHAR(10)     NOT NULL,
  ID_LICENCIATURA     INT             NOT NULL,
  ESTATUS             ENUM ('S', 'N') NOT NULL,
  AGREGADO_POR        VARCHAR(150)    NOT NULL,
  FECHA_CREACION      DATETIME        NOT NULL,
  ACTUALIZADO_POR     VARCHAR(150),
  FECHA_ACTUALIZACION DATETIME,
  PRIMARY KEY (ID_GRUPO),
  FOREIGN KEY (ID_LICENCIATURA) REFERENCES LICENCIATURAS (ID_LICENCIATURA)
);

-- ALUMNOS
CREATE TABLE ALUMNOS (
  ID_ALUMNO           INT             NOT NULL AUTO_INCREMENT,
  MATRICULA           VARCHAR(12)     NOT NULL,
  NOMBRES             VARCHAR(150)    NOT NULL,
  APE_PATERNO         VARCHAR(150)    NOT NULL,
  APE_MATERNO         VARCHAR(150),
  ESTATUS             ENUM ('S', 'N') NOT NULL,
  AGREGADO_POR        VARCHAR(150)    NOT NULL,
  FECHA_CREACION      DATETIME        NOT NULL,
  ACTUALIZADO_POR     VARCHAR(150),
  FECHA_ACTUALIZACION DATETIME,
  PRIMARY KEY (ID_ALUMNO)
);

-- CICLO ESCOLAR
CREATE TABLE CICLO_ESCOLAR (
  ID_CICLO_ESCOLAR    INT AUTO_INCREMENT  NOT NULL,
  DESCRIPCION_CICLO   VARCHAR(100) UNIQUE NOT NULL,
  PERIODO_ACTUAL      ENUM ('S', 'N')     NOT NULL,
  ESTATUS             ENUM ('S', 'N')     NOT NULL,
  AGREGADO_POR        VARCHAR(150)        NOT NULL,
  FECHA_CREACION      DATETIME            NOT NULL,
  ACTUALIZADO_POR     VARCHAR(150),
  FECHA_ACTUALIZACION DATETIME,
  PRIMARY KEY (ID_CICLO_ESCOLAR)
);

-- ACTIVIDADES
CREATE TABLE ACTIVIDADES (
  ID_ACTIVIDAD        INT             NOT NULL AUTO_INCREMENT,
  NOMBRE_ACTIVIDAD    VARCHAR(150)    NOT NULL,
  OBLIGATORIO         ENUM ('S', 'N') NOT NULL,
  ESTATUS             ENUM ('S', 'N') NOT NULL,
  AGREGADO_POR        VARCHAR(150)    NOT NULL,
  FECHA_CREACION      DATETIME        NOT NULL,
  ACTUALIZADO_POR     VARCHAR(150),
  FECHA_ACTUALIZACION DATETIME,
  PRIMARY KEY (ID_ACTIVIDAD)
);

-- USUARIOS
CREATE TABLE USUARIOS (
  ID_USUARIO          INT AUTO_INCREMENT  NOT NULL,
  NOMBRES             VARCHAR(150)        NOT NULL,
  APE_PATERNO         VARCHAR(150)        NOT NULL,
  APE_MATERNO         VARCHAR(150),
  TIPO_USUARIO        ENUM ('ADMINISTRADOR', 'ENCARGADO'),
  USERNAME            VARCHAR(100) UNIQUE NOT NULL,
  PASSWORD            VARCHAR(255)        NOT NULL,
  ESTATUS             ENUM ('S', 'N')     NOT NULL,
  AGREGADO_POR        VARCHAR(150)        NOT NULL,
  FECHA_CREACION      DATETIME            NOT NULL,
  ACTUALIZADO_POR     VARCHAR(150),
  FECHA_ACTUALIZACION DATETIME,
  PRIMARY KEY (ID_USUARIO)
);

-- DETALLE DE ACTIVIDADES
CREATE TABLE HORARIO_ACTIVIDAD (
  ID_HORARIO_ACTIVIDAD INT               NOT NULL AUTO_INCREMENT,
  ID_ACTIVIDAD         INT               NOT NULL,
  HORA                 INT               NOT NULL,
  AM_PM                ENUM ('AM', 'PM') NOT NULL,
  NUMERO_ALUMNOS       INT,
  ID_CICLO_ESCOLAR     INT               NOT NULL,
  ID_USUARIO           INT               NOT NULL,
  ESTATUS              ENUM ('S', 'N')   NOT NULL,
  AGREGADO_POR         VARCHAR(150)      NOT NULL,
  FECHA_CREACION       DATETIME          NOT NULL,
  ACTUALIZADO_POR      VARCHAR(150),
  FECHA_ACTUALIZACION  DATETIME,
  PRIMARY KEY (ID_HORARIO_ACTIVIDAD),
  FOREIGN KEY (ID_ACTIVIDAD) REFERENCES ACTIVIDADES (ID_ACTIVIDAD),
  FOREIGN KEY (ID_CICLO_ESCOLAR) REFERENCES CICLO_ESCOLAR (ID_CICLO_ESCOLAR),
  FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS (ID_USUARIO)
);

-- RELACIÓN ACTIVIDADES CON ALUMNOS
CREATE TABLE ACTIVIDAD_ALUMNO (
  ID_ACTIVIDAD_ALUMNO INT AUTO_INCREMENT NOT NULL,
  ID_ACTIVIDAD        INT                NOT NULL,
  ID_ALUMNO           INT                NOT NULL,
  ID_GRUPO            INT(10)            NOT NULL,
  AGREGADO_POR        VARCHAR(150)       NOT NULL,
  FECHA_CREACION      DATETIME           NOT NULL,
  ACTUALIZADO_POR     VARCHAR(150),
  FECHA_ACTUALIZACION DATETIME,
  PRIMARY KEY (ID_ACTIVIDAD_ALUMNO),
  FOREIGN KEY (ID_ACTIVIDAD) REFERENCES HORARIO_ACTIVIDAD (ID_HORARIO_ACTIVIDAD),
  FOREIGN KEY (ID_ALUMNO) REFERENCES ALUMNOS (ID_ALUMNO),
  FOREIGN KEY (ID_GRUPO) REFERENCES GRUPOS (ID_GRUPO)
);

-- PARCIALES
CREATE TABLE PARCIALES (
  ID_PARCIAL          INT AUTO_INCREMENT NOT NULL,
  DESC_PARCIAL        VARCHAR(50) NOT NULL,
  PARCIAL_ACTUAL      ENUM ('S', 'N')    NOT NULL,
  AGREGADO_POR        VARCHAR(150)       NOT NULL,
  FECHA_CREACION      DATETIME           NOT NULL,
  ACTUALIZADO_POR     VARCHAR(150),
  FECHA_ACTUALIZACION DATETIME,
  PRIMARY KEY (ID_PARCIAL)
);

-- REPORTE DE BECAS POR ALUMNO, ACTIVIDAD Y  PARCIAL
CREATE TABLE PORCENTAJE_BECA (
  ID_PORCENTAJE_BECA    INT AUTO_INCREMENT NOT NULL,
  ID_ACTIVIDAD_ALUMNO   INT                NOT NULL,
  PORCENTAJE_SALA       INT,
  PORCENTAJE_BIBLIOTECA INT,
  PORCENTAJE_ACTIVIDAD  INT,
  ID_PARCIAL            INT                NOT NULL,
  AGREGADO_POR          VARCHAR(150)       NOT NULL,
  FECHA_CREACION        DATETIME           NOT NULL,
  ACTUALIZADO_POR       VARCHAR(150),
  FECHA_ACTUALIZACION   DATETIME,
  PRIMARY KEY (ID_PORCENTAJE_BECA),
  FOREIGN KEY (ID_ACTIVIDAD_ALUMNO) REFERENCES ACTIVIDAD_ALUMNO (ID_ACTIVIDAD_ALUMNO),
  FOREIGN KEY (ID_PARCIAL) REFERENCES PARCIALES (ID_PARCIAL)
);