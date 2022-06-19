SQL> -- Utilizaremos las siguientes dos tablas: MAQUINA y OBRERO
SQL> DESCRIBE MAQUINA;
 Nombre                                    �Nulo?   Tipo
 ----------------------------------------- -------- ----------------------------
 ID_MAQUINA                                NOT NULL NUMBER(3)
 NOMBRE                                             VARCHAR2(15)
 TIPO                                               VARCHAR2(10)

SQL> DESCRIBE OBRERO;
 Nombre                                    �Nulo?   Tipo
 ----------------------------------------- -------- ----------------------------
 ID_OBRERO                                 NOT NULL NUMBER(3)
 NOMBRE                                             VARCHAR2(20)
 APELLIDO                                           VARCHAR2(20)
 ID_CLASIFICACION                                   NUMBER(2)
 ID_MAQUINA                                         NUMBER(3)
 ID_OBRA                                            NUMBER(3)
 FECHA_INGRESO                                      DATE
 ID_EDO                                             NUMBER(2)

SQL> -- De MAQUINA solo nos interesa las columnas ID_MAQUINA y NOMBRE
SQL> -- De OBRERO solo nos interesa NOMBRE, APELLIDO e ID_MAQUINA
SQL> SELECT COUNT(*) FROM MAQUINA;

  COUNT(*)                                                                      
----------                                                                      
        10                                                                      

SQL> SELECT COUNT(*) FROM OBRERO;

  COUNT(*)                                                                      
----------                                                                      
        50                                                                      

SQL> -- La instruccion COUNT nos permite saber la cantidad de registros que hay en una tabla.
SQL> -- Tenemos 50 obreros y 10 maquinas.
SQL> 
SQL> -- Para ver los tipos de JOIN pensemos que la tabla A es OBRERO y la B es MAQUINA.
SQL> -- La columna en comun es ID_MAQUINA, a partir de ella sabremos si hay o no coincidencia.
SQL> 
SQL> -- ************ LEFT JOIN ************
SQL> -- Vamos a ver a todos nuestros obreros y si tienen o no una maquina asignada
SQL> SELECT O.NOMBRE, O.APELLIDO, M.NOMBRE AS MAQUINA
  2  FROM OBRERO O LEFT JOIN MAQUINA M
  3  ON O.ID_MAQUINA = M.ID_MAQUINA;

NOMBRE               APELLIDO             MAQUINA                               
-------------------- -------------------- ---------------                       
Lorenzo              Cordero              DRAGAS                                
Celestino            Aguilar              MOTOVOLQUETE                          
Jesus                Granados             DRAGAS                                
Emmanuel             Ponce                ELECTRICAS                            
Cecilia              Perez                NEUMATICAS                            
David                Lopez                RETROESCABADORA                       
Maria                Dolores              MOTOVOLQUETE                          
Enrique              Martinez             MOTOVOLQUETE                          
Pablo                Quintana             RETROESCABADORA                       
Lucia                Gutierrez            TRACTOR                               
Monica               Pe�a                                                       
Victor               Suarez               CISTERNA                              
Sergio               Raigoza              CISTERNA                              
Juan                 Lopez                MOTOVOLQUETE                          
Pablo                Araiza               ELECTRICAS                            
Jorge                Gomez                TRACTOR                               
Hector               Solano               TRACTOR                               
Fernanda             Castro               CISTERNA                              
Antonio              Rioja                ESCABADORA                            
Enrique              Blozano              MOTOVOLQUETE                          
Juana                Alvez                                                      
David                Rivero               NEUMATICAS                            
Esteban              Silva                                                      
Jesus                Palma                CISTERNA                              
Mauricio             Gestido              RETROESCABADORA                       
Quirino              Gonzalez             ELECTRICAS                            
Angeles              Cruz                 CISTERNA                              
Mario                Hernandez                                                  
Marco                Perea                                                      
Alicia               Quintero             NEUMATICAS                            
JOse                 Rosas                                                      
Carlos               Vivanco                                                    
Gerardo              Gonzalez             MOTOVOLQUETE                          
Walter               Miranda              CISTERNA                              
Maria                Sosa                 CISTERNA                              
Cristian             Monroy               RETROESCABADORA                       
Ignacio              Mendez                                                     
Jaime                Salazar              NEUMATICAS                            
Mariana              Estevez                                                    
Gibran               Cruz                 NEUMATICAS                            
Gabriel              Ledesma              DRAGAS                                
Cristian             Nasa                 ESCABADORA                            
Diana                Saravia              RETROESCABADORA                       
Laura                Soria                                                      
Leticia              Costa                DRAGAS                                
Hector               Lopez                                                      
Jose                 Pelayo               ELECTRICAS                            
Mario                Garcia               DRAGAS                                
Juvenal              Garcia                                                     
Francisco            Serrano              TRACTOR                               

