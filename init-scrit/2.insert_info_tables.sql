INSERT INTO ACTIVIDADES (NOMBRE_ACTIVIDAD, OBLIGATORIO, TIPO_ACTIVIDAD, ESTATUS, AGREGADO_POR, FECHA_CREACION)
VALUES ('BIBLIOTECA',   'S', 'EX', 'S', 'ADMIN', NOW()),
('SALA DE CÓMPUTO',     'N', 'EX', 'S', 'ADMIN', NOW()),
('CLUB DE AJEDREZ',     'N', 'EX', 'S', 'ADMIN', NOW()),
('EDUCACIÓN FÍSICA',    'N', 'EX', 'S', 'ADMIN', NOW()),
('RONDALLA',            'N', 'EX', 'S', 'ADMIN', NOW()),
('CLUB DE LECTURA',     'N', 'EX', 'S', 'ADMIN', NOW()),
('CLUB DE CINE',        'N', 'EX', 'S', 'ADMIN', NOW()),
('TAEKWONDO',           'N', 'EX', 'S', 'ADMIN', NOW());

INSERT INTO ROLES (NOMBRE_ROL, ESTATUS,AGREGADO_POR, FECHA_CREACION, ACTUALIZADO_POR, FECHA_ACTUALIZACION) VALUES ('ADMINISTRADOR','S','ADMIN', '2019-10-04 15:05:13', null, null);
INSERT INTO ROLES (NOMBRE_ROL, ESTATUS,AGREGADO_POR, FECHA_CREACION, ACTUALIZADO_POR, FECHA_ACTUALIZACION) VALUES ('ENCARGADO', 'S','ADMIN', '2019-10-04 15:05:13', null, null);


INSERT INTO USUARIOS (NOMBRES, APE_PATERNO, APE_MATERNO, ID_ROL, USERNAME, PASSWORD, ESTATUS, AGREGADO_POR,
                      FECHA_CREACION)
VALUES ('LEONARDO', 'MARCOS', 'SANTIAGO', 1, 'marcossleo2@gmail.com', '****', 'S', 'ADMIN', NOW()),
       ('LUIS ÁNGEL', 'PEREZ', 'HERRERA', 2, 'luis@gmail.com', '****', 'S', 'ADMIN', NOW())
;

INSERT INTO HORARIO_ACTIVIDAD (ID_ACTIVIDAD, HORA, AM_PM, NUMERO_ALUMNOS, ID_USUARIO, CVE_PERIODO, DESC_PERIDODO, ESTATUS,
                               AGREGADO_POR, FECHA_CREACION)
