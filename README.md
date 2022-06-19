# Bases de Datos: JOIN

Definición
--------------------------------------------------------------------------------------------------------------------------------------------------------
Es la combinación de dos o más tablas al realizar una consulta. Para hacer la combinación es necesaria una columna en común en las tablas.

Antecedentes
--------------------------------------------------------------------------------------------------------------------------------------------------------
[DQL](https://github.com/BarrigueteHector/Bases-de-Datos-DQL): SELECT.

Desarrollo
--------------------------------------------------------------------------------------------------------------------------------------------------------
Existen 4 tipos de **JOIN**, pensemos que tenemos una tabla A y una B, obviamente tienen una columna en común:

1. **LEFT JOIN**: Nos devuelve todos los registros de **A** y las coincidencias con la **B**.
2. **RIGHT JOIN**: Nos devuelve todos los registros de **B** y las coincidencias con **A**.
3. **INNER JOIN**: Nos devuelve solo los registros con coincidencias entre **A** y **B**.
4. **FULL JOIN o FULL OUTER JOIN**: Nos devuelve todos los registros de ambas tablas.

Cabe mencionar que existe una variación para los anteriores **JOIN** (excepto **INNER**). Las versiones anteriores incluyen los registros con coindicencia entre ambas tablas, podemos agregar una condición para que en:
- **LEFT JOIN**: Solo nos muestre los registros de **A** que no tienen coincidencia con la tabla **B**.
- **RIGHT JOIN**: Solo nos muestre los registros de **B** que no tienen coindicencia con la tabla **A**.
- **FULL JOIN**: Solo nos muestre los registros de ambas tablas, pero sin las coincidencias.

Aunque a simple vista puede parecer muy complicado, es algo bastante sencillo y de gran utilidad, ya que ahora podremos realizar mejores consultas.

Se agregó el archivo [imagen](https://github.com/BarrigueteHector/Bases-de-Datos-JOIN/blob/main/image.jpeg) en el cual de forma gráfica podemos ver como es el funcionamiento de los **JOIN**, ademas incluye las lineas de código para cada **JOIN**.

En el archivo [Ejemplo](https://github.com/BarrigueteHector/Bases-de-Datos-JOIN/blob/main/ejemplo.sql) se encuentra un ejemplo de todos los JOIN mencionados anteriormente.

En el archivo [Tipos](https://github.com/BarrigueteHector/Bases-de-Datos-JOIN/blob/main/tipos.sql) se muestra una guía de como hacer cada uno, ***NO SE INCLUYE NINGUN EJEMPLO, SOLO SON GUÍAS PARA HACERLOS***.

NOTAS
--------------------------------------------------------------------------------------------------------------------------------------------------------
**NOTA #1**: Los repositorios **Bases de Datos** están hechos con base en el curso de Bases de Datos de la Facultad de Ingeniería de la UNAM. 