50 filas seleccionadas.

SQL> 
SQL> -- ************ RIGHT JOIN ************
SQL> -- Ahora obtendremos todos los registros de B tengan o no coincidencia con A
SQL> SELECT O.NOMBRE, O.APELLIDO, M.NOMBRE AS MAQUINA
  2  FROM OBRERO O RIGHT JOIN MAQUINA M
  3  ON O.ID_MAQUINA = M.ID_MAQUINA;

NOMBRE               APELLIDO             MAQUINA                               
-------------------- -------------------- ---------------                       
Antonio              Rioja                ESCABADORA                            
Cristian             Nasa                 ESCABADORA                            
Mauricio             Gestido              RETROESCABADORA                       
David                Lopez                RETROESCABADORA                       
Pablo                Quintana             RETROESCABADORA                       
Cristian             Monroy               RETROESCABADORA                       
Diana                Saravia              RETROESCABADORA                       
Mario                Garcia               DRAGAS                                
Lorenzo              Cordero              DRAGAS                                
Jesus                Granados             DRAGAS                                
Gabriel              Ledesma              DRAGAS                                
Leticia              Costa                DRAGAS                                
Juan                 Lopez                MOTOVOLQUETE                          
Enrique              Martinez             MOTOVOLQUETE                          
Maria                Dolores              MOTOVOLQUETE                          
Celestino            Aguilar              MOTOVOLQUETE                          
Gerardo              Gonzalez             MOTOVOLQUETE                          
Enrique              Blozano              MOTOVOLQUETE                          
Francisco            Serrano              TRACTOR                               
Hector               Solano               TRACTOR                               
Lucia                Gutierrez            TRACTOR                               
Jorge                Gomez                TRACTOR                               
Jesus                Palma                CISTERNA                              
Fernanda             Castro               CISTERNA                              
Victor               Suarez               CISTERNA                              
Maria                Sosa                 CISTERNA                              
Walter               Miranda              CISTERNA                              
Angeles              Cruz                 CISTERNA                              
Sergio               Raigoza              CISTERNA                              
Alicia               Quintero             NEUMATICAS                            
Cecilia              Perez                NEUMATICAS                            
Gibran               Cruz                 NEUMATICAS                            
Jaime                Salazar              NEUMATICAS                            
David                Rivero               NEUMATICAS                            
Pablo                Araiza               ELECTRICAS                            
Quirino              Gonzalez             ELECTRICAS                            
Emmanuel             Ponce                ELECTRICAS                            
Jose                 Pelayo               ELECTRICAS                            
                                          MOTOTRAILAS                           
                                          DUMPERS                               

40 filas seleccionadas.

SQL> 
SQL> -- ************ FULL JOIN ************
SQL> -- Ya vimos todos los obreros y maquinas de manera separada, pero ahora juntaremos ambos resultados
SQL> SELECT O.NOMBRE, O.APELLIDO, M.NOMBRE AS MAQUINA
  2  FROM OBRERO O FULL JOIN MAQUINA M
  3  ON O.ID_MAQUINA = M.ID_MAQUINA;

