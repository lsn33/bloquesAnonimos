--=======================================================================================
--=========================== CLASE 2 VARIABLES BIND ====================================
--=======================================================================================
--=======================================================================================
--SET SERVEROUTPUT ON; --> para ver por pantalla
VARIABLE b_porcentaje number; --> Se crea variable 
VARIABLE b_resultado number; --> Se crea variable 
EXEC :b_porcentaje:=1; --> Se asigna valor a la variable bind 

DECLARE 

    v_valor number(5):=100;
BEGIN
    :b_resultado:=v_valor*:b_porcentaje;
END;

PRINT b_resultado

--=======================================================================================
--=========================== CLASE 2 VARIABLES BIND ====================================
--=======================================================================================
--=======================================================================================
--SET SERVEROUTPUT ON; --> para ver por pantalla
VARIABLE b_porcentaje number; --> Se crea variable 
VARIABLE b_resultado number; --> Se crea variable 
EXEC :b_porcentaje:=1; --> Se asigna valor a la variable bind 
--EXEC :b_resultado:=0; 
--===
DECLARE --> Declaración de variables, cursores, etc..

v_direccion VARCHAR(20):='Variable_Test';
v_id_comuna NUMBER;
v_fecha_entrega_propiedad PROPIEDAD.fecha_entrega_propiedad%TYPE;

BEGIN --> Conjuntos de secuencias ejecutables SQL
    SELECT DIRECCION_PROPIEDAD,ID_COMUNA,FECHA_ENTREGA_PROPIEDAD 
        INTO v_direccion,v_id_comuna,v_fecha_entrega_propiedad
        FROM PROPIEDAD
    WHERE NRO_PROPIEDAD=1001;

    DBMS_OUTPUT.PUT_LINE (' ======================================================================== ');    
    DBMS_OUTPUT.PUT_LINE (' =====================Información Propiedad ============================= ');   
    DBMS_OUTPUT.PUT_LINE ('     La dirección es : ' || v_direccion);
    DBMS_OUTPUT.PUT_LINE ('     Su codigo de comuna es: '|| v_id_comuna ||' y su 50% es: ' || (to_number(v_id_comuna) * :b_porcentaje));
    DBMS_OUTPUT.PUT_LINE ('     Fecha entrega propiedad ' ||v_fecha_entrega_propiedad);
    DBMS_OUTPUT.PUT_LINE (' ======================================================================== ');    
    

    DBMS_OUTPUT.PUT_LINE (:b_resultado);
    --:b_porcentaje:=v_id_comuna;
END;

PRINT b_porcentaje
--=======================================================================================
--=========================== CLASE 2 PRUEBAS BIND ======================================
--=======================================================================================
--=======================================================================================
--SET SERVEROUTPUT ON; --> para ver por pantalla

DECLARE --> Declaración de variables, cursores, etc..

v_direccion VARCHAR(20):='Variable_Test';
v_id_comuna NUMBER;
v_fecha_entrega_propiedad PROPIEDAD.fecha_entrega_propiedad%TYPE;

BEGIN --> Conjuntos de secuencias ejecutables SQL

    SELECT DIRECCION_PROPIEDAD,ID_COMUNA,FECHA_ENTREGA_PROPIEDAD 
        INTO v_direccion,v_id_comuna,v_fecha_entrega_propiedad
        FROM PROPIEDAD
    WHERE NRO_PROPIEDAD=1001;
 
    DBMS_OUTPUT.PUT_LINE (' =====================Información Propiedad ============================= ');   
    DBMS_OUTPUT.PUT_LINE ('     VARIABLE BIND : ' || :b_porcentaje);
    DBMS_OUTPUT.PUT_LINE (' ======================================================================== ');    

END;

--=======================================================================================
--=========================== CLASE 2 PRUEBAS BIND  - BLOQUE ANONIMO ANIDADO ============
--=======================================================================================
--=======================================================================================
--SET SERVEROUTPUT ON; --> para ver por pantalla

DECLARE --> Declaración de variables, cursores, etc..

v_direccion VARCHAR(20):='Variable_Test';
v_id_comuna NUMBER;
v_fecha_entrega_propiedad PROPIEDAD.fecha_entrega_propiedad%TYPE;

