CREATE DATABASE veterinaria;
USE veterinaria;


-- Tabla Dueños
CREATE TABLE duenios (
    cedula VARCHAR(15) PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(150)
);

-- Tabla Mascotas
CREATE TABLE mascotas (
    id_mascota INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(30),
    raza VARCHAR(50),
    edad INT,
    sexo ENUM('M', 'F') NOT NULL,
    vacunada BOOLEAN NOT NULL DEFAULT FALSE,
    cedula_dueno VARCHAR(15),
    FOREIGN KEY (cedula_dueno) REFERENCES duenios(cedula)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Tabla Servicios
CREATE TABLE servicios (
    id_servicio INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    precio_base DECIMAL(10,2) NOT NULL
);

-- Tabla Visitas
CREATE TABLE visitas (
    id_visita INT AUTO_INCREMENT PRIMARY KEY,
    id_mascota INT,
    id_servicio INT,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_mascota) REFERENCES mascotas(id_mascota)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_servicio) REFERENCES servicios(id_servicio)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Tabla Tratamientos
CREATE TABLE tratamientos (
    id_tratamiento INT AUTO_INCREMENT PRIMARY KEY,
    id_visita INT,
    nombre VARCHAR(100) NOT NULL,
    observaciones TEXT,
    FOREIGN KEY (id_visita) REFERENCES visitas(id_visita)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);





