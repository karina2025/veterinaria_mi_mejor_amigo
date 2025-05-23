CREATE DATABASE veterinaria;
USE veterinaria;

-- 1. Selección simple con alias en campos
SELECT nombre_completo AS dueño, telefono AS contacto FROM Dueno;

-- 2. JOIN para ver mascotas y su dueño
SELECT m.nombre AS mascota, d.nombre_completo AS dueño
FROM Mascota m
JOIN Dueno d ON m.cedula_dueno = d.cedula;

-- 3. Historial de visitas de una mascota con JOIN
SELECT v.fecha, s.nombre AS servicio, s.precio_base
FROM Visita v
JOIN Servicio s ON v.id_servicio = s.id_servicio
WHERE v.id_mascota = 1
ORDER BY v.fecha DESC;

-- 4. Contar mascotas por dueño (función de agregación)
SELECT d.nombre_completo, COUNT(m.id_mascota) AS total_mascotas
FROM Dueno d
LEFT JOIN Mascota m ON d.cedula = m.cedula_dueno
GROUP BY d.cedula;

-- 5. Promedio de edad de mascotas vacunadas
SELECT AVG(edad) AS edad_promedio_vacunadas FROM Mascota WHERE vacunada = TRUE;

-- 6. Servicio más caro
SELECT nombre, MAX(precio_base) AS precio_maximo FROM Servicio;

-- 7. Uso de CONCAT para nombre completo con teléfono
SELECT CONCAT(nombre_completo, ' - Tel: ', telefono) AS contacto FROM Dueno;

-- 8. Uso de UPPER y LOWER
SELECT UPPER(nombre) AS nombre_mayuscula, LOWER(nombre) AS nombre_minuscula FROM Mascota;

-- 9. Uso de LENGTH, SUBSTRING, TRIM
SELECT nombre,
       LENGTH(nombre) AS largo_nombre,
       SUBSTRING(nombre, 1, 3) AS inicio_nombre,
       TRIM(nombre) AS nombre_trim
FROM Mascota;

-- 10. ROUND en precios
SELECT nombre, ROUND(precio_base, 0) AS precio_redondeado FROM Servicio;

-- 11. IF en campo para mostrar estado vacunado
SELECT nombre, IF(vacunada, 'Sí', 'No') AS estado_vacunado FROM Mascota;

-- 12. Consulta con alias en subconsulta: total tratamientos por visita
SELECT v.id_visita, 
       (SELECT COUNT(*) FROM Tratamiento t WHERE t.id_visita = v.id_visita) AS total_tratamientos
FROM Visita v;

-- 13. Creación de tabla a partir de consulta (tabla temporal de dueños y cantidad de mascotas)
CREATE TABLE DuenoMascotas AS
SELECT d.cedula, d.nombre_completo, COUNT(m.id_mascota) AS total_mascotas
FROM Dueno d
LEFT JOIN Mascota m ON d.cedula = m.cedula_dueno
GROUP BY d.cedula;

-- 14. Ordenar dueños por número de mascotas descendente
SELECT d.nombre_completo, COUNT(m.id_mascota) AS total_mascotas
FROM Dueno d
LEFT JOIN Mascota m ON d.cedula = m.cedula_dueno
GROUP BY d.cedula
ORDER BY total_mascotas DESC;

-- 15. Mostrar visitas con tratamiento y sin tratamiento (uso de LEFT JOIN)
SELECT v.id_visita, m.nombre AS mascota, s.nombre AS servicio, t.nombre AS tratamiento
FROM Visita v
JOIN Mascota m ON v.id_mascota = m.id_mascota
JOIN Servicio s ON v.id_servicio = s.id_servicio
LEFT JOIN Tratamiento t ON v.id_visita = t.id_visita;
