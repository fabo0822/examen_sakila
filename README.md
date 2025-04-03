
## Descripción del Proyecto

El objetivo es trabajar con la base de datos Sakila, utilizada para la gestión de un sistema de alquiler de películas. Se han implementado consultas SQL, funciones, triggers y eventos para obtener información relevante sobre el negocio, automatizar procesos y mejorar la integridad de los datos.

## Requisitos del Sistema
Para ejecutar este proyecto se necesita:
- MySQL Server versión 8.0 o superior
- MySQL Workbench o cualquier cliente de MySQL
- Git para clonar el repositorio

## Instalación y Configuración
Sigue estos pasos para configurar y ejecutar el proyecto:

1. **Clonar el repositorio:**
   ```sh
   git clone <URL-DEL-REPOSITORIO>
   cd <NOMBRE-DEL-REPOSITORIO>
   ```

2. **Cargar la base de datos Sakila:**
   - Descargar e importar el esquema Sakila desde el sitio oficial de MySQL o desde los archivos proporcionados en el repositorio.
   - En MySQL Workbench o en la línea de comandos, ejecutar:
     ```sh
     mysql -u usuario -p < ddl.sql
     mysql -u usuario -p < dml.sql
     ```

3. **Ejecutar las consultas SQL:**
   - Cargar y ejecutar:
     ```sh
     mysql -u usuario -p < dql_select.sql
     mysql -u usuario -p < dql_funciones.sql
     mysql -u usuario -p < dql_triggers.sql
     mysql -u usuario -p < dql_eventos.sql
     ```

## Estructura del Repositorio
El repositorio está organizado de la siguiente manera:
```
├── ddl.sql                 # Creación de la base de datos y tablas
├── dml.sql                 # Inserción de datos
├── dql_select.sql          # Consultas SQL
├── dql_funciones.sql       # Funciones SQL
├── dql_triggers.sql        # Triggers SQL
├── dql_eventos.sql         # Eventos SQL
├── Readme.md               # Documentación del proyecto
├── Diagrama.jpg            # Modelo de datos de la base de datos
```

## Archivos SQL
Cada archivo contiene:
- `ddl.sql`: Creación de la base de datos y definición de las tablas con sus relaciones.
- `dml.sql`: Inserción de datos en las tablas.
- `dql_select.sql`: Consultas SQL solicitadas en el examen.
- `dql_funciones.sql`: Definición de funciones personalizadas.
- `dql_triggers.sql`: Implementación de triggers para automatizar procesos.
- `dql_eventos.sql`: Configuración de eventos en la base de datos.

## Consideraciones Finales
- Se recomienda revisar los comentarios dentro de los archivos SQL para entender la lógica de cada implementación.
- Asegurarse de ejecutar los scripts en el orden indicado para evitar errores de dependencias.
- Para cualquier duda, contactar al instructor del curso.


