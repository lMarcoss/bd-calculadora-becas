-- DROP TABLES

DROP TABLE IF EXISTS ASISTENCIA_ACTIVIDADES;
DROP TABLE IF EXISTS PORCENTAJE_ACTIVIDADES;
DROP TABLE IF EXISTS PARCIAL_PERIODO;
DROP TABLE IF EXISTS PARCIALES;
DROP TABLE IF EXISTS ACTIVIDAD_ALUMNO;
DROP TABLE IF EXISTS HORARIO_ACTIVIDAD;
DROP TABLE IF EXISTS USUARIOS;
DROP TABLE IF EXISTS MENU_ROL;
DROP TABLE IF EXISTS ROLES;
DROP TABLE IF EXISTS MENU;
DROP TABLE IF EXISTS PORCENTAJE_BECA;
DROP TABLE IF EXISTS ACTIVIDADES;
DROP TABLE IF EXISTS DEF_PORCENTAJE_TIPO_ACTIVIDAD;
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
    CODIGO_RFID         VARCHAR(20)     NOT NULL,
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
    ID_ALUMNOP        INT             NOT NULL AUTO_INCREMENT,
    MATRICULA         VARCHAR(12)     NOT NULL,
    CVE_GRUPO         VARCHAR(10)     NOT NULL,
    DESC_GRUPO        VARCHAR(100),
    CVE_LICENCIATURA  VARCHAR(10)     NOT NULL,
    DESC_LICENCIATURA VARCHAR(100),
    CVE_PERIODO       VARCHAR(100)    NOT NULL,
    DESC_PERIDODO     VARCHAR(255),
    ESTATUS           ENUM ('S', 'N') NOT NULL,
    PRIMARY KEY (ID_ALUMNOP),
    FOREIGN KEY (MATRICULA) REFERENCES ALUMNOS (MATRICULA) ON UPDATE CASCADE,
    UNIQUE (MATRICULA, CVE_PERIODO, CVE_LICENCIATURA, CVE_GRUPO),
    CONSTRAINT UC_ALUMNO UNIQUE (MATRICULA, CVE_GRUPO, CVE_LICENCIATURA, CVE_PERIODO)
);

/*
 * DEFINICION DE PORCENTAJES POR TIPO (TP)  DE ACTIVIDAD
 * SALA_DE_COMPUTO
 * BIBLIOTECA
 * ACTIVIDADES_EXTRAESCOLARES
 * (Para el periodo actual se usa el ultimo registro del tipo de actividad)
 */
CREATE TABLE DEF_PORCENTAJE_TIPO_ACTIVIDAD
(
    ID_PORCENTAJE_TP_ACTIVIDAD     INT AUTO_INCREMENT NOT NULL,
    CVE_TIPO_ACTIVIDAD             VARCHAR(2)         NOT NULL DEFAULT 'EX', -- S = Sala, B = Biblioteca, EX = extraescolar - taller o club
    DS_ACTIVIDAD                   VARCHAR(250),
    PORCENTAJE_MINIMO_REQUERIDO    INT,                                      -- PORCENTAJE MINIMO REQUERIDO PARA OBTENER LA BECA DE LA ACTIVIDAD
    PORCENTAJE_BECA_ACT_INCUMPLIDA INT,                                      -- PORCENTAJE QUE LE TOCA AL ALUMNO SI NO ALCANZA EL PORCENTAJE MINIMO REQUERIDO
    PORCENTAJE_BECA_ACT_CUMPLIDA   INT                NOT NULL,              -- PORCENTAJE ACTIVIDAD CORRESPONDIDA DE BECA AL CUMPLIR CON EL MINIMO
    AGREGADO_POR                   VARCHAR(150)       NOT NULL,
    FECHA_CREACION                 DATETIME           NOT NULL,
    ACTUALIZADO_POR                VARCHAR(150),
    FECHA_ACTUALIZACION            DATETIME,
    PRIMARY KEY (ID_PORCENTAJE_TP_ACTIVIDAD),
    UNIQUE (CVE_TIPO_ACTIVIDAD)
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
    TIPO_ACTIVIDAD      VARCHAR(2)      NOT NULL DEFAULT 'EX',
    ESTATUS             ENUM ('S', 'N') NOT NULL,
    SW_HORARIO          ENUM ('S', 'N') NOT NULL DEFAULT 'S', -- INDICA SI LA ACTIIDAD TIENE UN HORARIO
    AGREGADO_POR        VARCHAR(150)    NOT NULL,
    FECHA_CREACION      DATETIME        NOT NULL,
    ACTUALIZADO_POR     VARCHAR(150),
    FECHA_ACTUALIZACION DATETIME,
    PRIMARY KEY (ID_ACTIVIDAD),
    FOREIGN KEY (TIPO_ACTIVIDAD) REFERENCES DEF_PORCENTAJE_TIPO_ACTIVIDAD (CVE_TIPO_ACTIVIDAD)
);

