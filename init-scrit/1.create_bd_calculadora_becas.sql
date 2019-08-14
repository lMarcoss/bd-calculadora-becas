-- DROP TABLES

DROP TABLE IF EXISTS ASISTENCIA_SALA;
DROP TABLE IF EXISTS PORCENTAJE_BECA;
DROP TABLE IF EXISTS PARCIALES;
DROP TABLE IF EXISTS ACTIVIDAD_ALUMNO;
DROP TABLE IF EXISTS HORARIO_ACTIVIDAD;
DROP TABLE IF EXISTS USUARIOS;
DROP TABLE IF EXISTS ACTIVIDADES;
DROP TABLE IF EXISTS ALUMNOS_DAT_PERIODO;
DROP TABLE IF EXISTS ALUMNOS;

-- ALUMNOS
/*
* Lista de alumnos
*/
CREATE TABLE ALUMNOS
(
    ID_ALUMNO           INT             NOT NULL AUTO_INCREMENT,
    MATRICULA           VARCHAR(12)     NOT NULL,
    CURP                VARCHAR(20)     NOT NULL,
    NOMBRES             VARCHAR(150)    NOT NULL,
    APE_PATERNO         VARCHAR(150)    NOT NULL,
    APE_MATERNO         VARCHAR(150),
    ESTATUS             ENUM ('S', 'N') NOT NULL,
    AGREGADO_POR        VARCHAR(150)    NOT NULL,
    FECHA_CREACION      DATETIME        NOT NULL,
    ACTUALIZADO_POR     VARCHAR(150),
    FECHA_ACTUALIZACION DATETIME,
    PRIMARY KEY (ID_ALUMNO),
    UNIQUE (MATRICULA)
);

-- ALUMNOS_DAT_PERIODO
/*
* Registra a los alumnos a un grupo en cada periodo (semestre)
*/
CREATE TABLE ALUMNOS_DAT_PERIODO
(
    ID_ALUMNO         INT,
    CVE_GRUPO         VARCHAR(10),
    DESC_GRUPO        VARCHAR(100),
    CVE_LICENCIATURA  VARCHAR(10),
    DESC_LICENCIATURA VARCHAR(100),
    CVE_PERIODO       VARCHAR(10),
    DESC_PERIDODO     VARCHAR(100),
    PRIMARY KEY (ID_ALUMNO, CVE_GRUPO, CVE_LICENCIATURA, CVE_PERIODO),
    FOREIGN KEY (ID_ALUMNO) REFERENCES ALUMNOS (ID_ALUMNO),
    CONSTRAINT UC_ALUMNO UNIQUE (ID_ALUMNO, CVE_GRUPO, CVE_LICENCIATURA, CVE_PERIODO)
);

-- ACTIVIDADES
/*
* Lista de actividades
*/
CREATE TABLE ACTIVIDADES
(
    ID_ACTIVIDAD        INT             NOT NULL AUTO_INCREMENT,
    NOMBRE_ACTIVIDAD    VARCHAR(150)    NOT NULL,
    OBLIGATORIO         ENUM ('S', 'N') NOT NULL,
    TIPO_ACTIVIDAD      VARCHAR(2)      NOT NULL DEFAULT 'EX', -- Para filtrar la actividad sala donde EX = EXTRA Y S = SALA Y B BIBLIOTECA
    ESTATUS             ENUM ('S', 'N') NOT NULL,
    AGREGADO_POR        VARCHAR(150)    NOT NULL,
    FECHA_CREACION      DATETIME        NOT NULL,
    ACTUALIZADO_POR     VARCHAR(150),
    FECHA_ACTUALIZACION DATETIME,
    PRIMARY KEY (ID_ACTIVIDAD)
);

-- USUARIOS
/*
* Lista de usuarios
*/
CREATE TABLE USUARIOS
(
    ID_USUARIO          INT AUTO_INCREMENT  NOT NULL,
    NOMBRES             VARCHAR(150)        NOT NULL,
    APE_PATERNO         VARCHAR(150)        NOT NULL,
    APE_MATERNO         VARCHAR(150),
    TIPO_USUARIO        ENUM ('ADMINISTRADOR', 'ENCARGADO', 'ALUMNO'),
    USERNAME            VARCHAR(100) UNIQUE NOT NULL,
    PASSWORD            VARCHAR(255)        NOT NULL,
    DIAS_RETROCESO_REPORTE INT               NOT NULL DEFAULT 0,
    ESTATUS             ENUM ('S', 'N')     NOT NULL,
    AGREGADO_POR        VARCHAR(150)        NOT NULL,
    FECHA_CREACION      DATETIME            NOT NULL,
    ACTUALIZADO_POR     VARCHAR(150),
    FECHA_ACTUALIZACION DATETIME,
    PRIMARY KEY (ID_USUARIO)
);