BEGIN --> Conjuntos de secuencias ejecutables SQL
            DECLARE --> Declaración de variables, cursores, etc..
            
            v_direccion VARCHAR(20):='Variable_Test';
            v_id_comuna NUMBER;
            v_fecha_entrega_propiedad PROPIEDAD.fecha_entrega_propiedad%TYPE;
            
            BEGIN --> Conjuntos de secuencias ejecutables SQL
            
                SELECT DIRECCION_PROPIEDAD,ID_COMUNA,FECHA_ENTREGA_PROPIEDAD 
                    INTO v_direccion,v_id_comuna,v_fecha_entrega_propiedad
                    FROM PROPIEDAD
                WHERE NRO_PROPIEDAD=1001;
             
                DBMS_OUTPUT.PUT_LINE (' =====================Información Propiedad ============================= ');   
                DBMS_OUTPUT.PUT_LINE ('     VARIABLE BIND : ' || :b_porcentaje);
                DBMS_OUTPUT.PUT_LINE (' ======================================================================== ');    
            
            END;

    SELECT DIRECCION_PROPIEDAD,ID_COMUNA,FECHA_ENTREGA_PROPIEDAD 
        INTO v_direccion,v_id_comuna,v_fecha_entrega_propiedad
        FROM PROPIEDAD
    WHERE NRO_PROPIEDAD=1001;
        
        :b_porcentaje:=100;
    
    DBMS_OUTPUT.PUT_LINE (' =====================Información Propiedad ============================= ');   
    DBMS_OUTPUT.PUT_LINE ('     VARIABLE BIND : ' || :b_porcentaje);
    DBMS_OUTPUT.PUT_LINE (' ======================================================================== ');    

    :b_resultado:=:b_porcentaje;
END;

PRINT b_resultado
--=======================================================================================
--=========================== CLASE 2 ===================================================
--=======================================================================================
--=======================================================================================
--SET SERVEROUTPUT ON; --> para ver por pantalla

DECLARE --> Declaración de variables, cursores, etc..

v_direccion VARCHAR(20):='Variable_Test';
v_id_comuna NUMBER;
v_fecha_entrega_propiedad PROPIEDAD.fecha_entrega_propiedad%TYPE;

BEGIN --> Conjuntos de secuencias ejecutables SQL

    SELECT DIRECCION_PROPIEDAD,ID_COMUNA,FECHA_ENTREGA_PROPIEDAD 
        INTO v_direccion,v_id_comuna,v_fecha_entrega_propiedad
        FROM PROPIEDAD
    WHERE NRO_PROPIEDAD=1001;

    DBMS_OUTPUT.PUT_LINE (' ======================================================================== ');    
    DBMS_OUTPUT.PUT_LINE (' =====================Información Propiedad ============================= ');   
    DBMS_OUTPUT.PUT_LINE ('     La dirección es : ' || v_direccion);
    DBMS_OUTPUT.PUT_LINE ('     Su codigo de comuna es: ' || (to_number(v_id_comuna) + 10));
    DBMS_OUTPUT.PUT_LINE ('     Fecha entrega propiedad ' ||v_fecha_entrega_propiedad);
    DBMS_OUTPUT.PUT_LINE (' ======================================================================== ');    

END;

--=======================================================================================
--=========================== CLASE 2 ===================================================
--=======================================================================================
--=======================================================================================
--SET SERVEROUTPUT ON; --> para ver por pantalla

DECLARE --> Declaración de variables, cursores, etc..

v_direccion VARCHAR(20):='Variable_Test';
v_id_comuna NUMBER;
v_fecha_entrega_propiedad PROPIEDAD.fecha_entrega_propiedad%TYPE;