NOMBRE               APELLIDO             MAQUINA                               
-------------------- -------------------- ---------------                       
Lorenzo              Cordero              DRAGAS                                
Celestino            Aguilar              MOTOVOLQUETE                          
Jesus                Granados             DRAGAS                                
Emmanuel             Ponce                ELECTRICAS                            
Cecilia              Perez                NEUMATICAS                            
David                Lopez                RETROESCABADORA                       
Maria                Dolores              MOTOVOLQUETE                          
Enrique              Martinez             MOTOVOLQUETE                          
Pablo                Quintana             RETROESCABADORA                       
Lucia                Gutierrez            TRACTOR                               
Monica               Pe�a                                                       
Victor               Suarez               CISTERNA                              
Sergio               Raigoza              CISTERNA                              
Juan                 Lopez                MOTOVOLQUETE                          
Pablo                Araiza               ELECTRICAS                            
Jorge                Gomez                TRACTOR                               
Hector               Solano               TRACTOR                               
Fernanda             Castro               CISTERNA                              
Antonio              Rioja                ESCABADORA                            
Enrique              Blozano              MOTOVOLQUETE                          
Juana                Alvez                                                      
David                Rivero               NEUMATICAS                            
Esteban              Silva                                                      
Jesus                Palma                CISTERNA                              
Mauricio             Gestido              RETROESCABADORA                       
Quirino              Gonzalez             ELECTRICAS                            
Angeles              Cruz                 CISTERNA                              
Mario                Hernandez                                                  
Marco                Perea                                                      
Alicia               Quintero             NEUMATICAS                            
JOse                 Rosas                                                      
Carlos               Vivanco                                                    
Gerardo              Gonzalez             MOTOVOLQUETE                          
Walter               Miranda              CISTERNA                              
Maria                Sosa                 CISTERNA                              
Cristian             Monroy               RETROESCABADORA                       
Ignacio              Mendez                                                     
Jaime                Salazar              NEUMATICAS                            
Mariana              Estevez                                                    
Gibran               Cruz                 NEUMATICAS                            
Gabriel              Ledesma              DRAGAS                                
Cristian             Nasa                 ESCABADORA                            
Diana                Saravia              RETROESCABADORA                       
Laura                Soria                                                      
Leticia              Costa                DRAGAS                                
Hector               Lopez                                                      
Jose                 Pelayo               ELECTRICAS                            
Mario                Garcia               DRAGAS                                
Juvenal              Garcia                                                     
Francisco            Serrano              TRACTOR                               
                                          DUMPERS                               
                                          MOTOTRAILAS                           

52 filas seleccionadas.

SQL> 
SQL> -- ************ INNER JOIN ************
SQL> -- Por ultimo, ahora solo queremos los obreros con maquina asignada.
SQL> SELECT O.NOMBRE, O.APELLIDO, M.NOMBRE AS NOMBRE_MAQUINA
  2  FROM OBRERO O INNER JOIN MAQUINA M
  3  ON O.ID_MAQUINA = M.ID_MAQUINA;

NOMBRE               APELLIDO             NOMBRE_MAQUINA                        
-------------------- -------------------- ---------------                       
Lorenzo              Cordero              DRAGAS                                
Celestino            Aguilar              MOTOVOLQUETE                          
Jesus                Granados             DRAGAS                                
Emmanuel             Ponce                ELECTRICAS                            
Cecilia              Perez                NEUMATICAS                            
David                Lopez                RETROESCABADORA                       
Maria                Dolores              MOTOVOLQUETE                          
Enrique              Martinez             MOTOVOLQUETE                          
Pablo                Quintana             RETROESCABADORA                       
Lucia                Gutierrez            TRACTOR                               
Victor               Suarez               CISTERNA                              
Sergio               Raigoza              CISTERNA                              
Juan                 Lopez                MOTOVOLQUETE                          
Pablo                Araiza               ELECTRICAS                            
Jorge                Gomez                TRACTOR                               
Hector               Solano               TRACTOR                               
Fernanda             Castro               CISTERNA                              
Antonio              Rioja                ESCABADORA                            
Enrique              Blozano              MOTOVOLQUETE                          
David                Rivero               NEUMATICAS                            
Jesus                Palma                CISTERNA                              
Mauricio             Gestido              RETROESCABADORA                       
Quirino              Gonzalez             ELECTRICAS                            
Angeles              Cruz                 CISTERNA                              
Alicia               Quintero             NEUMATICAS                            
Gerardo              Gonzalez             MOTOVOLQUETE                          
Walter               Miranda              CISTERNA                              
Maria                Sosa                 CISTERNA                              
Cristian             Monroy               RETROESCABADORA                       
Jaime                Salazar              NEUMATICAS                            
Gibran               Cruz                 NEUMATICAS                            
Gabriel              Ledesma              DRAGAS                                
Cristian             Nasa                 ESCABADORA                            
Diana                Saravia              RETROESCABADORA                       
Leticia              Costa                DRAGAS                                
Jose                 Pelayo               ELECTRICAS                            
Mario                Garcia               DRAGAS                                
Francisco            Serrano              TRACTOR                               

