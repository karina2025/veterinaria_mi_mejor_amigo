# veterinaria_mi_mejor_amigo

Este proyecto contiene el diseño y desarrollo de una base de datos relacional para la veterinaria **“Mi Mejor Amigo”**, con el objetivo de ayudar a organizar de manera eficiente la información de dueños, mascotas, servicios, visitas y tratamientos.

---

## 📁 Estructura de archivos

| Archivo             | Descripción |
|---------------------|-------------|
| `estructura.sql`    | Contiene las instrucciones `CREATE TABLE` con las claves primarias, foráneas y restricciones necesarias. |
| `datos.sql`         | Inserta datos de ejemplo para poblar todas las tablas (dueños, mascotas, servicios, visitas y tratamientos). |
| `consultas.sql`     | Contiene 15 consultas SQL que demuestran el uso de funciones, alias, subconsultas, funciones de texto y agregación. |

---

## 📌 Requerimientos cubiertos

✅ Registro de Dueños  
✅ Registro de Mascotas  
✅ Registro y detalle de Servicios  
✅ Registro de Visitas por mascota y servicio  
✅ Tratamientos asociados a Visitas  
✅ Historial completo de visitas por mascota  

---

## 🧩 Tecnologías usadas

- **MySQL** 8+
- **SQL Workbench / Visual Studio Code** para ejecución de scripts
- **Draw.io 

---

## 🔎 Consultas destacadas (`consultas.sql`)

El archivo incluye consultas como:

- Creación de tabla a partir de una consulta
- Alias en campos y subconsultas
- Funciones de texto (`UPPER`, `LOWER`, `TRIM`, etc.)
- Funciones numéricas y de agregación (`COUNT`, `AVG`, `MAX`, `ROUND`, etc.)
- Uso de `IF`, `CONCAT`, `SUBSTRING`
- `JOIN`, `GROUP BY`, `ORDER BY`