BEGIN --> Conjuntos de secuencias ejecutables SQL

    DBMS_OUTPUT.PUT_LINE ('RESULTADO DE LA VARIABLE: ' || v_direccion);
    v_direccion:='GATO';
    DBMS_OUTPUT.PUT_LINE ('RESULTADO DE LA VARIABLE: ' || v_direccion);
    
    SELECT DIRECCION_PROPIEDAD,ID_COMUNA,FECHA_ENTREGA_PROPIEDAD 
        INTO v_direccion,v_id_comuna,v_fecha_entrega_propiedad
        FROM PROPIEDAD
    WHERE NRO_PROPIEDAD=1001;

    DBMS_OUTPUT.PUT_LINE (' ======================================================================== ');    
    DBMS_OUTPUT.PUT_LINE (' =====================Información Propiedad ============================= ');   
    DBMS_OUTPUT.PUT_LINE ('     La dirección es : ' || v_direccion);
    DBMS_OUTPUT.PUT_LINE ('     Su codigo de comuna es: ' || (to_number(v_id_comuna) + 10));
    DBMS_OUTPUT.PUT_LINE ('     Fecha entrega propiedad ' ||v_fecha_entrega_propiedad);
    DBMS_OUTPUT.PUT_LINE (' ======================================================================== ');    

END;

SELECT * FROM PROPIEDAD
    
--=======================================================================================
--=========================== CLASE 1 ===================================================
--=======================================================================================
--=======================================================================================
DECLARE --> Declaración de variables, cursores, etc..

v_direccion VARCHAR(20);

BEGIN --> Conjuntos de secuencias ejecutables SQL

    SELECT DIRECCION_PROPIEDAD 
        INTO v_direccion
        FROM PROPIEDAD
    WHERE NRO_PROPIEDAD=1001;
    
    DBMS_OUTPUT.PUT_LINE ('RESULTADO DE LA VARIABLE: ' || v_direccion);
END;

--===========================
--===========================
--===========================
--===========================

DECLARE --> Declaración de variables, cursores, etc..

v_direccion VARCHAR(20);
v_contador number:=1;

BEGIN --> Conjuntos de secuencias ejecutables SQL

    SELECT 'Hola Mundo UNO' 
        INTO v_direccion
        FROM PROPIEDAD
    WHERE NRO_PROPIEDAD=1001;
    
    DBMS_OUTPUT.PUT_LINE ('RESULTADO DE LA VARIABLE: ' || v_direccion);
    
    SELECT 'Hola Mundo DOS' 
        INTO v_direccion
        FROM PROPIEDAD 
    WHERE NRO_PROPIEDAD=1001;

    DBMS_OUTPUT.PUT_LINE ('RESULTADO DE LA VARIABLE: ' || v_direccion);
    
    LOOP
    
    SELECT 'Hola Mundo TRES' 
        INTO v_direccion
        FROM PROPIEDAD 
    WHERE NRO_PROPIEDAD=1001;

    DBMS_OUTPUT.PUT_LINE ('RESULTADO DE LA VARIABLE: ' || v_direccion);
    
     v_contador := v_contador + 1;
     EXIT WHEN v_contador > 10;
     
    END LOOP;
END;


/**
    SELECT DIRECCION_PROPIEDAD 
        INTO v_direccion
        FROM PROPIEDAD 
    WHERE NRO_PROPIEDAD=1001;

END;
*/

/**
SELECT * 
FROM PROPIEDAD 
WHERE NRO_PROPIEDAD=1001
*/


DECLARE --> Declaración de variables, cursores, etc..

v_direccion VARCHAR(20);
v_contador number:=0;
v_contador_filas number:=0;

BEGIN --> Conjuntos de secuencias ejecutables SQL
    
    SELECT 'Hola Mundo DOS' 
        INTO v_direccion
        FROM PROPIEDAD 
    WHERE NRO_PROPIEDAD=1001;
    
    SELECT count(1) 
        INTO v_contador_filas
        FROM PROPIEDAD; 

    DBMS_OUTPUT.PUT_LINE ('Cantidad de registros: ' || v_contador_filas);   
   
    LOOP
    
    SELECT DIRECCION_PROPIEDAD
        INTO v_direccion
        FROM PROPIEDAD
    WHERE NRO_PROPIEDAD=1001;
   -- FETCH FIRST 28 ROWS ONLY;

    DBMS_OUTPUT.PUT_LINE ('RESULTADO DE LA VARIABLE: ' || v_direccion);
    
    v_contador := v_contador + 1;
    DBMS_OUTPUT.PUT_LINE ('Variable Contador: ' || v_contador);
    EXIT  WHEN v_contador >= 28;
     
    END LOOP;
