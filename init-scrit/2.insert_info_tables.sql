INSERT INTO DEF_PORCENTAJE_TIPO_ACTIVIDAD (CVE_TIPO_ACTIVIDAD, DS_ACTIVIDAD, PORCENTAJE_MINIMO_REQUERIDO,
                                           PORCENTAJE_BECA_ACT_INCUMPLIDA, PORCENTAJE_BECA_ACT_CUMPLIDA, AGREGADO_POR,
                                           FECHA_CREACION)
VALUES ('EX', 'TALLERES Y CLUBES', 80, 0, 10, 'ADMIN', NOW()),
       ('B', 'BIBLIOTECA', 80, 0, 15, 'ADMIN', NOW()),
       ('S', 'SALA', 80, 0, 15, 'ADMIN', NOW());

INSERT INTO ACTIVIDADES (NOMBRE_ACTIVIDAD, OBLIGATORIO, TIPO_ACTIVIDAD, ESTATUS, AGREGADO_POR, FECHA_CREACION,
                         SW_HORARIO)
VALUES ('BIBLIOTECA', 'S', 'B', 'S', 'ADMIN', NOW(), 'N'),
       ('SALA DE CÓMPUTO', 'S', 'S', 'S', 'ADMIN', NOW(), 'S'),
       ('CLUB DE AJEDREZ', 'N', 'EX', 'S', 'ADMIN', NOW(), 'S'),
       ('EDUCACIÓN FÍSICA', 'N', 'EX', 'S', 'ADMIN', NOW(), 'S'),
       ('RONDALLA', 'N', 'EX', 'S', 'ADMIN', NOW(), 'S'),
       ('CLUB DE LECTURA', 'N', 'EX', 'S', 'ADMIN', NOW(), 'S'),
       ('CLUB DE CINE', 'N', 'EX', 'S', 'ADMIN', NOW(), 'S'),
       ('TAEKWONDO', 'N', 'EX', 'S', 'ADMIN', NOW(), 'S');

INSERT INTO ROLES (NOMBRE_ROL, ESTATUS, AGREGADO_POR, FECHA_CREACION, ACTUALIZADO_POR, FECHA_ACTUALIZACION)
VALUES ('ADMINISTRADOR', 'S', 'ADMIN', '2019-10-04 15:05:13', null, null);
INSERT INTO ROLES (NOMBRE_ROL, ESTATUS, AGREGADO_POR, FECHA_CREACION, ACTUALIZADO_POR, FECHA_ACTUALIZACION)
VALUES ('ENCARGADO', 'S', 'ADMIN', '2019-10-04 15:05:13', null, null);
INSERT INTO ROLES (NOMBRE_ROL, ESTATUS, AGREGADO_POR, FECHA_CREACION, ACTUALIZADO_POR, FECHA_ACTUALIZACION)
VALUES ('ALUMNO', 'S', 'ADMIN', '2019-10-04 15:05:13', null, null);


INSERT INTO USUARIOS (NOMBRES, APE_PATERNO, APE_MATERNO, ID_ROL, USERNAME, PASSWORD, ESTATUS, AGREGADO_POR,
                      FECHA_CREACION)
VALUES ('LEONARDO', 'MARCOS', 'SANTIAGO', 1, 'marcossleo2@gmail.com', '****', 'S', 'ADMIN', NOW()),
       ('LUIS ÁNGEL', 'PEREZ', 'HERRERA', 2, 'luis@gmail.com', '****', 'S', 'ADMIN', NOW()),
       ('EVERARDO', 'PACHECO', 'ANTONIO', 2, 'everardo@gmail.com', '****', 'S', 'ADMIN', NOW())
;

INSERT INTO HORARIO_ACTIVIDAD (ID_ACTIVIDAD, HORA, AM_PM, NUMERO_ALUMNOS, ID_USUARIO, CVE_PERIODO, DESC_PERIDODO,
                               ESTATUS,
                               AGREGADO_POR, FECHA_CREACION)
