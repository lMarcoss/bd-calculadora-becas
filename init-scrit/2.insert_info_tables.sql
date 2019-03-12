INSERT INTO LICENCIATURAS (CVE_LICENCIATURA, NOMBRE_LICENCIATURA, ESTATUS) VALUES
  ('LI_INFORM', 'INFORMÁTICA', 'S'),
  ('LI_NUTRIC', 'NUTRICIÓN', 'S'),
  ('LI_ENFERM', 'ENFERMERÍA', 'S'),
  ('LI_MEDICI', 'MEDICINA', 'S'),
  ('LI_ODONTO', 'ODONTOLOGÍA', 'S'),
  ('LI_CIENCI', 'CIENCIAS EMPRESARIALES', 'S'),
  ('LI_ADMINI', 'ADMINISTRACIÓN PÚBLICA', 'S'),
  ('LI_ADMINI', 'ADMINISTRACIÓN MUNICIPAL', 'S');

INSERT INTO GRUPOS (CVE_GRUPO, ID_LICENCIATURA, ESTATUS) VALUES
  ('1006', 6, 'S'),
  ('806', 6, 'S'),
  ('606', 6, 'S'),
  ('406', 6, 'S'),
  ('206', 6, 'S'),

  ('1005', 5, 'S'),
  ('805', 5, 'S'),
  ('605', 5, 'S'),
  ('405', 5, 'S'),
  ('205', 5, 'S'),

  ('1004', 4, 'S'),
  ('804', 4, 'S'),
  ('604', 4, 'S'),
  ('404', 4, 'S'),
  ('204', 4, 'S');

  INSERT INTO ACTIVIDADES (NOMBRE_ACTIVIDAD, OBLIGATORIO, NUMERO_ALUMNOS, ESTATUS) VALUES
  ('CLUB DE AJEDREZ', 'N', 20, 'S'),
  ('EDUCACIÓN FÍSICA', 'N', 30, 'S'),
  ('RONDALLA', 'N', 40, 'S'),
  ('CLUB DE LECTURA', 'N', 50, 'S'),
  ('CLUB DE CINE', 'N', 30, 'S'),
  ('TAEKWONDO', 'N', 50, 'S'),
  ('SALA DE CÓMPUTO', 'S', 0, 'S'),
  ('BIBLIOTECA', 'S', 0, 'S');

  INSERT INTO PARCIALES (NUM_PARCIAL, PARCIAL_ACTUAL, ESTATUS) VALUES
  ('1', 'S', 'S');