END;


---======

DECLARE

    v_mi_edad NUMBER(2) :=80;
    v_mi_nombre VARCHAR2(20) :='Luis';
    
BEGIN

IF (v_mi_edad < 11) AND (v_mi_nombre = 'Luis') THEN

    DBMS_OUTPUT.PUT_LINE('Yo soy un niño que se llama Luis');   
    ELSE
    DBMS_OUTPUT.PUT_LINE('NO SE CUMPLEN LAS CONDICIONES'); 
    
END IF;

END;

---==============================================================================
---============ Clase 02-06-2025=================================================
---============================================================================== 
---==============================================================================

SELECT * FROM CLIENTE;
SELECT * FROM CREDITO_CLIENTE WHERE NRO_CLIENTE=6;
SELECT * FROM TBL_CREDITO_CLIENTE WHERE NRO_CLIENTE=6 ;


---========================================================
---======= Copia Tabla ====================================
---========================================================
CREATE TABLE TBL_CREDITO_CLIENTE AS (
    SELECT * FROM CREDITO_CLIENTE);
 
---==============================================================================
---======= Bloque Anonimo ================================= 02-06-2025 ==========
---==============================================================================
-- VARIABLES BIND
VAR b_cliente NUMBER
EXEC :b_cliente:=6

DECLARE 
    v_monto_credito number(10);
BEGIN

    SELECT MONTO_CREDITO 
        INTO v_monto_credito
    FROM CREDITO_CLIENTE 
    WHERE NRO_CLIENTE=:b_cliente;
    
    IF v_monto_credito < 700000 THEN
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=MONTO_CREDITO*1.5
        WHERE NRO_CLIENTE=:b_cliente;
    ELSE 
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=MONTO_CREDITO*1.1
        WHERE NRO_CLIENTE=:b_cliente;
    END IF;
COMMIT;
END;

---========================================================
---======= Copia Tabla ====================================
---========================================================

SELECT * FROM CREDITO_CLIENTE WHERE NRO_CLIENTE=6; -- ES LA TABLA ORIGINAL 
SELECT * FROM TBL_CREDITO_CLIENTE WHERE NRO_CLIENTE=6 ;    -- ES DONDE ESTAMOS HACIENDO LA MODIFICACIÓN CON EL BLOQUE ANONIMO
    

---========================================================
---======= Bloque Anonimo 2 ===============================
---======================================================== 
-- VARIABLES BIND
VAR b_cliente NUMBER
EXEC :b_cliente:=15
VAR b_monto_cred NUMBER
EXEC :b_monto_cred:=250000

DECLARE 
    v_monto_credito number(10);
BEGIN

    SELECT MONTO_CREDITO 
        INTO v_monto_credito
    FROM CREDITO_CLIENTE 
    WHERE NRO_CLIENTE=:b_cliente;
    
    IF v_monto_credito < 700000 THEN
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=MONTO_CREDITO*1.5
        WHERE NRO_CLIENTE=:b_cliente;
        
        SELECT MONTO_CREDITO 
            INTO v_monto_credito
        FROM TBL_CREDITO_CLIENTE 
        WHERE NRO_CLIENTE=:b_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Monto Credito aumenta en un 10%. Su nuevo valor es:' || TO_CHAR(v_monto_credito));   
        
    ELSE 
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=MONTO_CREDITO*1.1
        WHERE NRO_CLIENTE=:b_cliente;
        
        SELECT MONTO_CREDITO 
            INTO v_monto_credito
        FROM TBL_CREDITO_CLIENTE 
        WHERE NRO_CLIENTE=:b_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Monto Credito aumenta en un 10%. Su nuevo valor es:' || TO_CHAR(v_monto_credito));  
    END IF;
COMMIT;
END;

---========================================================
---======= Copia Tabla ====================================
---========================================================

SELECT * FROM CREDITO_CLIENTE WHERE NRO_CLIENTE=6; -- ES LA TABLA ORIGINAL 
SELECT * FROM TBL_CREDITO_CLIENTE WHERE NRO_CLIENTE=6 ;    -- ES DONDE ESTAMOS HACIENDO LA MODIFICACIÓN CON EL BLOQUE ANONIMO

