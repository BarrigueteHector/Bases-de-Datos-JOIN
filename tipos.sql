-- ************ JOIN'S sin condicion *************
    -- ************ LEFT JOIN ************
    -- Obtenemos todos los registros de la tabla A, tengan o no un registro en la tabla B
    SELECT <COLUMN_NAME>, ..., <COLUMN_NAME> 
    FROM <TABLE_A> LEFT JOIN <TABLE_B>
    ON <TABLE_A_KEY> = <TABLE_B_KEY>; 

    -- ************ RIGHT JOIN ************
    -- Obtenemos todos los registros de la tabla B, tengan o no un registro en la tabla A
    SELECT <COLUMN_NAME>, ..., <COLUMN_NAME> 
    FROM <TABLE_A> RIGHT JOIN <TABLE_B>
    ON <TABLE_A_KEY> = <TABLE_B_KEY>; 

    -- ************ FULL JOIN ************
    -- Obtenemos todos los registros, tengan o no un registro en la otra tabla. En palabras simples, obtenemos los resultados de los dos JOINs anteriores
    SELECT <COLUMN_NAME>, ..., <COLUMN_NAME> 
    FROM <TABLE_A> FULL JOIN <TABLE_B>
    ON <TABLE_A_KEY> = <TABLE_B_KEY>; 

    -- ************ INNER JOIN ************
    -- Obtenemos solo los registros que tengan un registro en la otra tabla.
    SELECT <COLUMN_NAME>, ..., <COLUMN_NAME> 
    FROM <TABLE_A> INNER JOIN <TABLE_B>
    ON <TABLE_A_KEY> = <TABLE_B_KEY>; 

-- ************ JOIN'S con condicion *************
    -- ************ LEFT JOIN ************
    -- Obtenemos los registros de A que no tengan un registro en B
    SELECT <COLUMN_NAME>, ..., <COLUMN_NAME> 
    FROM <TABLE_A> LEFT JOIN <TABLE_B>
    ON <TABLE_A_KEY> = <TABLE_B_KEY>
    WHERE <TABLE_B_KEY> IS NULL; 

    -- ************ RIGHT JOIN ************
    -- Obtenemos los registros de B que no tengan un registro en A
    SELECT <COLUMN_NAME>, ..., <COLUMN_NAME> 
    FROM <TABLE_A> RIGHT JOIN <TABLE_B>
    ON <TABLE_A_KEY> = <TABLE_B_KEY>
    WHERE <TABLE_A_KEY> IS NULL;; 

    -- ************ FULL JOIN ************
    -- Obtenemos los resultados de los dos anteriores JOIN
    SELECT <COLUMN_NAME>, ..., <COLUMN_NAME> 
    FROM <TABLE_A> FULL JOIN <TABLE_B>
    ON <TABLE_A_KEY> = <TABLE_B_KEY>
    WHERE <TABLE_A_KEY> IS NULL OR <TABLE_B_KEY> IS NULL; 