38 filas seleccionadas.

SQL> -- Sabemos que hay 50 obreros, pero en la consulta solo obtenemos 38, ahora sabemos que hay 12 obreros que no tienen una maquina asignada.
SQL> 
SQL> 
SQL> 
SQL> -- Con las consultas realizadas anteriormente sabemos la maquina que utiliza cada obrero, si hay algun obrero que no tenga maquina y si hay alguna maquina no asignada.
SQL> -- Como se menciono en el README, podemos poner una condicion para obtener aquellos registros que no coinciden.
SQL> 
SQL> -- *********** LEFT JOIN CON COINCIDENCIA ***********
SQL> -- Vamos a obtener aquellos obreros que no tienen maquina asignada, para ello la clave de la tabla B debe ser nula
SQL> SELECT O.NOMBRE, O.APELLIDO, M.NOMBRE AS MAQUINA
  2  FROM OBRERO O LEFT JOIN MAQUINA M
  3  ON O.ID_MAQUINA = M.ID_MAQUINA
  4  WHERE M.ID_MAQUINA IS NULL;

NOMBRE               APELLIDO             MAQUINA                               
-------------------- -------------------- ---------------                       
Monica               Pe�a                                                       
Juana                Alvez                                                      
Esteban              Silva                                                      
Mario                Hernandez                                                  
Marco                Perea                                                      
JOse                 Rosas                                                      
Carlos               Vivanco                                                    
Ignacio              Mendez                                                     
Mariana              Estevez                                                    
Laura                Soria                                                      
Hector               Lopez                                                      
Juvenal              Garcia                                                     

12 filas seleccionadas.

SQL> 
SQL> -- *********** RIGHT JOIN CON COINCIDENCIA ***********
SQL> -- Las maquinas que no han sido asignadas
SQL> SELECT O.NOMBRE, O.APELLIDO, M.NOMBRE AS MAQUINA
  2  FROM OBRERO O RIGHT JOIN MAQUINA M
  3  ON O.ID_MAQUINA = M.ID_MAQUINA
  4  WHERE O.ID_MAQUINA IS NULL;

NOMBRE               APELLIDO             MAQUINA                               
-------------------- -------------------- ---------------                       
                                          MOTOTRAILAS                           
                                          DUMPERS                               

SQL> 
SQL> -- *********** FULL JOIN CON COINCIDENCIA ***********
SQL> -- Podemos juntar los resultados anteriores
SQL> SELECT O.NOMBRE, O.APELLIDO, M.NOMBRE AS MAQUINA
  2  FROM OBRERO O FULL JOIN MAQUINA M
  3  ON O.ID_MAQUINA = M.ID_MAQUINA
  4  WHERE O.ID_MAQUINA IS NULL OR M.ID_MAQUINA IS NULL;

NOMBRE               APELLIDO             MAQUINA                               
-------------------- -------------------- ---------------                       
Monica               Pe�a                                                       
Juana                Alvez                                                      
Esteban              Silva                                                      
Mario                Hernandez                                                  
Marco                Perea                                                      
JOse                 Rosas                                                      
Carlos               Vivanco                                                    
Ignacio              Mendez                                                     
Mariana              Estevez                                                    
Laura                Soria                                                      
Hector               Lopez                                                      
Juvenal              Garcia                                                     
                                          DUMPERS                               
                                          MOTOTRAILAS                           

14 filas seleccionadas.

SQL> 
SQL> 
SQL> 
SQL> -- Ahora sabemos como hacer consultas un poco m�s complejas, pero que nos devuelven informacion importante