-- PARCIALES
CREATE TABLE PARCIALES
(
    ID_PARCIAL          INT AUTO_INCREMENT NOT NULL,
    DESC_PARCIAL        VARCHAR(50)        NOT NULL,
    AGREGADO_POR        VARCHAR(150)       NOT NULL,
    FECHA_CREACION      DATETIME           NOT NULL,
    ACTUALIZADO_POR     VARCHAR(150),
    FECHA_ACTUALIZACION DATETIME,
    PRIMARY KEY (ID_PARCIAL)
);

create table ROLES
(
    ID_ROL              int auto_increment primary key,
    NOMBRE_ROL          varchar(100)    NOT NULL,
    ESTATUS             ENUM ('S', 'N') NOT NULL,
    AGREGADO_POR        varchar(150)    not null,
    FECHA_CREACION      datetime        not null,
    ACTUALIZADO_POR     varchar(150)    null,
    FECHA_ACTUALIZACION datetime        null
);


-- USUARIOS
/*
* Lista de usuarios
*/
CREATE TABLE USUARIOS
(
    ID_USUARIO             INT AUTO_INCREMENT  NOT NULL,
    NOMBRES                VARCHAR(150)        NOT NULL,
    APE_PATERNO            VARCHAR(150)        NOT NULL,
    APE_MATERNO            VARCHAR(150),
    ID_ROL                 INT                 NOT NULL,
    USERNAME               VARCHAR(100) UNIQUE NOT NULL,
    PASSWORD               VARCHAR(255)        NOT NULL,
    DIAS_RETROCESO_REPORTE INT                 NOT NULL DEFAULT 3,
    ESTATUS                ENUM ('S', 'N')     NOT NULL,
    AGREGADO_POR           VARCHAR(150)        NOT NULL,
    FECHA_CREACION         DATETIME            NOT NULL,
    ACTUALIZADO_POR        VARCHAR(150),
    FECHA_ACTUALIZACION    DATETIME,
    PRIMARY KEY (ID_USUARIO),
    FOREIGN KEY (ID_ROL) REFERENCES ROLES (ID_ROL)
);

-- HORARIO_ACTIVIDAD
/*
* Lista de horarios por actividad
*/
CREATE TABLE HORARIO_ACTIVIDAD
(
    ID_HORARIO_ACTIVIDAD INT               NOT NULL AUTO_INCREMENT,
    ID_ACTIVIDAD         INT               NOT NULL,
    HORA                 INT               NOT NULL,
    AM_PM                ENUM ('AM', 'PM') NOT NULL,
    NUMERO_ALUMNOS       INT,
    ID_USUARIO           INT               NOT NULL,
    CVE_PERIODO          VARCHAR(100)      NOT NULL,
    DESC_PERIDODO        VARCHAR(255),
    COMENTARIO           VARCHAR(250),
    ESTATUS              ENUM ('S', 'N')   NOT NULL,
    AGREGADO_POR         VARCHAR(150)      NOT NULL,
    FECHA_CREACION       DATETIME          NOT NULL,
    ACTUALIZADO_POR      VARCHAR(150),
    FECHA_ACTUALIZACION  DATETIME,
    PRIMARY KEY (ID_HORARIO_ACTIVIDAD),
    FOREIGN KEY (ID_ACTIVIDAD) REFERENCES ACTIVIDADES (ID_ACTIVIDAD),
    FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS (ID_USUARIO),
    UNIQUE (ID_USUARIO, HORA, AM_PM)
);

