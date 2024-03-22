-- Seleccionar todos los alumnos
SELECT *
FROM alumnos

-- Contar el total de alumnos
SELECT COUNT(*) AS total_alumnos FROM alumnos;

-- Comprobar las direcciones de cada campus
SELECT nombre_campus, direccion FROM campuses;

-- Mostrar los profesores con sus roles
SELECT nombre_profesor, nombre_rol FROM profesores
JOIN claustro ON profesores.id_profesor = claustro.id_profesor
JOIN roles ON claustro.id_rol = roles.id_rol;

-- Listar los nombres de los alumnos que han participado en proyectos FullStack
SELECT nombre_alumno FROM historico_alumnado
JOIN alumnos ON historico_alumnado.id_alumno = alumnos.id_alumno
WHERE id_vertical = 2;

-- Obtener la cantidad de alumnos por vertical
SELECT nombre_vertical, COUNT(*) AS cantidad_alumnos FROM historico_alumnado
JOIN verticales ON historico_alumnado.id_vertical = verticales.id_vertical
GROUP BY nombre_vertical;

-- Identificar los roles de los profesores en cada clase
SELECT id_clase, nombre_profesor, nombre_rol FROM claustro
JOIN profesores ON claustro.id_profesor = profesores.id_profesor
JOIN roles ON claustro.id_rol = roles.id_rol;

-- Ver qué profesor, qué clase, qué campus, y qué vertical corresponde a cada alumno
SELECT 
    a.nombre_alumno,
    p.nombre_profesor,
    c.id_clase,
    ca.nombre_campus,
    v.nombre_vertical
FROM 
    historico_alumnado ha
JOIN 
    alumnos a ON ha.id_alumno = a.id_alumno
JOIN 
    verticales v ON ha.id_vertical = v.id_vertical
JOIN 
    clases c ON ha.id_clase = c.id_clase
JOIN 
    campuses ca ON c.id_campus = ca.id_campus
JOIN 
    claustro cl ON c.id_clase = cl.id_clase
JOIN 
    profesores p ON cl.id_profesor = p.id_profesor;

-- Comprobar notas y verticales
SELECT 
	alumnos.id_alumno,
	alumnos.nombre_alumno,
	calificaciones.calificacion,
	verticales.nombre_vertical
	
FROM alumnos
INNER JOIN proyectos_notas ON proyectos_notas.id_alumno = alumnos.id_alumno
INNER JOIN calificaciones ON proyectos_notas.id_nota = calificaciones.id_nota
INNER JOIN historico_alumnado ON alumnos.id_alumno = historico_alumnado.id_alumno
INNER JOIN verticales ON verticales.id_vertical = historico_alumnado.id_vertical
WHERE alumnos.id_alumno = 1

-- Comrobar toda la infotmación de un alumno
SELECT 
    a.nombre_alumno,
    ha.id_vertical,
    v.nombre_vertical,
    ha.id_clase,
    c.id_promocion,
    c.id_campus,
    ca.nombre_campus,
    p.mes_promocion,
    p.fecha_comienzo,
    m.nombre_modalidad
FROM 
    historico_alumnado ha
JOIN 
    alumnos a ON ha.id_alumno = a.id_alumno
JOIN 
    verticales v ON ha.id_vertical = v.id_vertical
JOIN 
    clases c ON ha.id_clase = c.id_clase
JOIN 
    campuses ca ON c.id_campus = ca.id_campus
JOIN 
    promocion p ON c.id_promocion = p.id_promocion
JOIN 
    modalidades m ON ha.id_modalidad = m.id_modalidad
WHERE 
    a.nombre_alumno = 'Jafet Casals';
