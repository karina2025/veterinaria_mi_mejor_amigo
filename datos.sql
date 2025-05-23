CREATE DATABASE veterinaria;
USE veterinaria;

-- Insertar Dueños
INSERT INTO Dueno (cedula, nombre_completo, telefono, direccion) VALUES
('1234567890', 'Ana Pérez', '3001234567', 'Calle 123 #45-67'),
('0987654321', 'Luis Gómez', '3107654321', 'Carrera 10 #20-30'),
('1122334455', 'María López', '3123456789', 'Avenida Siempre Viva 742'),
('2233445566', 'Carlos Martínez', '3209876543', 'Calle Falsa 123'),
('3344556677', 'Laura Torres', '3156789012', 'Zona Norte #5-12');

-- Insertar Mascotas
INSERT INTO Mascota (nombre, especie, raza, edad, sexo, vacunada, cedula_dueno) VALUES
('Firulais', 'Perro', 'Labrador', 3, 'M', TRUE, '1234567890'),
('Michi', 'Gato', 'Siames', 2, 'F', TRUE, '1234567890'),
('Rex', 'Perro', 'Pastor Alemán', 5, 'M', FALSE, '0987654321'),
('Luna', 'Perro', 'Golden Retriever', 1, 'F', TRUE, '1122334455'),
('Simba', 'Gato', 'Persa', 4, 'M', FALSE, '2233445566'),
('Nina', 'Perro', 'Beagle', 6, 'F', TRUE, '3344556677'),
('Coco', 'Perro', 'Bulldog', 2, 'M', TRUE, '3344556677'),
('Max', 'Gato', 'Maine Coon', 3, 'M', TRUE, '2233445566'),
('Bella', 'Perro', 'Chihuahua', 4, 'F', FALSE, '1122334455'),
('Toby', 'Perro', 'Dálmata', 7, 'M', TRUE, '0987654321');

-- Insertar Servicios
INSERT INTO Servicio (nombre, descripcion, precio_base) VALUES
('Baño', 'Servicio de baño completo para mascotas', 25000.00),
('Corte de uñas', 'Corte y limado de uñas', 8000.00),
('Consulta médica', 'Consulta general con veterinario', 40000.00),
('Desparasitación', 'Tratamiento antiparasitario', 30000.00),
('Vacunación', 'Aplicación de vacuna para mascota', 35000.00);

-- Insertar Visitas
INSERT INTO Visita (id_mascota, id_servicio, fecha) VALUES
(1, 1, '2025-05-01'),
(2, 3, '2025-05-02'),
(3, 4, '2025-05-03'),
(4, 2, '2025-05-04'),
(5, 5, '2025-05-05'),
(6, 1, '2025-05-06'),
(7, 3, '2025-05-07'),
(8, 4, '2025-05-08'),
(9, 5, '2025-05-09'),
(10, 2, '2025-05-10');

-- Insertar Tratamientos
INSERT INTO Tratamiento (id_visita, nombre, observaciones) VALUES
(2, 'Antibiótico', 'Tomar 1 pastilla diaria durante 7 días'),
(3, 'Antiparasitario', 'Administrar cada 3 meses'),
(5, 'Vacuna antirrábica', 'Repetir en 1 año'),
(7, 'Vitaminas', 'Suplemento diario en comida'),
(9, 'Tratamiento dermatológico', 'Aplicar crema por 2 semanas');