VALUES (3, '07', 'PM', 20, 1, '1819B', 'SEM-MAR/19-JUN/19','S', 'ADMIN', NOW()),
       (3, '08', 'PM', 20, 1, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (3, '08', 'PM', 20, 1, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (4, '07', 'AM', 30, 1, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (4, '08', 'AM', 30, 1, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (5, '05', 'PM', 40, 1, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (6, '07', 'AM', 50, 1, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (7, '07', 'AM', 30, 1, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW()),
       (8, '07', 'AM', 50, 2, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', NOW());


INSERT INTO PARCIALES (DESC_PARCIAL, AGREGADO_POR, FECHA_CREACION)
VALUES ('1er Parcial', 'ADMIN',  NOW()),
       ('2do Parcial', 'ADMIN',  NOW()),
       ('3er Parcial', 'ADMIN',  NOW());

INSERT INTO PARCIAL_PERIODO (ID_PARCIAL, PARCIAL, PARCIAL_ACTUAL, FECHA_INICIO, FECHA_FIN, CVE_PERIODO, DESC_PERIODO, TOTAL_HORAS_BIBLIOTECA, TOTAL_ASISTENCIA_SALA, AGREGADO_POR, FECHA_CREACION, ACTUALIZADO_POR, FECHA_ACTUALIZACION) VALUES (1, 1, 'S', '2012-10-01', '2013-02-15', '1213A', 'SEM-oct/12-feb/13', 30, 45, 'admin', '2020-02-23 21:51:50', null, null);

INSERT INTO ALUMNOS (MATRICULA, CURP,APE_PATERNO, APE_MATERNO, NOMBRES, ESTATUS, AGREGADO_POR, FECHA_CREACION)
VALUES ('2017030148','2017030148', 'IZUCAR', 'GARCIA', 'RAFAEL', 'S', 'ADMIN', NOW()),
       ('2017030287','2017030287', 'SANTIAGO', 'HERNANDEZ', 'EDWIN AMARO', 'S', 'ADMIN', NOW()),
       ('2017030427','2017030427', 'ZAVALETA', 'ALAVEZ', 'ARCELIA', 'S', 'ADMIN', NOW()),
       ('2017030480','2017030480', 'GARCIA', 'GALLEGOS', 'KARINA', 'S', 'ADMIN', NOW()),
       ('2014030445','2014030445', 'GARCIA', 'VILLAFAÑE', 'DIEGO', 'S', 'ADMIN', NOW()),
       ('2017030326','2017030326', 'MENDEZ', 'SERRANO', 'KARLA JENNIFER', 'S', 'ADMIN', NOW()),
       ('2010030688','2010030688', 'RAMIREZ', 'ORTEGA', 'MITZI JUDITH', 'S', 'ADMIN', NOW()),
       ('2016030368','2016030368', 'GARCIA', 'SILVA', 'UZIEL', 'S', 'ADMIN', NOW()),
       ('2017130083','2017130083', 'JIMENEZ', 'SANCHEZ', 'ANAHI', 'S', 'ADMIN', NOW()),
       ('2017030554','2017030554', 'PEREZ', 'RAMIREZ', 'EZEQUIEL DANIEL', 'S', 'ADMIN', NOW()),
       ('2017030542','2017030542', 'RAMOS', 'MENDOZA', 'GUDELIA', 'S', 'ADMIN', NOW()),
       ('2017030182','2017030182', 'RODRIGUEZ', 'JUAREZ', 'NELIDA ANEL', 'S', 'ADMIN', NOW()),
       ('2017030297','2017030297', 'MERLIN', 'CERVANTES', 'KEYLA SOLEDAD', 'S', 'ADMIN', NOW()),
       ('2017030549','2017030549', 'FRANCISCO', 'JERONIMO', 'SOLEDAD', 'S', 'ADMIN', NOW()),
       ('2017130426','2017130426', 'MENDOZA', 'LOPEZ', 'JUDITH VENECIA', 'S', 'ADMIN', NOW()),
       ('2017130551','2017130551', 'GARCIA', 'BAUTISTA', 'CARMEN GABINA', 'S', 'ADMIN', NOW()),
       ('2017030402','2017030402', 'GONZALEZ', 'TRUJILLO', 'ADOLFO FRANCISCO', 'S', 'ADMIN', NOW()),
       ('2018070196','2018070196', 'ALAVEZ', 'CRUZ', 'REYNA AZUCENA', 'S', 'ADMIN', NOW()),
       ('2018070657','2018070657', 'ALTAMIRANO', 'ALTAMIRANO', 'MARIA TERESA', 'S', 'ADMIN', NOW()),
       ('2018070205','2018070205', 'AVENDAÑO', 'HERNANDEZ', 'JOCELYN', 'S', 'ADMIN', NOW()),
       ('2018070341','2018070341', 'CARREÑO', 'GONZALEZ', 'VALERIA', 'S', 'ADMIN', NOW()),
       ('2018070619','2018070619', 'CORTES', 'PEREZ', 'MARIA FERNANDA', 'S', 'ADMIN', NOW()),
       ('2018070609','2018070609', 'CRUZ', 'NAVA', 'WENDY STEPHANIE', 'S', 'ADMIN', NOW()),
       ('2018070074','2018070074', 'GASPAR', 'RANGEL', 'EUNICE ANAI', 'S', 'ADMIN', NOW()),
       ('2018070273','2018070273', 'GOMEZ', 'SANTIAGO', 'DULCE MADAY', 'S', 'ADMIN', NOW()),
       ('2018070697','2018070697', 'HERNANDEZ', 'ANTONIO', 'ARACELI ANGELA', 'S', 'ADMIN', NOW()),
       ('2018070220','2018070220', 'JUAREZ', 'LOPEZ', 'HIDAY', 'S', 'ADMIN', NOW()),
       ('2018070177','2018070177', 'LORENZO', 'MARTINEZ', 'KIMBERLY YANET', 'S', 'ADMIN', NOW()),
       ('2018070507','2018070507', 'LUNA', 'PEREZ', 'JAQUELINE ELIZABETH', 'S', 'ADMIN', NOW()),
       ('2018070122','2018070122', 'MENDEZ', 'GASGA', 'NADIA ELIZABETH', 'S', 'ADMIN', NOW()),
       ('2018070193','2018070193', 'MUÑOZ', 'DIAZ', 'KENNY MARILY', 'S', 'ADMIN', NOW()),
       ('2018070694','2018070694', 'PEÑA', 'PEREZ', 'LUISA EVELYN', 'S', 'ADMIN', NOW()),
       ('2018070717','2018070717', 'PEREZ', 'RODRIGUEZ', 'VICTORIA', 'S', 'ADMIN', NOW()),
       ('2018070218','2018070218', 'RAMOS', 'CRUZ', 'ROCIO CATALINA', 'S', 'ADMIN', NOW()),
       ('2018070610','2018070610', 'SANTIAGO', 'PADRON', 'WALKYRIA', 'S', 'ADMIN', NOW()),
       ('2018070406','2018070406', 'VALENCIA', 'BUSTAMANTE', 'PERLA PAOLA', 'S', 'ADMIN', NOW()),
       ('2018070508','2018070508', 'VAZQUEZ', 'GONZALEZ', 'YURITZA', 'S', 'ADMIN', NOW()),
       ('2018070181','2018070181', 'VILLANUEVA', 'CARRASCO', 'VANESSA', 'S', 'ADMIN', NOW()),
       ('2017070318','2017070318', 'GARCIA', 'GARCIA', 'MIGUEL SIMEON', 'S', 'ADMIN', NOW()),
       ('2015070190','2015070190', 'GARCIA', 'RAYMUNDO', 'MAYRA LETICIA', 'S', 'ADMIN', NOW()),
       ('2017070249','2017070249', 'GARCIA', 'RUIZ', 'ANA', 'S', 'ADMIN', NOW()),
       ('2017070166','2017070166', 'HERNANDEZ', 'MARTINEZ', 'XOCHITL', 'S', 'ADMIN', NOW()),
       ('2017070191','2017070191', 'LAVARIEGA', 'CANUL', 'RICARDO', 'S', 'ADMIN', NOW()),
       ('2017070238','2017070238', 'LOPEZ', 'LOPEZ', 'LUCIA GUADALUPE', 'S', 'ADMIN', NOW()),
       ('2017070469','2017070469', 'LUNA', 'RODRIGUEZ', 'VANESSA', 'S', 'ADMIN', NOW()),
       ('2017070257','2017070257', 'MENDEZ', 'VASQUEZ', 'DANIELA', 'S', 'ADMIN', NOW()),
       ('2017070203','2017070203', 'OLIVERA', 'RAMIREZ', 'FELIX EZEQUIEL', 'S', 'ADMIN', NOW()),
       ('2017070062','2017070062', 'ORTEGA', 'VASQUEZ', 'JOSE ALEXIS', 'S', 'ADMIN', NOW()),
       ('2017070558','2017070558', 'ORTIZ', 'BRAVO', 'MARICRUZ', 'S', 'ADMIN', NOW()),
       ('2017070137','2017070137', 'PEREZ', 'YESCAS', 'KARLA ALEXANDRA', 'S', 'ADMIN', NOW()),
       ('2017070499','2017070499', 'RAMIREZ', 'CRUZ', 'ROCISELA', 'S', 'ADMIN', NOW()),
       ('2017070248','2017070248', 'VARGAS', 'PEREZ', 'ALICIA', 'S', 'ADMIN', NOW()),
       ('2017070389','2017070389', 'ZARATE', 'MORALES', 'JAFET', 'S', 'ADMIN', NOW()),
       ('2016070196','2016070196', 'CHAVEZ', 'PEREZ', 'ANASTACIA ELIZABETH', 'S', 'ADMIN', NOW()),
       ('2016070197','2016070197', 'CRUZ', 'ARRAZOLA', 'DIANA CAROL', 'S', 'ADMIN', NOW()),
       ('2015070130','2015070130', 'CRUZ', 'MEJIA', 'REBECA MARISOL', 'S', 'ADMIN', NOW()),
       ('2016070091','2016070091', 'FABIAN', 'CRUZ', 'ALEJANDRO', 'S', 'ADMIN', NOW()),
       ('2016070221','2016070221', 'FIGUEROA', 'RIOS', 'MARLENE JANICE', 'S', 'ADMIN', NOW()),
       ('2016070200','2016070200', 'GARCIA', 'CORTES', 'ERIKA MARIBEL', 'S', 'ADMIN', NOW()),
       ('2016070201','2016070201', 'GARCIA', 'GARCIA', 'ANAHI', 'S', 'ADMIN', NOW()),
       ('2016070202','2016070202', 'GARCIA', 'MARTINEZ', 'CITLALI', 'S', 'ADMIN', NOW()),
       ('2016070207','2016070207', 'HABANA', 'CESPEDES', 'ALIXA ANTONIA', 'S', 'ADMIN', NOW()),
       ('2016070092','2016070092', 'HERNANDEZ', 'MENDEZ', 'MARIO ALBERTO', 'S', 'ADMIN', NOW()),
       ('2016070212','2016070212', 'MARTINEZ', 'PEREZ', 'ABEL', 'S', 'ADMIN', NOW()),
       ('2016070213','2016070213', 'MELCHOR', 'SOTO', 'JHOSELYN', 'S', 'ADMIN', NOW()),
       ('2016070214','2016070214', 'MIRANDA', 'CHAVEZ', 'EDUARDO', 'S', 'ADMIN', NOW()),
       ('2016070027','2016070027', 'ORDUÑA', 'VERA', 'DANIEL', 'S', 'ADMIN', NOW()),
       ('2016070228','2016070228', 'PACHECO', 'GUTIERREZ', 'ARIADNA YAMILET', 'S', 'ADMIN', NOW()),
       ('2016070233','2016070233', 'RAMIREZ', 'GUZMAN', 'ELISA DANIELA', 'S', 'ADMIN', NOW()),
       ('2016070237','2016070237', 'RODRIGUEZ', 'JIMENEZ', 'KAREN LISSET', 'S', 'ADMIN', NOW()),
       ('2016070239','2016070239', 'ROSAS', 'RUIZ', 'ZURISADAY', 'S', 'ADMIN', NOW()),
       ('2017070568','2017070568', 'VASQUEZ', 'VILLAVICENCIO', 'LUCERO GABRIELA', 'S', 'ADMIN', NOW()),
       ('2016070194','2016070194', 'BARRANCO', 'GOMEZ', 'JOSELIN', 'S', 'ADMIN', NOW()),
       ('2016070195','2016070195', 'BLANCO', 'CASTRO', 'MICHELLE JAILENE', 'S', 'ADMIN', NOW()),
       ('2016070220','2016070220', 'DIAZ', 'HERNANDEZ', 'MARIA GUADALUPE', 'S', 'ADMIN', NOW()),
       ('2015070188','2015070188', 'ENRIQUEZ', 'ANTONIO', 'YESICA', 'S', 'ADMIN', NOW()),
       ('2015070159','2015070159', 'GARCIA', 'JIMENEZ', 'ARACELI', 'S', 'ADMIN', NOW()),
       ('2016070204','2016070204', 'GARCIA', 'PEREZ', 'JORGE LUIS', 'S', 'ADMIN', NOW()),
       ('2015070131','2015070131', 'GARCIA', 'RAMIREZ', 'SIOMI GUADALUPE', 'S', 'ADMIN', NOW()),
       ('2015070207','2015070207', 'HERNANDEZ', 'DE LA LUZ', 'OSVALDO', 'S', 'ADMIN', NOW()),
       ('2016070210','2016070210', 'JUAREZ', 'OROCIO', 'ERIKA', 'S', 'ADMIN', NOW()),
       ('2016070211','2016070211', 'LOPEZ', 'FERRER', 'FREIRA VIANY', 'S', 'ADMIN', NOW()),
       ('2016070192','2016070192', 'LUNA', 'FERNANDEZ', 'DIEGO ISRAEL', 'S', 'ADMIN', NOW()),
       ('2016070229','2016070229', 'PERALTA', 'SANCHEZ', 'HEIDI ESTHER', 'S', 'ADMIN', NOW()),
       ('2016070230','2016070230', 'PEREZ', 'CHAVEZ', 'MARIA JOSE', 'S', 'ADMIN', NOW()),
       ('2016070215','2016070215', 'RAVIELA', 'ZARATE', 'ALONDRA', 'S', 'ADMIN', NOW()),
       ('2016070241','2016070241', 'SANCHEZ', 'SANCHEZ', 'DANIELA PAOLA', 'S', 'ADMIN', NOW()),
       ('2016070094','2016070094', 'TORIJA', 'GONZALEZ', 'NANCY MIREYA', 'S', 'ADMIN', NOW()),
       ('2016070218','2016070218', 'VASQUEZ', 'PALACIOS', 'LEYLANI', 'S', 'ADMIN', NOW()),
       ('2016070219','2016070219', 'VILLAFAÑE', 'MENDOZA', 'JULISSA', 'S', 'ADMIN', NOW()),
       ('2015070169','2015070169', 'MATUS', 'ZARATE', 'AYLIN NOEMI', 'S', 'ADMIN', NOW()),
       ('2014070078','2014070078', 'CRUZ', 'GARCIA', 'ROCIO VIRGINIA', 'S', 'ADMIN', NOW()),
       ('2014070105','2014070105', 'HERNANDEZ', 'RAMOS', 'CLAUDIA', 'S', 'ADMIN', NOW()),
       ('2014070192','2014070192', 'RAMIREZ', 'AQUINO', 'VICTOR HUGO', 'S', 'ADMIN', NOW()),
       ('2015070214','2015070214', 'SEBASTIAN', 'MATIAS', 'LUZ CLARITA', 'S', 'ADMIN', NOW()),
       ('2014070073','2014070073', 'BAUTISTA', 'MARTINEZ', 'AMADELIA', 'S', 'ADMIN', NOW()),
       ('2014070087','2014070087', 'CRUZ', 'MORALES', 'ROSARIO ABRIL', 'S', 'ADMIN', NOW()),
       ('2014070089','2014070089', 'CRUZ', 'RUIZ', 'ANA ALBERTA', 'S', 'ADMIN', NOW()),
       ('2014070160','2014070160', 'DIAZ', 'RUIZ', 'MARISOL', 'S', 'ADMIN', NOW()),
       ('2014070095','2014070095', 'GARCIA', 'BLAS', 'ANGELICA', 'S', 'ADMIN', NOW()),
       ('2014070097','2014070097', 'GARCIA', 'CRUZ', 'SHADEN ALDARA', 'S', 'ADMIN', NOW()),
       ('2014070099','2014070099', 'GARCIA', 'VASQUEZ', 'EDITH', 'S', 'ADMIN', NOW()),
       ('2014070100','2014070100', 'GARCIA', 'VASQUEZ', 'NANCY', 'S', 'ADMIN', NOW()),
       ('2014070165','2014070165', 'GONZALEZ', 'MARROQUIN', 'IZAMAR', 'S', 'ADMIN', NOW()),
       ('2014070167','2014070167', 'GUZMAN', 'LARA', 'PATRICIA', 'S', 'ADMIN', NOW()),
       ('2014070461','2014070461', 'HERNANDEZ', 'RAMIREZ', 'JUAN', 'S', 'ADMIN', NOW()),
       ('2014070170','2014070170', 'JIMENEZ', 'LOPEZ', 'DIANA LAURA', 'S', 'ADMIN', NOW()),
       ('2013070162','2013070162', 'JIMENEZ', 'RUIZ', 'ELISA', 'S', 'ADMIN', NOW()),
       ('2014070179','2014070179', 'LOPEZ', 'RAMIREZ', 'PETRA YEDANI', 'S', 'ADMIN', NOW()),
       ('2013070071','2013070071', 'MARTINEZ', 'HERNANDEZ', 'BEATRIZ SINAI', 'S', 'ADMIN', NOW()),
       ('2014070119','2014070119', 'MARTINEZ', 'SANCHEZ', 'CAROLINA', 'S', 'ADMIN', NOW()),
       ('2014070185','2014070185', 'MATUS', 'VARGAS', 'CRISTINA', 'S', 'ADMIN', NOW()),
       ('2014070416','2014070416', 'MORALES', 'PEREZ', 'LILIANA', 'S', 'ADMIN', NOW()),
       ('2014070135','2014070135', 'REYES', 'GARCIA', 'VANESSA NOEMI', 'S', 'ADMIN', NOW()),
       ('2014070194','2014070194', 'REYES', 'RAMIREZ', 'CLAUDIA', 'S', 'ADMIN', NOW()),
       ('2014070196','2014070196', 'REYES', 'SANTIAGO', 'EMMA', 'S', 'ADMIN', NOW()),
       ('2014070197','2014070197', 'RUIZ', 'GABRIEL', 'QUETZALLI MELISA', 'S', 'ADMIN', NOW()),
       ('2014070139','2014070139', 'SANTIBAÑEZ', 'OJEDA', 'CITLALLI MONTSERRAT', 'S', 'ADMIN', NOW()),
       ('2012030578','2012030578', 'SEBASTIAN', 'SANTIAGO', 'GABRIELA', 'S', 'ADMIN', NOW()),
       ('2014070200','2014070200', 'SOSA', 'YESCAS', 'ANDREA', 'S', 'ADMIN', NOW()),
       ('2014070146','2014070146', 'ZAMORA', 'CARRASCO', 'LUIS ALBERTO', 'S', 'ADMIN', NOW()),
       ('2018030278','2018030278', 'ANTONIO', 'CRISOSTOMO', 'NORA OLIVIA', 'S', 'ADMIN', NOW()),
       ('2018030601','2018030601', 'BAUTISTA', 'JAVIER', 'ROSARIO ESMERALDA', 'S', 'ADMIN', NOW()),
       ('2018030309','2018030309', 'CHAVEZ', 'LOPEZ', 'GREYSI MICHELLE', 'S', 'ADMIN', NOW()),
       ('2018030498','2018030498', 'CORTES', 'MARISCAL', 'LEYDI IRAIS', 'S', 'ADMIN', NOW()),
       ('2018030348','2018030348', 'CRUZ', 'GARCIA', 'DANIELA JOCELYN', 'S', 'ADMIN', NOW()),
       ('2018030380','2018030380', 'CRUZ', 'GERONIMO', 'MIREYA', 'S', 'ADMIN', NOW()),
       ('2018030620','2018030620', 'CRUZ', 'LOPEZ', 'MARIA DEL CARMEN', 'S', 'ADMIN', NOW()),
       ('2018030363','2018030363', 'CRUZ', 'LOPEZ', 'MELISA', 'S', 'ADMIN', NOW()),
       ('2018030260','2018030260', 'FLORES', 'MORALES', 'ANA LUISA', 'S', 'ADMIN', NOW()),
       ('2017030245','2017030245', 'GARCIA', 'JIMENEZ', 'BEATRIZ', 'S', 'ADMIN', NOW()),
       ('2018030692','2018030692', 'GUTIERREZ', 'HERNANDEZ', 'NEILA ZAIDEL', 'S', 'ADMIN', NOW()),
       ('2018030558','2018030558', 'HERNANDEZ', 'HERNANDEZ', 'BEATRIZ', 'S', 'ADMIN', NOW()),
       ('2018030535','2018030535', 'HERNANDEZ', 'HERNANDEZ', 'LORENZA', 'S', 'ADMIN', NOW()),
       ('2018030649','2018030649', 'LOPEZ', 'MARTINEZ', 'MARIA SOLEDAD', 'S', 'ADMIN', NOW()),
       ('2018030407','2018030407', 'MENDOZA', 'RAMIREZ', 'JOSUE EDUARDO', 'S', 'ADMIN', NOW()),
       ('2018030509','2018030509', 'MIJARES', 'ALEJANDRO', 'BLANCA LETICIA', 'S', 'ADMIN', NOW()),
       ('2018030461','2018030461', 'MOLINA', 'SANTIAGO', 'BIANI XUNAXI', 'S', 'ADMIN', NOW()),
       ('2018030327','2018030327', 'MONTES', 'CORTES', 'ROCIO', 'S', 'ADMIN', NOW()),
       ('2018030585','2018030585', 'MORALES', 'PIMENTEL', 'VANESSA MICHELLE', 'S', 'ADMIN', NOW()),
       ('2018030432','2018030432', 'OLIVERA', 'GONZALEZ', 'AGALI DE LOS ANGELES', 'S', 'ADMIN', NOW()),
       ('2018030460','2018030460', 'RAMIREZ', 'MIGUEL', 'DENNIS', 'S', 'ADMIN', NOW()),
       ('2018030310','2018030310', 'RIOS', 'MARTINEZ', 'JOSÉ', 'S', 'ADMIN', NOW()),
       ('2018030635','2018030635', 'ROJAS', 'ANGELES', 'NESTOR ELIAS', 'S', 'ADMIN', NOW()),
       ('2018030397','2018030397', 'ROMERO', 'ARRAZOLA', 'ILSE GABRIELA', 'S', 'ADMIN', NOW()),
       ('2018030449','2018030449', 'SANTIAGO', 'HERNANDEZ', 'LUZ DE JESUS', 'S', 'ADMIN', NOW()),
       ('2018030433','2018030433', 'VASQUEZ', 'ARAGON', 'MATZA YURI', 'S', 'ADMIN', NOW()),
       ('2018030702','2018030702', 'VASQUEZ', 'GUTIERREZ', 'ITZEL ZITLALI', 'S', 'ADMIN', NOW()),
       ('2018030671','2018030671', 'VASQUEZ', 'PEREZ', 'CARMEN LIZETH', 'S', 'ADMIN', NOW()),
       ('2018030524','2018030524', 'ZARATE', 'PEREZ', 'MICAELA JUANA', 'S', 'ADMIN', NOW()),
       ('2015030260','2015030260', 'LAZO', 'RIAÑO', 'OSIRIS', 'S', 'ADMIN', NOW()),
       ('2015030476','2015030476', 'LOPEZ', 'HERNANDEZ', 'MARISOL', 'S', 'ADMIN', NOW()),
       ('2015030344','2015030344', 'RODRIGUEZ', 'REYES', 'PATRICIA (BIO)', 'S', 'ADMIN', NOW()),
       ('2014030444','2014030444', 'HERNANDEZ', 'ARZATE', 'JUAN ALBERTO', 'S', 'ADMIN', NOW()),
       ('2015030450','2015030450', 'REYES', 'PEREZ', 'REINA', 'S', 'ADMIN', NOW()),
       ('2015030485','2015030485', 'RUIZ', 'RAMOS', 'ESTEFI SOLEDAD', 'S', 'ADMIN', NOW()),
       ('2015030347','2015030347', 'SANTOS', 'ARRAZOLA', 'MIRIAM', 'S', 'ADMIN', NOW()),
       ('2015030523','2015030523', 'VALLADARES', 'CANSECO', 'ARITZEL NATIVIDAD', 'S', 'ADMIN', NOW()),
       ('2015030350','2015030350', 'VELAZQUEZ', 'NAVA', 'DIANA PAULINA', 'S', 'ADMIN', NOW()),
       ('2015030470','2015030470', 'GUTIERREZ', 'HERNANDEZ', 'ERICK BLANDINO', 'S', 'ADMIN', NOW()),
       ('2015030516','2015030516', 'PACHECO', 'ZARATE', 'ARIADNA SOLEDAD', 'S', 'ADMIN', NOW());

INSERT INTO ALUMNOS (MATRICULA, CURP,APE_PATERNO, APE_MATERNO, NOMBRES, ESTATUS, AGREGADO_POR, FECHA_CREACION) VALUES
('2012060169','MASL931106HOCRNN09','MARCOS','SANTIAGO','LEONARDO','S','ADMIN',NOW()),
('0056','BADD110313HCMLNS01','CRUZ','CRUZ','YADHIRA ARACELI','S','ADMIN',NOW()),
('0584','BADD110313HCMLNS02','DIAZ','HERNANDEZ','SAMANTHA NASHIELLY','S','ADMIN',NOW()),
('1104','BADD110313HCMLNS03','GONZALEZ','AGUIRRE','ADRIANA GUADALUPE','S','ADMIN',NOW()),
('2366','BADD110313HCMLNS04','HERNANDEZ','DAMIAN','BELEN','S','ADMIN',NOW()),
('1801','BADD110313HCMLNS05','HERNANDEZ','RAMOS','CRISTHIAN','S','ADMIN',NOW()),
('0848','BADD110313HCMLNS06','LOPEZ','MAXIMO','HERIBERTO','S','ADMIN',NOW()),
('1694','BADD110313HCMLNS07','MARTINEZ','GUTIERREZ','PEDRO','S','ADMIN',NOW()),
('0059','BADD110313HCMLNS08','MARTINEZ','HERNANDEZ','EUSTOLIA','S','ADMIN',NOW()),
('1625','BADD110313HCMLNS09','MARTINEZ','SANTIAGO','ELUZAY ATALO','S','ADMIN',NOW()),
('1517','BADD110313HCMLNS10','MARTINEZ','VASQUEZ','ALBERTO','S','ADMIN',NOW()),
('1043','BADD110313HCMLNS11','MURGUIA','RUIZ','FATIMA ROSARIO','S','ADMIN',NOW()),
('0035','BADD110313HCMLNS12','PEREZ','GOMEZ','IDALIA MONSERRAT','S','ADMIN',NOW()),
('1830','BADD110313HCMLNS13','PEREZ','PACHECO','DIANA REYNA','S','ADMIN',NOW()),
('0198','BADD110313HCMLNS14','REYES','REYES','LEONARDO DANIEL','S','ADMIN',NOW()),
('0055','BADD110313HCMLNS15','RIOS','SANCHEZ','VERONICA ISABEL','S','ADMIN',NOW()),
('1904','BADD110313HCMLNS16','VASQUEZ','CRUZ','MACEDONIO VICTOR','S','ADMIN',NOW()),
('0351','BADD110313HCMLNS17','VILLA','LOPEZ','LUCERO ABIGAIL','S','ADMIN',NOW());


INSERT INTO ALUMNOS_DAT_PERIODO (MATRICULA,CVE_GRUPO, DESC_GRUPO, CVE_LICENCIATURA, DESC_LICENCIATURA, CVE_PERIODO, DESC_PERIDODO) VALUES
('2012060169', '106B','106B','06','LICENCIATURA INFORMÁTICA','1213A','SEMESTRE-OCT/04-FEB/15'),
('0056', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('0584', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('1104', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('2366', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('1801', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('0848', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('1694', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('0059', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('1625', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('1517', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('1043', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('0035', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('1830', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('0198', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('0055', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('1904', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19'),
('0351', '104C','104 C','04','LICENCIATURA EN CIENCIAS EMPRESARIALES','1819A','SEMESTRE-OCT/18-FEB/19');


INSERT INTO ALUMNOS_DAT_PERIODO (`MATRICULA`, `CVE_GRUPO`, `DESC_GRUPO`, `CVE_LICENCIATURA`, `DESC_LICENCIATURA`, `CVE_PERIODO`, `DESC_PERIDODO`) VALUES ('2010030688', '106B', '106B', '06', 'LICENCIATURA INFORMÁTICA', '1213A', 'SEMESTRE-OCT/04-FEB/15');
INSERT INTO ALUMNOS_DAT_PERIODO (`MATRICULA`, `CVE_GRUPO`, `DESC_GRUPO`, `CVE_LICENCIATURA`, `DESC_LICENCIATURA`, `CVE_PERIODO`, `DESC_PERIDODO`) VALUES ('2017130083', '106B', '106B', '06', 'LICENCIATURA INFORMÁTICA', '1213A', 'SEMESTRE-OCT/04-FEB/15');
INSERT INTO ALUMNOS_DAT_PERIODO (`MATRICULA`, `CVE_GRUPO`, `DESC_GRUPO`, `CVE_LICENCIATURA`, `DESC_LICENCIATURA`, `CVE_PERIODO`, `DESC_PERIDODO`) VALUES ('2017030182', '106B', '106B', '06', 'LICENCIATURA INFORMÁTICA', '1213A', 'SEMESTRE-OCT/04-FEB/15');
INSERT INTO ALUMNOS_DAT_PERIODO (`MATRICULA`, `CVE_GRUPO`, `DESC_GRUPO`, `CVE_LICENCIATURA`, `DESC_LICENCIATURA`, `CVE_PERIODO`, `DESC_PERIDODO`) VALUES ('2017130551', '106B', '106B', '06', 'LICENCIATURA INFORMÁTICA', '1213A', 'SEMESTRE-OCT/04-FEB/15');
INSERT INTO ALUMNOS_DAT_PERIODO (`MATRICULA`, `CVE_GRUPO`, `DESC_GRUPO`, `CVE_LICENCIATURA`, `DESC_LICENCIATURA`, `CVE_PERIODO`, `DESC_PERIDODO`) VALUES ('2017030402', '106B', '106B', '06', 'LICENCIATURA INFORMÁTICA', '1213A', 'SEMESTRE-OCT/04-FEB/15');

/*INSERT INTO ACTIVIDAD_ALUMNO (ID_HORARIO_ACTIVIDAD, AGREGADO_POR, FECHA_CREACION, CVE_GRUPO, CVE_LICENCIATURA, CVE_PERIODO) VALUES
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A'),
('4','ADMIN',NOW(), '104C','04','1819A');*/


INSERT INTO `HORARIO_ACTIVIDAD` (`ID_ACTIVIDAD`, `HORA`, `AM_PM`, `NUMERO_ALUMNOS`, `ID_USUARIO`, `CVE_PERIODO`, `DESC_PERIDODO`, `ESTATUS`, `AGREGADO_POR`, `FECHA_CREACION`, `ACTUALIZADO_POR`, `FECHA_ACTUALIZACION`) VALUES (2, '08', 'AM', 40, 2, '1819B', 'SEM-MAR/19-JUN/19', 'S', 'ADMIN', '2019-08-14 17:29:56', null, null);



INSERT INTO MENU (ID_PADRE, NOMBRE, ICON, URL, AGREGADO_POR, FECHA_CREACION)
VALUES
    --  menu principal
    (1, 'Configuración', 'mdi mdi-settings', 'configuracion', 'ADMIN', NOW()),
    (2, 'Alumnos', 'mdi mdi-account', 'alumnos', 'ADMIN', NOW()),
    (3, 'Reporte Actividad', 'mdi mdi-upload', 'reporte-actividades', 'ADMIN', NOW()),
    (4, 'Catálogos', 'mdi mdi-book', 'catalogos', 'ADMIN', NOW()),
    (5, 'Seguridad', 'mdi mdi-lock', 'seguridad', 'ADMIN', NOW()),
    -- submenus
    (1, 'Periodo', null, 'periodo', 'ADMIN', NOW()),
    (1, 'Horario Actividades', null, 'horario-actividades', 'ADMIN', NOW()),

    (2, 'Administración', null, 'admin', 'ADMIN', NOW()),
    (2, 'Detalle Alumno', null, 'detalle', 'ADMIN', NOW()),
    (2, 'Registro en Club', null, 'inscripcion-actividad', 'ADMIN', NOW()),
    (2, 'Inscripciones', null, 'administrar-inscripciones', 'ADMIN', NOW()),

    (3, 'Registro Asistencia Sala de Cómputo', null, 'asistencia-sala', 'ADMIN', NOW()),
    (3, 'Registro % Actividades', null, 'registro-porcentaje-actividad', 'ADMIN', NOW()),
    (3, 'Carga Horas Biblioteca', null, 'carga-hrs-biblioteca', 'ADMIN', NOW()),
    (3, 'Carga Horas Sala de Cómputo', null, 'carga-hrs-sala-computo', 'ADMIN', NOW()),
    (3, 'Reporte detallado', null, 'detallado', 'ADMIN', NOW()),

    (4, 'Licenciaturas', null, 'licenciaturas', 'ADMIN', NOW()),
    (4, 'Grupos', null, 'grupos', 'ADMIN', NOW()),
    (4, 'Actividades', null, 'actividades', 'ADMIN', NOW()),

    (5, 'Usuarios', null, 'usuarios', 'ADMIN', NOW())
;

-- ASIGNACION DE MENU A ROL
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (6, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (7, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (8, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (9, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (10, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (11, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (12, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (13, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (14, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (15, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (16, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (17, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (18, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (19, 1, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (20, 1, 'ADMIN', NOW());

INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (6, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (7, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (8, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (9, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (10, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (11, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (12, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (13, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (14, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (15, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (16, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (17, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (18, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (19, 2, 'ADMIN', NOW());
INSERT INTO MENU_ROL (ID_MENU, ID_ROL, AGREGADO_POR, FECHA_CREACION) VALUES (20, 2, 'ADMIN', NOW());

INSERT INTO ACTIVIDAD_ALUMNO (`ID_HORARIO_ACTIVIDAD`, `ID_ALUMNO_P`, `AGREGADO_POR`, `FECHA_CREACION`, `ACTUALIZADO_POR`, `FECHA_ACTUALIZACION`)
VALUES (10, 1, 'ADMIN', '2020-02-25 00:04:55', null, null),
       (10, 19, 'ADMIN', '2020-02-25 00:04:55', null, null),
       (10, 20, 'ADMIN', '2020-02-25 00:04:55', null, null),
       (10, 21, 'ADMIN', '2020-02-25 00:04:55', null, null),
       (10, 22, 'ADMIN', '2020-02-25 00:04:55', null, null),
       (10, 23, 'ADMIN', '2020-02-25 00:04:55', null, null)
;