 CREATE SCHEMA tienda_zapatillas;
 USE tienda_zapatillas;
 
 CREATE TABLE zapatillas (
 id_zapatilla INT AUTO_INCREMENT,
 modelo VARCHAR (50),
 color VARCHAR (59),
 PRIMARY KEY (id_zapatilla));
 
 CREATE TABLE clientes (
 id_cliente INT AUTO_INCREMENT,
 nombre VARCHAR (20),
 numero_telefono INT, 
 email VARCHAR (45),
 direccion VARCHAR (45),
 ciudad VARCHAR (45)  DEFAULT NULL,
 provincia VARCHAR (45),
 pais VARCHAR (45),
 codigo_postal INT,
 PRIMARY KEY (id_cliente));

CREATE TABLE empleados (
id_empleado INT AUTO_INCREMENT,
nombre VARCHAR (45),
tienda VARCHAR (45),
salario INT DEFAULT NULL,
fecha_incorporacion DATE, 
PRIMARY KEY (id_empleado));

CREATE TABLE facturas (
id_factura INT AUTO_INCREMENT,
numero_factura VARCHAR (45),
fecha DATE,
id_zapatilla INT,
id_cliente INT,
id_empleado INT,
PRIMARY KEY (id_factura),
	CONSTRAINT fk_fac_zap
		FOREIGN KEY (id_zapatilla)
        REFERENCES zapatillas (id_zapatilla)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT fk_fac_cli
        FOREIGN KEY (id_cliente)
        REFERENCES clientes (id_cliente)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT fk_fac_emp
		FOREIGN KEY (id_empleado)
        REFERENCES empleados (id_empleado)
        ON DELETE CASCADE
        ON UPDATE CASCADE);
	
	

        
        
        






primary KEY (id_empleada_tabla_2, id_proyecto),
    CONSTRAINT fk_emp_pro
         FOREIGN KEY (id_empleada_tabla_2)
	     REFERENCES empleadas (id_empleada)
         ON DELETE SET NULL
         ON UPDATE CASCADE);