VALUES (3, '07', 'PM', 20, 1, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (3, '08', 'PM', 20, 2, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (4, '07', 'AM', 30, 1, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (4, '08', 'AM', 30, 2, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (5, '05', 'PM', 40, 1, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (6, '07', 'AM', 50, 2, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (2, '05', 'PM', 40, 2, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW());


INSERT INTO PARCIALES (DESC_PARCIAL, AGREGADO_POR, FECHA_CREACION)
VALUES ('1er Parcial', 'ADMIN', NOW()),
       ('2do Parcial', 'ADMIN', NOW()),
       ('3er Parcial', 'ADMIN', NOW());

INSERT INTO `PARCIAL_PERIODO` (`PARCIAL`, `PARCIAL_ACTUAL`, `FECHA_INICIO`, `FECHA_FIN`, `CVE_PERIODO`,
                               `DESC_PERIODO`, `TOTAL_HORAS_BIBLIOTECA`, `TOTAL_ASISTENCIA_SALA`,
                               `TOTAL_ASISTENCIA_ACTIVIDADES`, `AGREGADO_POR`, `FECHA_CREACION`,
                               `ACTUALIZADO_POR`, `FECHA_ACTUALIZACION`)
VALUES
(1, 'N', '2020-01-01', '2020-03-01', '1819B', 'SEM-MAR/19-JUN/19', 20, 21, 22, 'ADMIN', '2020-04-19 00:57:28', null, null),
(2, 'S', '2020-03-04', '2020-04-30', '1819B', 'SEM-MAR/19-JUN/19', 20, 21, 22, 'ADMIN', '2020-04-19 00:57:28', null, null);


INSERT INTO MENU (ID_PADRE, NOMBRE, ICON, URL, ORDER_MENU,AGREGADO_POR, FECHA_CREACION, ESTATUS)
VALUES
    --  menu principal
    (null, 'Configuración', 'mdi mdi-settings', 'configuracion',1,'ADMIN', NOW(), 'S'),
    (null, 'Alumnos', 'mdi mdi-account', 'alumnos',2,'ADMIN', NOW(), 'S'),
    (null, 'Reporte Actividad', 'mdi mdi-upload', 'reporte-actividades',3,'ADMIN', NOW(), 'S'),
    (null, 'Catálogos', 'mdi mdi-book', 'catalogos',6,'ADMIN', NOW(), 'S'),
    (null, 'Seguridad', 'mdi mdi-lock', 'seguridad',7,'ADMIN', NOW(), 'S'),
    -- submenus
    (1, 'Periodo', null, 'periodo',1,'ADMIN', NOW(), 'S'),
    (1, 'Horario Actividades', null, 'horario-actividades',2,'ADMIN', NOW(), 'S'),

    (2, 'Carga Alumnos Periodo', null, 'admin',1,'ADMIN', NOW(), 'S'),
    (2, 'Detalle Alumno', null, 'detalle',2,'ADMIN', NOW(), 'S'),
    (2, 'Registro en Actividad', null, 'inscripcion-actividad',3,'ADMIN', NOW(), 'S'),
    (2, 'Inscripciones', null, 'administrar-inscripciones',4,'ADMIN', NOW(), 'S'),

    (3, 'Registro Asistencia', null, 'asistencia-sala',1,'ADMIN', NOW(), 'S'),
    (3, 'Registro % Actividades', null, 'registro-porcentaje-actividad',2,'ADMIN', NOW(), 'N'),
    (3, 'Carga Horas Biblioteca', null, 'carga-hrs-biblioteca',3,'ADMIN', NOW(), 'S'),
    (3, 'Carga Horas Sala de Cómputo', null, 'carga-hrs-sala-computo',4,'ADMIN', NOW(), 'N'),
    (3, 'Reporte detallado', null, 'detallado',5,'ADMIN', NOW(), 'S'),

    (4, 'Licenciaturas', null, 'licenciaturas',1,'ADMIN', NOW(), 'S'),
    (4, 'Grupos', null, 'grupos',2,'ADMIN', NOW(), 'S'),
    (4, 'Actividades', null, 'actividades',3,'ADMIN', NOW(), 'S'),

    (5, 'Usuarios', null, 'usuarios', 1,'ADMIN', NOW(), 'S')
;

INSERT INTO MENU (ID_PADRE, NOMBRE, ICON, URL, ORDER_MENU,AGREGADO_POR, FECHA_CREACION)
VALUES
    --  menu principal
    (null, 'Reporte % Becas', 'mdi mdi-library-books', 'reporte-becas',4, 'ADMIN', NOW()), -- 21
    -- submenu
    (21, 'Reporte por Periodo', null, 'reporte-beca-colegiatura', 1,'ADMIN', NOW()),-- 22


       --  menu principal
    (null, 'Calcula %', 'mdi mdi-calculator', 'calcula-porcentaje',5, 'ADMIN', NOW()), -- 23
    -- submenu
    (23, 'Calcular % Beca', null, 'calcula-porcentaje-beca', 1,'ADMIN', NOW()),
    (23, 'Calcular % Actividades', null, 'calcula-porcentaje-actividad', 2,'ADMIN', NOW())
;



update USUARIOS U
set PASSWORD = sha2(concat('4^%m@=C*&c#L+%', 'prueba', 'U$|2AT>30!'), 224)
where ID_USUARIO = 1;
update USUARIOS U
set PASSWORD = sha2(concat('4^%m@=C*&c#L+%', 'prueba', 'U$|2AT>30!'), 224)
where ID_USUARIO = 2;
update USUARIOS U
set PASSWORD = sha2(concat('4^%m@=C*&c#L+%', 'prueba', 'U$|2AT>30!'), 224)
where ID_USUARIO = 3;


-- SELECT * FROM ALUMNOS where MATRICULA = '2012060169';
/*INSERT INTO ALUMNOS (MATRICULA, CURP, NOMBRES, APE_PATERNO, APE_MATERNO, ESTATUS, AGREGADO_POR, FECHA_CREACION)
VALUES('2012060169', 'KDASHDJKHASK', 'LEO', 'PRUEBA', '', 'S', 'ADMIN', NOW());

INSERT INTO ALUMNOS_DAT_PERIODO ( MATRICULA, CVE_GRUPO, DESC_GRUPO, CVE_LICENCIATURA, DESC_LICENCIATURA, CVE_PERIODO, DESC_PERIDODO)
VALUES ('2012060169', '206B','206B','06','LICENCIATURA EN INFORMÁTICA','1819B', 'SEM-MAR/19-JUN/19');*/


/*INSERT INTO `ALUMNOS` (`MATRICULA`, `CODIGO_RFID`, `CURP`, `NOMBRES`, `APE_PATERNO`, `APE_MATERNO`, `ESTATUS`,
                       `AGREGADO_POR`, `FECHA_CREACION`, `ACTUALIZADO_POR`, `FECHA_ACTUALIZACION`)
VALUES ('2012060169', '2012060169', 'masl', 'leo', 'ms', 'stg', 'S', 'ADMIn', '2020-04-18 16:48:37', null, null);
INSERT INTO `ALUMNOS_DAT_PERIODO` (`MATRICULA`, `CVE_GRUPO`, `DESC_GRUPO`, `CVE_LICENCIATURA`, `DESC_LICENCIATURA`,
                                   `CVE_PERIODO`, `DESC_PERIDODO`, `ESTATUS`)
VALUES ('2012060169', '201', '201', '01B', 'LICENCIATURA EN ADMINISTRACIÓN MUNICIPAL 2015', '1819B',
        'SEM-MAR/19-JUN/19', 'S');

INSERT INTO ACTIVIDAD_ALUMNO (ID_ACTIVIDAD_ALUMNO, ID_HORARIO_ACTIVIDAD, ID_ALUMNO_P, AGREGADO_POR, FECHA_CREACION, ACTUALIZADO_POR, FECHA_ACTUALIZACION) VALUES (1, 7, 1, 'ADMIN', '2020-04-19 06:07:17', null, null);
INSERT INTO ACTIVIDAD_ALUMNO (ID_ACTIVIDAD_ALUMNO, ID_HORARIO_ACTIVIDAD, ID_ALUMNO_P, AGREGADO_POR, FECHA_CREACION, ACTUALIZADO_POR, FECHA_ACTUALIZACION) VALUES (2, 3, 1, 'ADMIN', '2020-04-19 06:07:28', null, null);
*/

delimiter //
create  procedure INSERT_MENU_ROL()
begin
    DECLARE V_END_MENU BOOLEAN DEFAULT FALSE;
    DECLARE V_ID_MENU INT;
    DECLARE MENU CURSOR FOR SELECT ID_MENU FROM MENU where ID_PADRE is not null AND ESTATUS = 'S';
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET V_END_MENU := TRUE;

    OPEN MENU;

    LOOP_MENU: LOOP
        FETCH MENU INTO V_ID_MENU;
        if V_END_MENU then
            LEAVE LOOP_MENU;
        end if;
        INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (V_ID_MENU, 1, 'ADMIN', NOW());
        INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (V_ID_MENU, 2, 'ADMIN', NOW());
    end loop LOOP_MENU;

    CLOSE MENU;
end //
delimiter ;
call INSERT_MENU_ROL();



INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (10, 3, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (16, 3, 'ADMIN', NOW());