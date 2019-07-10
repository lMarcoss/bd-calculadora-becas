/*

    -- Actividad alumno
SELECT C.ID_CICLO_ESCOLAR, C.DESCRIPCION_CICLO, C.PERIODO_ACTUAL,
       A.ID_ACTIVIDAD, A.NOMBRE_ACTIVIDAD,
       H.ID_HORARIO_ACTIVIDAD, H.HORA, H.AM_PM,
       AL.ID_ALUMNO, AL.ID_GRUPO,
       ALU.MATRICULA, ALU.NOMBRES, ALU.APE_PATERNO, ALU.APE_MATERNO
FROM CICLO_ESCOLAR C, HORARIO_ACTIVIDAD H, ACTIVIDADES A, ACTIVIDAD_ALUMNO AL, ALUMNOS ALU
WHERE C.PERIODO_ACTUAL = 'S'
  AND H.ESTATUS = 'S'
  AND C.ESTATUS = 'S'
  AND A.ESTATUS = 'S'
  AND ALU.ESTATUS = 'S'
  AND C.ID_CICLO_ESCOLAR = H.ID_CICLO_ESCOLAR
  AND H.ID_ACTIVIDAD = A.ID_ACTIVIDAD
  AND H.ID_HORARIO_ACTIVIDAD = AL.ID_ACTIVIDAD
  AND ALU.ID_ALUMNO = AL.ID_ALUMNO



SELECT C.ID_CICLO_ESCOLAR,
       C.DESCRIPCION_CICLO,
       C.PERIODO_ACTUAL,
       A.ID_ACTIVIDAD,
       A.NOMBRE_ACTIVIDAD,
       H.ID_HORARIO_ACTIVIDAD,
       H.HORA,
       H.AM_PM,
       AL.ID_ALUMNO,
       AL.ID_GRUPO,
       ALU.MATRICULA,
       ALU.NOMBRES,
       ALU.APE_PATERNO,
       ALU.APE_MATERNO
FROM CICLO_ESCOLAR C,
     HORARIO_ACTIVIDAD H,
     ACTIVIDADES A,
     ACTIVIDAD_ALUMNO AL,
     ALUMNOS ALU
WHERE C.PERIODO_ACTUAL = 'S'
  AND H.ESTATUS = 'S'
  AND C.ESTATUS = 'S'
  AND A.ESTATUS = 'S'
  AND ALU.ESTATUS = 'S'
  AND C.ID_CICLO_ESCOLAR = H.ID_CICLO_ESCOLAR
  AND H.ID_ACTIVIDAD = A.ID_ACTIVIDAD
  AND H.ID_HORARIO_ACTIVIDAD = AL.ID_ACTIVIDAD
  AND ALU.ID_ALUMNO = AL.ID_ALUMNO;


SELECT P.ID_PORCENTAJE_BECA,
       A.ID_ALUMNO,
       A.MATRICULA,
       A.NOMBRES,
       A.APE_PATERNO,
       A.APE_MATERNO,
       P.ID_ACTIVIDAD_ALUMNO,
       P.PORCENTAJE_SALA,
       P.PORCENTAJE_BIBLIOTECA,
       P.PORCENTAJE_ACTIVIDAD,
       AC.ID_ACTIVIDAD,
       AC.NOMBRE_ACTIVIDAD,
       P.ID_PARCIAL,
       PA.DESC_PARCIAL,
       CE.ID_CICLO_ESCOLAR,
       CE.DESCRIPCION_CICLO,
       AL.ID_GRUPO,
       G.CVE_GRUPO,
       L.ID_LICENCIATURA,
       L.CVE_LICENCIATURA,
       L.NOMBRE_LICENCIATURA
FROM PORCENTAJE_BECA P,
     PARCIALES PA,
     ACTIVIDAD_ALUMNO AL,
     HORARIO_ACTIVIDAD H,
     CICLO_ESCOLAR CE,
     ACTIVIDADES AC,
     ALUMNOS A,
     GRUPOS G,
     LICENCIATURAS L
WHERE P.ID_PARCIAL = PA.ID_PARCIAL
  AND P.ID_ACTIVIDAD_ALUMNO = AL.ID_ACTIVIDAD_ALUMNO
  AND H.ESTATUS = 'S'
  AND AL.ID_ACTIVIDAD = H.ID_HORARIO_ACTIVIDAD
  AND CE.ESTATUS = 'S'
  AND H.ID_CICLO_ESCOLAR = CE.ID_CICLO_ESCOLAR
  AND AC.ESTATUS = 'S'
  AND H.ID_ACTIVIDAD = AC.ID_ACTIVIDAD
  AND A.ESTATUS = 'S'
  AND AL.ID_ALUMNO = A.ID_ALUMNO
  AND G.ESTATUS = 'S'
  AND AL.ID_GRUPO = G.ID_GRUPO
  AND L.ESTATUS = 'S'
  AND G.ID_LICENCIATURA = L.ID_LICENCIATURA
ORDER BY A.NOMBRES ASC, A.APE_PATERNO ASC, A.APE_MATERNO ASC, G.CVE_GRUPO ASC, L.NOMBRE_LICENCIATURA ASC;


SELECT *
FROM PARCIALES;
SELECT *
FROM GRUPOS;
*/