-- RELACIÓN ACTIVIDADES CON ALUMNOS
CREATE TABLE ACTIVIDAD_ALUMNO
(
    ID_ACTIVIDAD_ALUMNO  INT AUTO_INCREMENT NOT NULL,
    ID_HORARIO_ACTIVIDAD INT                NOT NULL,
    ID_ALUMNO_P          INT                NOT NULL,
    AGREGADO_POR         VARCHAR(150)       NOT NULL,
    FECHA_CREACION       DATETIME           NOT NULL,
    ACTUALIZADO_POR      VARCHAR(150),
    FECHA_ACTUALIZACION  DATETIME,
    PRIMARY KEY (ID_ACTIVIDAD_ALUMNO),
    FOREIGN KEY (ID_HORARIO_ACTIVIDAD) REFERENCES HORARIO_ACTIVIDAD (ID_HORARIO_ACTIVIDAD),
    FOREIGN KEY (ID_ALUMNO_P) REFERENCES ALUMNOS_DAT_PERIODO (ID_ALUMNOP),
    CONSTRAINT UC_ALUMNO_ACTIVIDAD UNIQUE (ID_HORARIO_ACTIVIDAD, ID_ALUMNO_P)

);

-- PARCIALES
CREATE TABLE PARCIAL_PERIODO
(
    ID_PARCIAL                   INT AUTO_INCREMENT NOT NULL,
    PARCIAL                      INT                NOT NULL,
    PARCIAL_ACTUAL               ENUM ('S', 'N')    NOT NULL DEFAULT 'S',
    FECHA_INICIO                 DATE               NOT NULL,
    FECHA_FIN                    DATE               NOT NULL,
    CVE_PERIODO                  VARCHAR(100)       NOT NULL,
    DESC_PERIODO                 VARCHAR(255)       NOT NULL,
    TOTAL_HORAS_BIBLIOTECA       INT                NOT NULL DEFAULT 0,
    TOTAL_ASISTENCIA_SALA        INT                NOT NULL DEFAULT 0,
    TOTAL_ASISTENCIA_ACTIVIDADES INT                NOT NULL DEFAULT 0,
    AGREGADO_POR                 VARCHAR(150)       NOT NULL,
    FECHA_CREACION               DATETIME           NOT NULL,
    ACTUALIZADO_POR              VARCHAR(150),
    FECHA_ACTUALIZACION          DATETIME,
    PRIMARY KEY (ID_PARCIAL),
    UNIQUE (CVE_PERIODO, PARCIAL),
    FOREIGN KEY (PARCIAL) REFERENCES PARCIALES (ID_PARCIAL)
);

-- REPORTE DE BECAS POR ALUMNO, ACTIVIDAD Y  PARCIAL
CREATE TABLE PORCENTAJE_ACTIVIDADES
(
    ID_PORCENTAJE_ACTIVIDAD INT AUTO_INCREMENT NOT NULL,
    ID_ACTIVIDAD_ALUMNO     INT                NOT NULL,
    PORCENTAJE_SALA         INT,
    PORCENTAJE_BIBLIOTECA   INT,
    PORCENTAJE_ACTIVIDAD    INT,
    ID_PARCIAL              INT                NOT NULL,
    CVE_PERIODO             VARCHAR(100)       NOT NULL,
    DESC_PERIDODO           VARCHAR(255),
    AGREGADO_POR            VARCHAR(150)       NOT NULL,
    FECHA_CREACION          DATETIME           NOT NULL,
    ACTUALIZADO_POR         VARCHAR(150),
    FECHA_ACTUALIZACION     DATETIME,
    PRIMARY KEY (ID_PORCENTAJE_ACTIVIDAD),
    FOREIGN KEY (ID_ACTIVIDAD_ALUMNO) REFERENCES ACTIVIDAD_ALUMNO (ID_ACTIVIDAD_ALUMNO),
    FOREIGN KEY (ID_PARCIAL) REFERENCES PARCIAL_PERIODO (ID_PARCIAL)
);

-- DROP TABLE ASISTENCIA_ACTIVIDADES;
CREATE TABLE ASISTENCIA_ACTIVIDADES
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