-- HORARIO_ACTIVIDAD
/*
* Lista de horarios por actividad
*/
CREATE TABLE HORARIO_ACTIVIDAD
(
    ID_HORARIO_ACTIVIDAD   INT               NOT NULL AUTO_INCREMENT,
    ID_ACTIVIDAD           INT               NOT NULL,
    HORA                   VARCHAR(20)       NOT NULL,
    AM_PM                  ENUM ('AM', 'PM') NOT NULL,
    NUMERO_ALUMNOS         INT,
    ID_USUARIO             INT               NOT NULL,
    CVE_PERIODO            VARCHAR(10)       NOT NULL,
    DESC_PERIDODO          VARCHAR(100),
    ESTATUS                ENUM ('S', 'N')   NOT NULL,
    AGREGADO_POR           VARCHAR(150)      NOT NULL,
    FECHA_CREACION         DATETIME          NOT NULL,
    ACTUALIZADO_POR        VARCHAR(150),
    FECHA_ACTUALIZACION    DATETIME,
    PRIMARY KEY (ID_HORARIO_ACTIVIDAD),
    FOREIGN KEY (ID_ACTIVIDAD) REFERENCES ACTIVIDADES (ID_ACTIVIDAD),
    FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS (ID_USUARIO)
);

-- RELACIÓN ACTIVIDADES CON ALUMNOS
CREATE TABLE ACTIVIDAD_ALUMNO
(
    ID_ACTIVIDAD_ALUMNO INT AUTO_INCREMENT NOT NULL,
    ID_ACTIVIDAD        INT                NOT NULL,
    ID_ALUMNO           INT                NOT NULL,
    AGREGADO_POR        VARCHAR(150)       NOT NULL,
    FECHA_CREACION      DATETIME           NOT NULL,
    ACTUALIZADO_POR     VARCHAR(150),
    FECHA_ACTUALIZACION DATETIME,
    PRIMARY KEY (ID_ACTIVIDAD_ALUMNO),
    FOREIGN KEY (ID_ACTIVIDAD) REFERENCES HORARIO_ACTIVIDAD (ID_HORARIO_ACTIVIDAD),
    FOREIGN KEY (ID_ALUMNO) REFERENCES ALUMNOS_DAT_PERIODO (ID_ALUMNO),
    CONSTRAINT UC_ALUMNO_ACTIVIDAD UNIQUE (ID_ACTIVIDAD, ID_ALUMNO)

);

-- PARCIALES
CREATE TABLE PARCIALES
(
    ID_PARCIAL          INT AUTO_INCREMENT NOT NULL,
    DESC_PARCIAL        VARCHAR(50)        NOT NULL,
    PARCIAL_ACTUAL      ENUM ('S', 'N')    NOT NULL,
    FECHA_INICIO        DATE               NOT NULL,
    FECHA_FIN           DATE               NOT NULL,
    CVE_PERIODO         VARCHAR(10)        NOT NULL,
    DESC_PERIODO       VARCHAR(100)       NOT NULL,
    AGREGADO_POR        VARCHAR(150)       NOT NULL,
    FECHA_CREACION      DATETIME           NOT NULL,
    ACTUALIZADO_POR     VARCHAR(150),
    FECHA_ACTUALIZACION DATETIME,
    PRIMARY KEY (ID_PARCIAL)
);

-- REPORTE DE BECAS POR ALUMNO, ACTIVIDAD Y  PARCIAL
CREATE TABLE PORCENTAJE_BECA
(
    ID_PORCENTAJE_BECA    INT AUTO_INCREMENT NOT NULL,
    ID_ACTIVIDAD_ALUMNO   INT                NOT NULL,
    PORCENTAJE_SALA       INT,
    PORCENTAJE_BIBLIOTECA INT,
    PORCENTAJE_ACTIVIDAD  INT,
    ID_PARCIAL            INT                NOT NULL,
    CVE_PERIODO           VARCHAR(10)        NOT NULL,
    DESC_PERIDODO         VARCHAR(100),
    AGREGADO_POR          VARCHAR(150)       NOT NULL,
    FECHA_CREACION        DATETIME           NOT NULL,
    ACTUALIZADO_POR       VARCHAR(150),
    FECHA_ACTUALIZACION   DATETIME,
    PRIMARY KEY (ID_PORCENTAJE_BECA),
    FOREIGN KEY (ID_ACTIVIDAD_ALUMNO) REFERENCES ACTIVIDAD_ALUMNO (ID_ACTIVIDAD_ALUMNO),
    FOREIGN KEY (ID_PARCIAL) REFERENCES PARCIALES (ID_PARCIAL)
);

-- DROP TABLE ASISTENCIA_SALA;
CREATE TABLE ASISTENCIA_SALA
(
    ID_ACTIVIDAD_ALUMNO INT,
    ASISTENCIA          ENUM ('/', '.'),
    FECHA_ASISTENCIA    DATE,
    AGREGADO_POR        VARCHAR(150) NOT NULL,
    FECHA_CREACION      DATETIME     NOT NULL,
    ACTUALIZADO_POR     VARCHAR(150),
    FECHA_ACTUALIZACION DATETIME,
    PRIMARY KEY (ID_ACTIVIDAD_ALUMNO, FECHA_ASISTENCIA),
    FOREIGN KEY (ID_ACTIVIDAD_ALUMNO) REFERENCES ACTIVIDAD_ALUMNO (ID_ACTIVIDAD_ALUMNO)
);