SELECT * FROM CREDITO_CLIENTE WHERE NRO_CLIENTE=6; -- ES LA TABLA ORIGINAL 
SELECT * FROM TBL_CREDITO_CLIENTE WHERE NRO_CLIENTE=6 ;    -- ES DONDE ESTAMOS HACIENDO LA MODIFICACIÓN CON EL BLOQUE ANONIMO
    
---========================================================
---======= Bloque Anonimo 3 ===============================
---======================================================== 
-- VARIABLES BIND
VAR b_cliente NUMBER
EXEC :b_cliente:=15
VAR b_monto_cred NUMBER
EXEC :b_monto_cred:=250000

DECLARE 
    v_monto_credito number(10);
BEGIN

    SELECT MONTO_CREDITO 
        INTO v_monto_credito
    FROM CREDITO_CLIENTE 
    WHERE NRO_CLIENTE=:b_cliente;

    --IF v_monto_credito < :250000 THEN    
    IF v_monto_credito < :b_monto_cred THEN
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=MONTO_CREDITO*1.5
        WHERE NRO_CLIENTE=:b_cliente;
        
        SELECT MONTO_CREDITO 
            INTO v_monto_credito
        FROM TBL_CREDITO_CLIENTE 
        WHERE NRO_CLIENTE=:b_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Monto Credito aumenta en un 10%. Su nuevo valor es:' || TO_CHAR(v_monto_credito));   
        
    ELSE 
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=MONTO_CREDITO*1.1
        WHERE NRO_CLIENTE=:b_cliente;
        
        SELECT MONTO_CREDITO 
            INTO v_monto_credito
        FROM TBL_CREDITO_CLIENTE 
        WHERE NRO_CLIENTE=:b_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Monto Credito aumenta en un 10%. Su nuevo valor es:' || TO_CHAR(v_monto_credito));  
    END IF;
COMMIT;
END;

---========================================================
---======= Copia Tabla ====================================
---========================================================

SELECT * FROM CREDITO_CLIENTE WHERE NRO_CLIENTE=6; -- ES LA TABLA ORIGINAL 
SELECT * FROM TBL_CREDITO_CLIENTE WHERE NRO_CLIENTE=6 ;    -- ES DONDE ESTAMOS HACIENDO LA MODIFICACIÓN CON EL BLOQUE ANONIMO

SELECT * FROM CREDITO_CLIENTE WHERE NRO_CLIENTE=15; -- ES LA TABLA ORIGINAL 
SELECT * FROM TBL_CREDITO_CLIENTE WHERE NRO_CLIENTE=15 ;    -- ES DONDE ESTAMOS HACIENDO LA MODIFICACIÓN CON EL BLOQUE ANONIMO
    
---========================================================
---======= Bloque Anonimo 4 ===============================
---======================================================== 
-- VARIABLES BIND
VAR b_cliente NUMBER
EXEC :b_cliente:=6
VAR b_monto_cred NUMBER
EXEC :b_monto_cred:=250000

DECLARE 
    v_monto_credito number(10);
BEGIN

    SELECT MONTO_CREDITO 
        INTO v_monto_credito
    FROM CREDITO_CLIENTE 
    WHERE NRO_CLIENTE=:b_cliente;
    
    IF v_monto_credito < 700000 THEN
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=MONTO_CREDITO*1.5
        WHERE NRO_CLIENTE=:b_cliente;
        
        SELECT MONTO_CREDITO 
            INTO v_monto_credito
        FROM TBL_CREDITO_CLIENTE 
        WHERE NRO_CLIENTE=:b_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Monto Credito aumenta en un 10%. Su nuevo valor es:' || TO_CHAR(v_monto_credito));   
    
    ELSIF v_monto_credito < 900000 THEN    ---860000 
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=MONTO_CREDITO*2
        WHERE NRO_CLIENTE=:b_cliente;
        
        SELECT MONTO_CREDITO 
            INTO v_monto_credito
        FROM TBL_CREDITO_CLIENTE 
        WHERE NRO_CLIENTE=:b_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Monto Credito aumenta en un 100%. Su nuevo valor es:' || TO_CHAR(v_monto_credito));  
    ELSE 
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=MONTO_CREDITO*1.1
        WHERE NRO_CLIENTE=:b_cliente;
        
        SELECT MONTO_CREDITO 
            INTO v_monto_credito
        FROM TBL_CREDITO_CLIENTE 
        WHERE NRO_CLIENTE=:b_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Monto Credito aumenta en un 10%. Su nuevo valor es:' || TO_CHAR(v_monto_credito));  
    END IF;