CREATE TABLE MENU
(
    ID_MENU             INT             NOT NULL AUTO_INCREMENT,
    ID_PADRE            INT,
    NOMBRE              VARCHAR(100)    NOT NULL,
    ICON                VARCHAR(100),
    URL                 VARCHAR(100),
    ORDER_MENU          INT,
    ESTATUS             ENUM ('S', 'N') NOT NULL DEFAULT 'S',
    AGREGADO_POR        VARCHAR(150)    NOT NULL,
    FECHA_CREACION      DATETIME        NOT NULL,
    ACTUALIZADO_POR     VARCHAR(150),
    FECHA_ACTUALIZACION DATETIME,
    PRIMARY KEY (ID_MENU),
    FOREIGN KEY (ID_PADRE) REFERENCES MENU (ID_MENU)
);

CREATE TABLE MENU_ROL
(
    ID_MENU             INT             NOT NULL,
    ID_ROL              INT             NOT NULL,
    ESTATUS             ENUM ('S', 'N') NOT NULL DEFAULT 'S',
    AGREGADO_POR        VARCHAR(150)    NOT NULL,
    FECHA_CREACION      DATETIME        NOT NULL,
    ACTUALIZADO_POR     VARCHAR(150),
    FECHA_ACTUALIZACION DATETIME,
    PRIMARY KEY (ID_MENU, ID_ROL),
    FOREIGN KEY (ID_MENU) REFERENCES MENU (ID_MENU),
    FOREIGN KEY (ID_ROL) REFERENCES ROLES (ID_ROL)
);

/**
  _P1 - Parcial 1
  _P2 - Parcial 2
  _P3 - Parcial 3
 */
CREATE TABLE PORCENTAJE_BECA
(
    ID_PORCENTAJE_BECA              INT AUTO_INCREMENT NOT NULL,
    MATRICULA                       VARCHAR(100)       NOT NULL,
    NOMBRES                         VARCHAR(200)       NOT NULL,
    CVE_GRUPO                       VARCHAR(10)        NOT NULL,
    DESC_GRUPO                      VARCHAR(100),
    CVE_LICENCIATURA                VARCHAR(10)        NOT NULL,
    DESC_LICENCIATURA               VARCHAR(100),
    CVE_PERIODO                     VARCHAR(100)       NOT NULL,
    DESC_PERIDODO                   VARCHAR(255),
    ID_ACTIVIDAD                    INT,
    DS_ACTIVIDAD                    VARCHAR(255),
    PORCENTAJE_TALLER_CLUB_P1       INT,
    PORCENTAJE_TALLER_CLUB_P2       INT,
    PORCENTAJE_TALLER_CLUB_P3       INT,
    PROMEDIO_PARCIAL_TALLER_CLUB            INT,
    PORCENTAJE_LOGRADO_TALLER_CLUB INT,
    PORCENTAJE_BIBLIOTECA_P1        INT,
    PORCENTAJE_BIBLIOTECA_P2        INT,
    PORCENTAJE_BIBLIOTECA_P3        INT,
    PROMEDIO_PARCIAL_BIBLIOTECA      INT,
    PORCENTAJE_LOGRADO_BIBLIOTECA  INT,
    PORCENTAJE_SALA_COMPUTO_P1      INT,
    PORCENTAJE_SALA_COMPUTO_P2      INT,
    PORCENTAJE_SALA_COMPUTO_P3      INT,
    PROMEDIO_PARCIAL_SALA            INT,
    PORCENTAJE_LOGRADO_SALA_COMPUTO        INT,
    AGREGADO_POR                    VARCHAR(150)       NOT NULL,
    FECHA_CREACION                  DATETIME           NOT NULL,
    ACTUALIZADO_POR                 VARCHAR(150),
    FECHA_ACTUALIZACION             DATETIME,
    PRIMARY KEY (ID_PORCENTAJE_BECA),
    FOREIGN KEY (MATRICULA) REFERENCES ALUMNOS (MATRICULA) ON UPDATE CASCADE,
    FOREIGN KEY (ID_ACTIVIDAD) REFERENCES ACTIVIDADES (ID_ACTIVIDAD)
);

