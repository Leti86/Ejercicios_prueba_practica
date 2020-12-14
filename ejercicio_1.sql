SELECT * FROM siteeu_test.alumnos;



SELECT a.Nombre, p.nombre FROM alumnos as a 
JOIN examenes as e ON a.Id = e.id_alumno 
JOIN provincias as p ON p.id = a.id_provincia 
WHERE e.nota < 5 GROUP BY a.Nombre, p.nombre 
HAVING count(a.nombre)>=(SELECT COUNT(*) FROM asignaturas);



