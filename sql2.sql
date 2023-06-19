CREATE SCHEMA tienda_zapatillas;

USE tienda_zapatillas;

CREATE TABLE zapatillas
	(id_zapatilla INT AUTO_INCREMENT NOT NULL,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_zapatilla)
    );
    
CREATE TABLE clientes
	(id_cliente INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    numero_telefono INT(9) NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    ciudad VARCHAR(45) NULL,
    provincia VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    codigo_postal VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_cliente)
    );
    
CREATE TABLE empleados
	(id_empleado INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    tienda VARCHAR(45) NOT NULL,
    salario INT NULL,
    fecha_incorporacion DATE NOT NULL,
    PRIMARY KEY (id_empleado)
    );
	
CREATE TABLE facturas
	(id_facturas INT AUTO_INCREMENT NOT NULL,
    numero_factura VARCHAR(45) NOT NULL,
    fecha DATE NOT NULL,
    id_cliente INT NOT NULL,
    id_empleado INT NOT NULL,
    id_zapatilla INT NOT NULL,
    PRIMARY KEY (id_facturas),
    CONSTRAINT `fk_tabla_facturas_clientes1`
		FOREIGN KEY (`id_cliente`)
        REFERENCES `tienda_zapatillas`.`clientes` (`id_cliente`),
	CONSTRAINT `fk_tabla_facturas_tabla_empleados1`
		FOREIGN KEY (`id_empleado`)
        REFERENCES `tienda_zapatillas`.`empleados` (`id_empleado`),
	CONSTRAINT `fk_tabla_facturas_zapatillas1`
		FOREIGN KEY (`id_zapatilla`)
        REFERENCES `tienda_zapatillas`.`zapatillas` (`id_zapatilla`)
        );
    
    ALTER TABLE zapatillas
    ADD COLUMN marca VARCHAR(45) NOT NULL,
    ADD COLUMN talla INT NOT NULL;
    
    ALTER TABLE empleados
    MODIFY COLUMN salario FLOAT;
    
    ALTER TABLE clientes
    DROP COLUMN pais;
    
    ALTER TABLE clientes
    MODIFY COLUMN codigo_postal INT(5) NOT NULL;
    
    ALTER TABLE facturas
    ADD COLUMN factura_total FLOAT NOT NULL;