COMMIT;
END;

---========================================================
---======= Copia Tabla ====================================
---========================================================

SELECT * FROM CREDITO_CLIENTE WHERE NRO_CLIENTE=6; -- ES LA TABLA ORIGINAL --860000
SELECT * FROM TBL_CREDITO_CLIENTE WHERE NRO_CLIENTE=6 ;    -- ES DONDE ESTAMOS HACIENDO LA MODIFICACIÓN CON EL BLOQUE ANONIMO

SELECT * FROM CREDITO_CLIENTE WHERE NRO_CLIENTE=6; -- ES LA TABLA ORIGINAL 
SELECT * FROM TBL_CREDITO_CLIENTE WHERE NRO_CLIENTE=6 ;    -- ES DONDE ESTAMOS HACIENDO LA MODIFICACIÓN CON EL BLOQUE ANONIMO
    

---========================================================
---======= Bloque Anonimo 5 ===============================
---======================================================== 
-- VARIABLES BIND
VAR b_cliente NUMBER
EXEC :b_cliente:=6
VAR b_monto_cred NUMBER
EXEC :b_monto_cred:=250000

DECLARE 
    v_monto_credito number(10);
    v_monto_credito_original number(10);
BEGIN

    SELECT MONTO_CREDITO 
        INTO v_monto_credito_original
    FROM CREDITO_CLIENTE 
    WHERE NRO_CLIENTE=:b_cliente;
    
    SELECT MONTO_CREDITO 
        INTO v_monto_credito
    FROM CREDITO_CLIENTE 
    WHERE NRO_CLIENTE=:b_cliente;
    
    IF v_monto_credito < 700000 THEN
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=v_monto_credito*1.5
        WHERE NRO_CLIENTE=:b_cliente;
        
        SELECT MONTO_CREDITO 
            INTO v_monto_credito
        FROM TBL_CREDITO_CLIENTE 
        WHERE NRO_CLIENTE=:b_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Monto Credito aumenta en un 10%. Su nuevo valor es:' || TO_CHAR(v_monto_credito));   
        DBMS_OUTPUT.PUT_LINE('Monto Original:' || TO_CHAR(v_monto_credito_original));    
        
    ELSIF v_monto_credito < 800000 THEN    ---860000 
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=v_monto_credito*2
        WHERE NRO_CLIENTE=:b_cliente;
        
        SELECT MONTO_CREDITO 
            INTO v_monto_credito
        FROM TBL_CREDITO_CLIENTE 
        WHERE NRO_CLIENTE=:b_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Monto Credito aumenta en un 100%. Su nuevo valor es:' || TO_CHAR(v_monto_credito));  
        DBMS_OUTPUT.PUT_LINE('Monto Original:' || TO_CHAR(v_monto_credito_original));  
        
    ELSE 
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=v_monto_credito*1.1
        WHERE NRO_CLIENTE=:b_cliente;
        
        SELECT MONTO_CREDITO 
            INTO v_monto_credito
        FROM TBL_CREDITO_CLIENTE 
        WHERE NRO_CLIENTE=:b_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Monto Credito aumenta en un 10%. Su nuevo valor es:' || TO_CHAR(v_monto_credito));  
        DBMS_OUTPUT.PUT_LINE('Monto Original:' || TO_CHAR(v_monto_credito_original));  
    END IF;
COMMIT;
END;

---========================================================
---======= Copia Tabla ====================================
---========================================================

SELECT * FROM CREDITO_CLIENTE WHERE NRO_CLIENTE=6; -- ES LA TABLA ORIGINAL --860000
SELECT * FROM TBL_CREDITO_CLIENTE WHERE NRO_CLIENTE=6 ;    -- ES DONDE ESTAMOS HACIENDO LA MODIFICACIÓN CON EL BLOQUE ANONIMO

SELECT * FROM CREDITO_CLIENTE WHERE NRO_CLIENTE=6; -- ES LA TABLA ORIGINAL 
SELECT * FROM TBL_CREDITO_CLIENTE WHERE NRO_CLIENTE=6 ;    -- ES DONDE ESTAMOS HACIENDO LA MODIFICACIÓN CON EL BLOQUE ANONIMO
       
---========================================================
---======= Clase 03-06-2025 ===============================
---========================================================

DECLARE

v_calidad VARCHAR2(10):='GATO';
v_valoracion VARCHAR2(20);

BEGIN
 v_valoracion:=
    CASE v_calidad
      WHEN 'A' THEN 'EXCELENTE'
      WHEN 'B' THEN 'MUY BUENO'
      WHEN 'C' THEN 'BUENO'
      WHEN 'D' THEN 'MEDIO'
      WHEN 'Z' THEN 'BAJA'
      WHEN 'GATO' THEN 'SIN CLASIFICACIÓN'
      --ELSE 'No existe calidad'
      END;
      
    DBMS_OUTPUT.PUT_LINE('Calidad:' || v_calidad || ' Valoración: ' || v_valoracion);  
        
END;

    

---========================================================
---======= Bloque Anonimo 6 ===============================
---======================================================== 
-- VARIABLES BIND
VAR b_cliente NUMBER
EXEC :b_cliente:=6
VAR b_monto_cred NUMBER
EXEC :b_monto_cred:=250000

DECLARE 
    v_monto_credito number(10);
    v_monto_credito_original number(10);
BEGIN

    SELECT MONTO_CREDITO 
        INTO v_monto_credito_original
    FROM CREDITO_CLIENTE 
    WHERE NRO_CLIENTE=:b_cliente;
    
    SELECT MONTO_CREDITO 
        INTO v_monto_credito
    FROM CREDITO_CLIENTE 
    WHERE NRO_CLIENTE=:b_cliente;
    
    IF v_monto_credito < 700000 THEN
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=v_monto_credito*1.5
        WHERE NRO_CLIENTE=:b_cliente;
        
        SELECT MONTO_CREDITO 
            INTO v_monto_credito
        FROM TBL_CREDITO_CLIENTE 
        WHERE NRO_CLIENTE=:b_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Monto Credito aumenta en un 10%. Su nuevo valor es:' || TO_CHAR(v_monto_credito));   
        DBMS_OUTPUT.PUT_LINE('Monto Original:' || TO_CHAR(v_monto_credito_original));    
        
    ELSIF v_monto_credito < 800000 THEN    ---860000 
        UPDATE TBL_CREDITO_CLIENTE
        SET MONTO_CREDITO=v_monto_credito*2
        WHERE NRO_CLIENTE=:b_cliente;
        
        SELECT MONTO_CREDITO 
            INTO v_monto_credito
        FROM TBL_CREDITO_CLIENTE 
        WHERE NRO_CLIENTE=:b_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Monto Credito aumenta en un 100%. Su nuevo valor es:' || TO_CHAR(v_monto_credito));  
        DBMS_OUTPUT.PUT_LINE('Monto Original:' || TO_CHAR(v_monto_credito_original));  
        
    ELSE 
    
        DBMS_OUTPUT.PUT_LINE('No corresponde aumento de % en monto de credito');  
        
    END IF;
COMMIT;
END;


---========================================================
---======= Bloque Anonimo Cursores 1 2025-06-07 ===========
---======================================================== 


SELECT T1.NRO_SOLIC_CREDITO,NRO_CLIENTE,MONTO_SOLICITADO,NRO_CUOTA,VALOR_CUOTA,FECHA_VENC_CUOTA
FROM CREDITO_CLIENTE T1
LEFT JOIN CUOTA_CREDITO_CLIENTE T2
ON T1.NRO_SOLIC_CREDITO=T2.NRO_SOLIC_CREDITO
WHERE NRO_CLIENTE=6; 

SELECT * FROM CREDITO_CLIENTE WHERE NRO_CLIENTE=6; 

---========================================================
---======= Bloque Anonimo Cursores 1.1 2025-06-07 ===========
---======================================================== 
-- VARIABLES BIND
VAR b_cliente NUMBER
EXEC :b_cliente:=6

DECLARE
CURSOR cur_credito_cliente_6 IS(
SELECT T1.NRO_SOLIC_CREDITO, NRO_CLIENTE, MONTO_SOLICITADO, NRO_CUOTA, VALOR_CUOTA, FECHA_VENC_CUOTA
   FROM CREDITO_CLIENTE T1
   LEFT JOIN CUOTA_CREDITO_CLIENTE T2
   ON T1.NRO_SOLIC_CREDITO=T2.NRO_SOLIC_CREDITO
   WHERE NRO_CLIENTE = :b_cliente);
   
TYPE tipo_reg_credito IS RECORD (
   nro_solicitud NUMBER(8),
   nro_cliente NUMBER(8),
   monto_solicitado NUMBER(8),
   nro_cuota NUMBER(8),
   valor_cuota NUMBER(8),
   fecha_venc_cuota VARCHAR2(10));

reg_credito_usuario_6 tipo_reg_credito;

BEGIN

    OPEN cur_credito_cliente_6;
    LOOP
        FETCH cur_credito_cliente_6 INTO reg_credito_usuario_6;
       --DBMS_OUTPUT.PUT_LINE('Numero Cuota:' || TO_CHAR(reg_credito_usuario_6.nro_cuota));  
       --DBMS_OUTPUT.PUT_LINE('Valor Cuota:' || TO_CHAR(reg_credito_usuario_6.valor_cuota));  
       DBMS_OUTPUT.PUT_LINE('El numero de Cuota es: ' || TO_CHAR(reg_credito_usuario_6.nro_cuota) || ' y su valor de Cuota es :' || TO_CHAR(reg_credito_usuario_6.valor_cuota)); 
    
      EXIT WHEN cur_credito_cliente_6%NOTFOUND;
     END LOOP;    
    CLOSE cur_credito_cliente_6;
END;

---========================================================
---======= Bloque Anonimo Cursores 1.1 2025-06-07 ===========
---======================================================== 
-- VARIABLES BIND
VAR b_cliente NUMBER
EXEC :b_cliente:=6

DECLARE
CURSOR cur_credito_cliente_6 IS(
SELECT T1.NRO_SOLIC_CREDITO, NRO_CLIENTE, MONTO_SOLICITADO, NRO_CUOTA, VALOR_CUOTA, FECHA_VENC_CUOTA
   FROM CREDITO_CLIENTE T1
   LEFT JOIN CUOTA_CREDITO_CLIENTE T2
   ON T1.NRO_SOLIC_CREDITO=T2.NRO_SOLIC_CREDITO
   WHERE NRO_CLIENTE = :b_cliente);
   
TYPE tipo_reg_credito IS RECORD (
   nro_solicitud NUMBER(8),
   nro_cliente NUMBER(8),
   monto_solicitado NUMBER(8),
   nro_cuota NUMBER(8),
   valor_cuota NUMBER(8),
   fecha_venc_cuota VARCHAR2(10));

reg_credito_usuario_6 tipo_reg_credito;

BEGIN

    OPEN cur_credito_cliente_6;
    LOOP
        FETCH cur_credito_cliente_6 INTO reg_credito_usuario_6;
       --DBMS_OUTPUT.PUT_LINE('Numero Cuota:' || TO_CHAR(reg_credito_usuario_6.nro_cuota));  
       --DBMS_OUTPUT.PUT_LINE('Valor Cuota:' || TO_CHAR(reg_credito_usuario_6.valor_cuota));  
       EXIT WHEN cur_credito_cliente_6%NOTFOUND;
       DBMS_OUTPUT.PUT_LINE('El numero de Cuota es: ' || TO_CHAR(reg_credito_usuario_6.nro_cuota) || ' y su valor de Cuota es :' || TO_CHAR(reg_credito_usuario_6.valor_cuota)); 
    
     END LOOP;    
    CLOSE cur_credito_cliente_6;
END;