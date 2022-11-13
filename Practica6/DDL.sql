DROP SCHEMA IF EXISTS public CASCADE;
CREATE SCHEMA public;

------------------------------------------------------------------------------------
CREATE TABLE Planta(
	especie VARCHAR(50),
	sustrato VARCHAR(50),
	genero VARCHAR(50),
	cuidadosBasicos VARCHAR(50),
	nombre VARCHAR(50),
	precio INT,
	fecha_de_germinacion DATE,
	tiempo_de_riego DATE,
	sol BOOLEAN,
	sombra BOOLEAN,
	resolana BOOLEAN
);
-- Comentarios Planta
COMMENT ON TABLE Planta IS 'Tabla que contiene las características y cuidados de una planta. ';
COMMENT ON COLUMN Planta.especie IS 'Identificador de una planta.';
COMMENT ON COLUMN Planta.genero IS 'Genero de una planta.';
COMMENT ON COLUMN Planta.cuidadosBasicos IS 'Breve recomendaciones de los puntos más importantes del cuidado de la planta';
COMMENT ON COLUMN Planta.nombre IS 'El es nombre común por el que se le conoce a la planta';
COMMENT ON COLUMN Planta.precio IS 'Costo de la planta.';
COMMENT ON COLUMN Planta.fecha_de_germinacion IS 'Fecha en que germinó la semilla .';
COMMENT ON COLUMN Planta.tiempo_de_riego IS 'Intervalo en que se debe regar la planta en promedio';
COMMENT ON COLUMN Planta.sol IS 'Booleano si la planta es de sol.';
COMMENT ON COLUMN Planta.sombra IS 'Booleano si la planta es de sombra.';
COMMENT ON COLUMN Planta.resolana IS 'Booleano si la planta es de resolana.';

------------------------------------------------------------------------------------

CREATE TABLE Vivero(
	id_vivero INT,
	nombre VARCHAR(50),
	fecha_de_apertura DATE,
	direccion VARCHAR(100)
);

--Comentarios Tabla Vivero
COMMENT ON TABLE Vivero IS 'Tabla que contiene la informacion de todos los viveros de la empresa';
COMMENT ON COLUMN Vivero.id_vivero IS 'Identificador del vivero';
COMMENT ON COLUMN Vivero.nombre IS 'Nombre del vivero';
COMMENT ON COLUMN Vivero.fecha_de_apertura IS 'Fecha de apertura del vivero';
COMMENT ON COLUMN Vivero.direccion IS 'Direccion del vivero';
------------------------------------------------------------------------------------

CREATE TABLE TelefonoVivero(
	id_vivero INT,
	telefono VARCHAR(20)
);
-- Comentarios Tabla TelefonoVivero
COMMENT ON TABLE TelefonoVivero IS 'Tabla que contiene todos los telefonos de todos los viveros';
COMMENT ON COLUMN TelefonoVivero.id_vivero IS 'Identificador del vivero al que nos referimos';
COMMENT ON COLUMN TelefonoVivero.telefono IS 'Telefono del vivero’';

------------------------------------------------------------------------------------

CREATE TABLE Contener(
	especie VARCHAR(50),
	id_vivero INT
);

COMMENT ON TABLE Contener IS 'Tabla que contiene la informacion sobre que viveros contienen que especies de plantas';
COMMENT ON COLUMN Contener.especie IS 'Identificador de la planta';
COMMENT ON COLUMN Contener.id_vivero IS 'Identificador del vivero';

------------------------------------------------------------------------------------

CREATE TABLE Cliente(
	numero_de_cliente INT,  
	nombre VARCHAR(50),
	apellido_paterno VARCHAR(50),
	apellido_materno VARCHAR(50),
	fecha_de_nacimiento DATE
);
COMMENT ON TABLE Cliente IS 'Tabla que contiene la información de un cliente.';
COMMENT ON COLUMN Cliente.numero_de_cliente IS 'Identificador de un cliente.';
COMMENT ON COLUMN Cliente.nombre IS 'Nombre de un cliente.';
COMMENT ON COLUMN Cliente.apellido_paterno IS 'Apellido paterno de un cliente.';
COMMENT ON COLUMN Cliente.apellido_materno IS 'Apellido materno de un cliente.';
COMMENT ON COLUMN Cliente.fecha_de_nacimiento IS 'Fecha de nacimiento de un cliente.';
------------------------------------------------------------------------------------

CREATE TABLE Correo_Cliente(
	numero_de_cliente INT,
	correo VARCHAR(50)
);
-- Comentarios Tabla 'Correo_Gerente'
COMMENT ON TABLE Correo_Cliente IS 'Tabla que contiene la información del correo de un cliente. ';
COMMENT ON COLUMN Correo_Cliente.numero_de_cliente IS 'Identificador de un cliente.';
COMMENT ON COLUMN Correo_Cliente.correo IS 'Correo asociado a un cliente.';

------------------------------------------------------------------------------------

CREATE TABLE Telefono_Cliente(
	numero_de_cliente INT,
	telefono VARCHAR(20)
);
-- Comentarios Tabla 'Telefono_Cliente'
COMMENT ON TABLE Telefono_Cliente IS 'Tabla que contiene la información del teléfono de un cliente. ';
COMMENT ON COLUMN Telefono_Cliente.numero_de_cliente IS 'Identificador de un cliente.';
COMMENT ON COLUMN Telefono_Cliente.telefono IS 'Teléfono asociado a un cliente.';
------------------------------------------------------------------------------------

CREATE TABLE Gerente(
	id_gerente INT,
	id_vivero INT,
    fecha_de_nacimiento DATE,
	nombre VARCHAR(50),
	paterno VARCHAR(50),
	materno VARCHAR(50),
	genero VARCHAR(50),
    salario INT,
    direccion VARCHAR(100)
);

-- Comentarios Tabla 'Gerente'
COMMENT ON TABLE Gerente IS 'Tabla que contiene la información de un gerente.';
COMMENT ON COLUMN Gerente.id_gerente IS 'Identificador de un gerente.';
COMMENT ON COLUMN Gerente.id_vivero IS 'Identificador de un vivero.';
COMMENT ON COLUMN Gerente.fecha_de_nacimiento IS 'Fecha de nacimiento de un gerente.';
COMMENT ON COLUMN Gerente.nombre IS 'Nombre de un gerente.';
COMMENT ON COLUMN Gerente.paterno IS 'Apellido paterno de un gerente.';
COMMENT ON COLUMN Gerente.materno IS 'Apellido materno de un gerente.';
COMMENT ON COLUMN Gerente.genero IS 'Genero de un gerente.';
COMMENT ON COLUMN Gerente.salario IS 'Salario de un gerente.';
COMMENT ON COLUMN Gerente.direccion IS 'Dirección de un gerente.';

------------------------------------------------------------------------------------

CREATE TABLE Correo_Gerente(
	id_gerente INT,
	correo VARCHAR(100)
);

-- Comentarios Tabla 'Correo_Gerente'
COMMENT ON TABLE Correo_Gerente IS 'Tabla que contiene la información del correo de un gerente. ';
COMMENT ON COLUMN Correo_Gerente.id_gerente IS 'Identificador de un gerente.';
COMMENT ON COLUMN Correo_Gerente.correo IS 'Correo asociado a un gerente.';

------------------------------------------------------------------------------------

CREATE TABLE Telefono_Gerente(
	id_gerente INT,
	telefono VARCHAR(20)
);

-- Comentarios Tabla 'Telefono_Gerente'
COMMENT ON TABLE Telefono_Gerente IS 'Tabla que contiene la información del teléfono de un gerente. ';
COMMENT ON COLUMN Telefono_Gerente.id_gerente IS 'Identificador de un gerente.';
COMMENT ON COLUMN Telefono_Gerente.telefono IS 'Teléfono asociado a un gerente.';

------------------------------------------------------------------------------------
CREATE TABLE Encargado(
	id_encargado VARCHAR(50),
	id_vivero INT,
    fecha_de_nacimiento DATE,
	nombre VARCHAR(50),
	paterno VARCHAR(50),
	materno VARCHAR(50),
	genero VARCHAR(50),
    salario INT,
    direccion VARCHAR(100)
);
COMMENT ON TABLE Encargado IS 'Tabla que contiene la información de un encargado.';
COMMENT ON COLUMN Encargado.id_encargado IS 'Identificador de un encargado.';
COMMENT ON COLUMN Encargado.id_vivero IS 'Identificador de un vivero.';
COMMENT ON COLUMN Encargado.fecha_de_nacimiento IS 'Fecha de nacimiento de un encargado.';
COMMENT ON COLUMN Encargado.nombre IS 'Nombre de un encargado.';
COMMENT ON COLUMN Encargado.paterno IS 'Apellido paterno de un encargado.';
COMMENT ON COLUMN Encargado.materno IS 'Apellido materno de un encargado.';
COMMENT ON COLUMN Encargado.genero IS 'Genero de un encargado.';
COMMENT ON COLUMN Encargado.salario IS 'Salario de un encargado.';
COMMENT ON COLUMN Encargado.direccion IS 'Dirección de un encargado.';



------------------------------------------------------------------------------------

CREATE TABLE Correo_Encargado(
	id_encargado VARCHAR(50),
	correo VARCHAR(100)
);


-- Comentarios Tabla 'Correo_Encargado'
COMMENT ON TABLE Correo_Encargado IS 'Tabla que contiene la información del correo de un encargado. ';
COMMENT ON COLUMN Correo_Encargado.id_encargado IS 'Identificador de un encargado.';
COMMENT ON COLUMN Correo_Encargado.correo IS 'Correo asociado a un encargado.';


------------------------------------------------------------------------------------

CREATE TABLE Telefono_Encargado(
	id_encargado VARCHAR(50),
	telefono VARCHAR(20)
);
-- Comentarios Tabla 'Telefono_Encargado'
COMMENT ON TABLE Telefono_Encargado IS 'Tabla que contiene la información del teléfono de un encargado. ';
COMMENT ON COLUMN Telefono_Encargado.id_encargado IS 'Identificador de un encargado.';
COMMENT ON COLUMN Telefono_Encargado.telefono IS 'Teléfono asociado a un encargado.';

------------------------------------------------------------------------------------
CREATE TABLE Cuidador(
	id_cuidador VARCHAR(50),
	id_vivero INT,
    fecha_de_nacimiento DATE,
	nombre VARCHAR(50),
	paterno VARCHAR(50),
	materno VARCHAR(50),
	genero VARCHAR(50),
    salario INT,
    direccion VARCHAR(100)
);
COMMENT ON TABLE Cuidador IS 'Tabla que contiene a los Cuidadors del Vivero';
COMMENT ON COLUMN Cuidador.id_cuidador IS 'Identificador del Cuidador';
COMMENT ON COLUMN Cuidador.id_vivero IS 'Identificador del vivero';
COMMENT ON COLUMN Cuidador.fecha_de_nacimiento IS 'Fecha de nacimiento del Cuidador del vivero';
COMMENT ON COLUMN Cuidador.nombre IS 'Nombre del Cuidador del Vivero';
COMMENT ON COLUMN Cuidador.paterno IS 'Apellido Paterno del Cuidador del Vivero';
COMMENT ON COLUMN Cuidador.materno IS 'Apellido Materno del Cuidador del Vivero';
COMMENT ON COLUMN Cuidador.genero IS 'Genero del Cuidador del Vivero';
COMMENT ON COLUMN Cuidador.salario IS 'Salario del Cuidador del Vivero';
COMMENT ON COLUMN Cuidador.direccion IS 'La direccion del Cuidador del Vivero';


------------------------------------------------------------------------------------

CREATE TABLE Correo_Cuidador(
	id_cuidador VARCHAR(50),
	correo VARCHAR(100)
);
COMMENT ON TABLE Correo_Cuidador IS 'Tabla que contiene el correo de los Cuidadors del Vivero';
COMMENT ON COLUMN Correo_Cuidador.id_Cuidador IS 'Identificador del Cuidador del Vivero';
COMMENT ON COLUMN Correo_Cuidador.correo IS 'Correo electronico del Cuidador del Vivero';
------------------------------------------------------------------------------------

CREATE TABLE Telefono_Cuidador(
	id_cuidador VARCHAR(50),
	telefono VARCHAR(20)
);
--Comentarios Tabla 'Telefono_Cuidador'
COMMENT ON TABLE Telefono_Cuidador IS 'Tabla que contiene el correo de los Cuidadors del Vivero';
COMMENT ON COLUMN Telefono_Cuidador.id_Cuidador IS 'Identificador del Cuidador del Vivero';
COMMENT ON COLUMN Telefono_Cuidador.telefono IS 'Telefono del Cuidador del Vivero';

-----------------------------------------------------------------------------------
CREATE TABLE Cajero(
	id_cajero INT,
	id_vivero INT,
    fecha_de_nacimiento DATE,
	nombre VARCHAR(50),
	paterno VARCHAR(50),
	materno VARCHAR(50),
	genero VARCHAR(50),
    salario INT,
    direccion VARCHAR(100)
);
--Comentarios Tabla Cajero
COMMENT ON TABLE Cajero IS 'Tabla que contiene la informacion de todos los empleados con puesto de cajeros que trabajan en el vivero';
COMMENT ON COLUMN Cajero.id_cajero IS 'Identificador del cajero';
COMMENT ON COLUMN Cajero.id_vivero IS 'Identificador del vivero';
COMMENT ON COLUMN Cajero.fecha_de_nacimiento IS 'Fecha de nacimiento del cajero';
COMMENT ON COLUMN Cajero.nombre IS 'Nombre del cajero';
COMMENT ON COLUMN Cajero.paterno IS 'Apellido paterno del cajero';
COMMENT ON COLUMN Cajero.materno IS 'Apellido materno del cajero';
COMMENT ON COLUMN Cajero.genero IS 'Genero del cajero';
COMMENT ON COLUMN Cajero.salario IS 'Salario del cajero';
COMMENT ON COLUMN Cajero.direccion IS 'Direccion del cajero';

------------------------------------------------------------------------------------

CREATE TABLE Correo_Cajero(
	id_cajero INT,
	correo VARCHAR(100)
);

-- Comentarios Tabla Correo_Cajero
COMMENT ON TABLE Correo_Cajero IS 'Tabla que contiene todos los correos de todos los empleados con puesto de cajeros';
COMMENT ON COLUMN Correo_Cajero.id_cajero IS 'Identificador del cajero al que nos referimos';
COMMENT ON COLUMN Correo_Cajero.correo IS 'Correo del cajero';

------------------------------------------------------------------------------------

CREATE TABLE Telefono_Cajero(
	id_cajero INT,
	telefono VARCHAR(20)
);

-- Comentarios Tabla Telefono_Cajero
COMMENT ON TABLE Telefono_Cajero IS 'Tabla que contiene todos los telefonos de todos los empleados con puesto de cajeros';
COMMENT ON COLUMN Telefono_Cajero.id_cajero IS 'Identificador del cajero al que nos referimos';
COMMENT ON COLUMN Telefono_Cajero.telefono IS 'Telefono del cajero';

------------------------------------------------------------------------------------

CREATE TABLE Metodo_Pago(
	id_pago INT,
	credito VARCHAR(16),
	debito VARCHAR(16),
	es_tarjeta bool,
	es_efectivo bool
);
-- Comentarios de Metodo_Pago
COMMENT ON TABLE Metodo_Pago IS 'Tabla que contiene los metodos de pago disponibles para realizar una compra';
COMMENT ON COLUMN Metodo_Pago.id_pago IS 'Identificador del metodo de pago que se utilizo';
COMMENT ON COLUMN Metodo_Pago.credito IS 'Los 16 digitos de la tarjeta de credito';
COMMENT ON COLUMN Metodo_Pago.debito IS 'Los 16 digitos de la tarjeta de debito';
COMMENT ON COLUMN Metodo_Pago.es_tarjeta IS 'Si es cierto que el metodo de pago es una terjeta';
COMMENT ON COLUMN Metodo_Pago.es_efectivo IS 'Si es cierto que el metodo de pago es en efectivo';

------------------------------------------------------------------------------------

CREATE TABLE Venta_Electronica(
	id_venta_electronica INT,
	id_vivero INT,
	numero_de_cliente INT,
	id_pago INT,
	numero_de_producto INT,
	precio_desglose varchar(1000),
	total INT,
	direccion varchar(100),
	numero_de_seguimiento INT,
    desglose_productos VARCHAR(1000),
	fecha_pedido DATE
);

--Comentarios Venta_Electronica

COMMENT ON TABLE Venta_Electronica IS 'Tabla que contiene las ventas electronicas realizadas en los viveros';
COMMENT ON COLUMN Venta_Electronica.id_venta_electronica IS 'Identificador de la venta';
COMMENT ON COLUMN Venta_Electronica.id_vivero IS 'Identificador del vivero donde se realizo la venta';
COMMENT ON COLUMN Venta_Electronica.numero_de_cliente IS 'Identificador del cliente que realizo la compra';
COMMENT ON COLUMN Venta_Electronica.id_pago IS 'Identificador del metodo de pago que se utilizo';
COMMENT ON COLUMN Venta_Electronica.numero_de_producto IS '######################### NO SE PARA QUE';
COMMENT ON COLUMN Venta_Electronica.precio_desglose IS 'Una lista con todos los precios de los productos vendidos';
COMMENT ON COLUMN Venta_Electronica.total IS 'La suma de los precios de cada producto';
COMMENT ON COLUMN Venta_Electronica.direccion IS 'La direccion del cliente a donde se realizara el envio';
COMMENT ON COLUMN Venta_Electronica.numero_de_seguimiento IS 'Numero que proporciona la paqueteria para el seguimiento del paquete';
COMMENT ON COLUMN Venta_Electronica.desglose_productos IS 'Una lista de identificadores de cada producto comprado';
COMMENT ON COLUMN Venta_Electronica.fecha_pedido IS 'Fecha en la que se realizo el pedido';

-----------------------------------------------------------------------------------

CREATE TABLE Poseer(
	id_vivero INT,
	numero_de_cliente INT
);

--Comentarios Poseer

COMMENT ON TABLE Poseer IS 'Tabla que contiene la informacion sobre que clientes han comprado en que sucursules';
COMMENT ON COLUMN Poseer.id_vivero IS 'Identificador del vivero';
COMMENT ON COLUMN Poseer.numero_de_cliente IS 'Identificador del cliente';
------------------------------------------------------------------------------------

CREATE TABLE Venta_Fisica(
	id_venta_fisica INT,
	id_vivero INT,
	numero_de_cliente INT,
	id_pago INT,
	id_cajero INT,
	numero_de_producto INT,
	precio_desglose varchar(1000),
	desglose_productos VARCHAR(1000),
	total INT
);

--Comentarios Venta_Fisica

COMMENT ON TABLE Venta_Fisica IS 'Tabla que contiene las ventas fisicas realizadas en los viveros';
COMMENT ON COLUMN Venta_Fisica.id_venta_fisica IS 'Identificador de la venta';
COMMENT ON COLUMN Venta_Fisica.id_vivero IS 'Identificador del vivero donde se realizo la venta';
COMMENT ON COLUMN Venta_Fisica.numero_de_cliente IS 'Identificador del cliente que realizo la compra';
COMMENT ON COLUMN Venta_Fisica.id_pago IS 'Identificador del metodo de pago que se utilizo';
COMMENT ON COLUMN Venta_Fisica.id_cajero IS 'Identificador del cajero que realizo la venta';
COMMENT ON COLUMN Venta_Fisica.numero_de_producto IS '######################### NO SE PARA QUE';
COMMENT ON COLUMN Venta_Fisica.precio_desglose IS 'Una lista con todos los precios de los productos vendidos';
COMMENT ON COLUMN Venta_Fisica.desglose_productos IS 'Una lista de identificadores de cada producto comprado';
COMMENT ON COLUMN Venta_Fisica.total IS 'La suma de los precios de cada producto';


--Restricciones Planta-----------------------------------------------------------------
--Entidad
ALTER TABLE Planta ADD CONSTRAINT especie_pkey PRIMARY KEY(especie);
ALTER TABLE Planta ADD CONSTRAINT pesp UNIQUE(especie);
-- Comentarios Entidad
COMMENT ON CONSTRAINT especie_pkey ON Planta IS 'La PRIMARY KEY de la Planta es su especie';
COMMENT ON CONSTRAINT pesp ON Planta IS 'Restriccion UNIQUE para el atributo especie de Planta';

--Dominio
ALTER TABLE Planta ALTER COLUMN especie SET NOT NULL;
ALTER TABLE Planta ADD CONSTRAINT psust CHECK(sustrato <> '');
ALTER TABLE Planta ADD CONSTRAINT pgen CHECK(genero <>'');
ALTER TABLE Planta ADD CONSTRAINT pnomb CHECK(nombre <>'');
ALTER TABLE Planta ADD CONSTRAINT pprecio CHECK(precio between 100 and 999);
ALTER TABLE Planta ALTER COLUMN fecha_de_germinacion SET NOT NULL;
ALTER TABLE Planta ALTER COLUMN tiempo_de_riego SET NOT NULL;
ALTER TABLE Planta ALTER COLUMN sol SET NOT NULL;
ALTER TABLE Planta ALTER COLUMN sombra SET NOT NULL;
ALTER TABLE Planta ALTER COLUMN resolana SET NOT NULL;
--Comentarios Dominio
COMMENT ON CONSTRAINT psust ON Planta IS 'Restriccion CHECK el cual nos asegura que el sustrato no sea la cadena vacia';
COMMENT ON CONSTRAINT pgen ON Planta IS 'Restriccion CHECK el cual nos asegura que el genero de la planta no sea la cadena vacia';
COMMENT ON CONSTRAINT pnomb ON Planta IS 'Restriccion CHECK el cual nos asegura que el nombre de la planta no sea la cadena vacia';
COMMENT ON CONSTRAINT pprecio ON Planta IS 'Restriccion CHECK para delimitar el precio entre 100 y 999 pesos.';
COMMENT ON COLUMN Planta.especie IS 'Especie de la planta, sirve como identificador de una planta.';
COMMENT ON COLUMN Planta.fecha_de_germinacion IS 'Fecha de germinación de la planta.';
COMMENT ON COLUMN Planta.tiempo_de_riego IS 'Tiempo de riego de la planta.';
COMMENT ON COLUMN Planta.sol IS 'Booleano si la planta es de sol.';
COMMENT ON COLUMN Planta.sombra IS 'Booleano si la planta es de sombra.';
COMMENT ON COLUMN Planta.resolana IS 'Booleano si la planta es de resolana.';

--Restricciones Vivero-----------------------------------------------------------------
--Entidad
ALTER TABLE Vivero ADD CONSTRAINT id_vivero PRIMARY KEY(id_vivero);
ALTER TABLE Vivero ADD CONSTRAINT idv UNIQUE(id_vivero);
--Dominio
ALTER TABLE Vivero ALTER COLUMN id_vivero SET NOT NULL;
ALTER TABLE Vivero ADD CONSTRAINT vnomb CHECK(nombre <> '');
ALTER TABLE Vivero ALTER COLUMN fecha_de_apertura SET NOT NULL;
ALTER TABLE Vivero ADD CONSTRAINT vdir CHECK(direccion <>'');

--Comentarios Vivero
COMMENT ON CONSTRAINT id_vivero ON Vivero IS 'La llave primaria de la tabla Vivero';
COMMENT ON CONSTRAINT idv ON Vivero IS 'Restriccion unique para el atributo id_vivero';
COMMENT ON CONSTRAINT vnomb ON Vivero IS 'Restriccion check el cual nos asegura que el nombre no sea vacio';
COMMENT ON CONSTRAINT vdir ON Vivero IS 'Restriccion check el cual nos asegura que la direccion no sea vacia';
COMMENT ON COLUMN Vivero.fecha_de_apertura IS 'Fecha de apertura del vivero';

--Restricciones TelefonoVivero----------------------------------------------------------
--Dominio
ALTER TABLE TelefonoVivero ALTER COLUMN telefono SET NOT NULL;
ALTER TABLE TelefonoVivero ADD CONSTRAINT telefonoV CHECK (telefono SIMILAR TO '[0-9]*');

--Entidad
ALTER TABLE TelefonoVivero ADD CONSTRAINT tel_vivero_pkey PRIMARY KEY(id_vivero, telefono);

--Referencial
ALTER TABLE TelefonoVivero ADD CONSTRAINT id_vivero_fkey FOREIGN KEY (id_vivero)
REFERENCES Vivero(id_vivero);

--Comentarios TelefonoVivero
COMMENT ON CONSTRAINT telefonoV ON TelefonoVivero IS 'Restriccion check el cual nos asegura que el telefono solo tenga numeros';
COMMENT ON CONSTRAINT tel_vivero_pkey ON TelefonoVivero IS 'La llave primaria de la tabla TelefonoVivero';
COMMENT ON CONSTRAINT id_vivero_fkey ON TelefonoVivero IS 'La llave foranea de la tabla TelefonoVivero';


--Restricciones Contener----------------------------------------------------------------
--Dominio
ALTER TABLE Contener ALTER COLUMN especie SET NOT NULL;
ALTER TABLE Contener ALTER COLUMN id_vivero SET NOT NULL;
--Referencial
ALTER TABLE Contener ADD CONSTRAINT especie_fkey FOREIGN KEY (especie)
REFERENCES Planta(especie);
ALTER TABLE Contener ADD CONSTRAINT id_vivero_fkey FOREIGN KEY (id_vivero)
REFERENCES Vivero(id_vivero);


--Restricciones cliente------------------------------------------------------------------
--Entidad
ALTER TABLE Cliente ADD CONSTRAINT unclient UNIQUE(numero_de_cliente);
ALTER TABLE Cliente ADD CONSTRAINT cliente_pkey PRIMARY KEY(numero_de_cliente);
--Dominio
ALTER TABLE Cliente ALTER COLUMN numero_de_cliente SET NOT NULL;
ALTER TABLE Cliente ADD CONSTRAINT nombre1 CHECK(nombre <> '');
ALTER TABLE Cliente ADD CONSTRAINT apPat1 CHECK(apellido_paterno <>'');
ALTER TABLE Cliente ADD CONSTRAINT apMat1 CHECK(apellido_materno <>'');
ALTER TABLE Cliente ADD CONSTRAINT fechaDN CHECK(fecha_de_nacimiento >= '1990-01-01');


--Restricciones Correo_cliente-----------------------------------------------------------
--Dominio
ALTER TABLE Correo_Cliente ALTER COLUMN correo SET NOT NULL;
ALTER TABLE Correo_Cliente ADD CONSTRAINT crr1 CHECK(correo <> '');
--Entidad
ALTER TABLE Correo_Cliente ADD CONSTRAINT ccliente_pkey PRIMARY KEY(numero_de_cliente, correo);
--Referencial
ALTER TABLE Correo_Cliente ADD CONSTRAINT numero_de_cliente_fkey FOREIGN KEY (numero_de_cliente)
REFERENCES Cliente(numero_de_cliente);


--Restricciones Telefono_cliente----------------------------------------------------------
--Dominio
ALTER TABLE Telefono_Cliente ALTER COLUMN telefono SET NOT NULL;
ALTER TABLE Telefono_Cliente ADD CONSTRAINT telefonoC CHECK (telefono SIMILAR TO '[0-9]*');
--Entidad
ALTER TABLE Telefono_Cliente ADD CONSTRAINT telefono_pkey PRIMARY KEY(numero_de_cliente,telefono);
--Referencial
ALTER TABLE Telefono_Cliente ADD CONSTRAINT numero_tel_cliente_fkey FOREIGN KEY (numero_de_cliente)
REFERENCES Cliente(numero_de_cliente);

--Restricciones Gerente----------------------------------------------------------
--Entidad
ALTER TABLE Gerente ADD CONSTRAINT gerente_pkey PRIMARY KEY(id_gerente);
ALTER TABLE Gerente ADD CONSTRAINT ungerent UNIQUE(id_gerente);
ALTER TABLE Vivero ADD CONSTRAINT idG UNIQUE(id_vivero);

--Comentarios Entidad
COMMENT ON CONSTRAINT gerente_pkey ON Gerente IS 'La PRIMARY KEY de un Gerente es su id_gerente';
COMMENT ON CONSTRAINT ungerent ON Gerente IS 'Restriccion UNIQUE para el id_gerente';
COMMENT ON CONSTRAINT ungerent ON GErente IS 'Restriccion UNIQUE para el id_vivero';

--Dominio
ALTER TABLE Gerente ALTER COLUMN id_gerente SET NOT NULL;
ALTER TABLE Gerente ADD CONSTRAINT nomb2 CHECK(nombre <> '');
ALTER TABLE Gerente ADD CONSTRAINT apPat2 CHECK(paterno <>'');
ALTER TABLE Gerente ADD CONSTRAINT apMat2 CHECK(materno <>'');
ALTER TABLE Gerente ADD CONSTRAINT fechaDN CHECK(fecha_de_nacimiento >= '1990-01-01');
ALTER TABLE Gerente ADD CONSTRAINT gen1 CHECK(genero <>'');
ALTER TABLE Gerente ADD CONSTRAINT sal1 CHECK(salario between 12000 and 19999);
ALTER TABLE Gerente ADD CONSTRAINT dir2 CHECK(direccion <>'');

--Comentarios Dominio
COMMENT ON CONSTRAINT nomb2 ON Gerente IS 'Restriccion CHECK el cual nos asegura que el nombre del gerente no sea la cadena vacia.';
COMMENT ON CONSTRAINT apPat2 ON Gerente IS 'Restriccion CHECK el cual nos asegura que el apellido paterno del gerente no sea la cadena vacia.';
COMMENT ON CONSTRAINT apMat2 ON Gerente IS 'Restriccion CHECK el cual nos asegura que el apellido materno del gerente no sea la cadena vacia.';
COMMENT ON CONSTRAINT fechaDN ON Gerente IS 'Restriccion CHECK para delimitar la fecha de nacimiento a partir de 1990-01-01 en adelante.';
COMMENT ON CONSTRAINT gen1 ON Gerente IS 'Restriccion CHECK el cual nos asegura que el genero del gerente no sea la cadena vacia.';
COMMENT ON CONSTRAINT sal1 ON Gerente IS 'Restriccion CHECK para delimitar el salario del gerente entre 12000 y 19999 pesos.';
COMMENT ON CONSTRAINT dir2 ON Gerente IS 'Restriccion CHECK el cual nos asegura que la direccion del gerente no sea la cadena vacia.';


--Referencial
ALTER TABLE Gerente ADD CONSTRAINT gerente_fkey FOREIGN KEY(id_vivero)
REFERENCES Vivero(id_vivero);
COMMENT ON CONSTRAINT gerente_fkey ON Gerente IS 'Restriccion FOREIGN KEY de la llave foranea id_vivero de la tabla Vivero.';

--Restricciones Correo_Gerente----------------------------------------------------------
--Dominio
ALTER TABLE Correo_Gerente ALTER COLUMN correo SET NOT NULL;
ALTER TABLE Correo_Gerente ADD CONSTRAINT crr2 CHECK(correo <> '');

--Comentarios Dominio
COMMENT ON COLUMN Correo_Gerente.correo IS 'El correo es el identificador de la tabla Correo_Gerente, por lo que no puede ser nulo';
COMMENT ON CONSTRAINT crr2 ON Correo_Gerente IS 'Restriccion CHECK el cual nos asegura que el correo del gerente no sea la cadena vacia.';

--Entidad
ALTER TABLE Correo_Gerente ADD CONSTRAINT correo_gerente_pkey PRIMARY KEY(id_gerente,correo);

--Comentarios Entidad
COMMENT ON CONSTRAINT correo_gerente_pkey ON Correo_Gerente IS 'Restricción PRIMARY KEY que establece como identificador id_gerente y correo de la tabla Correo_Gerente.';

--Referencial
ALTER TABLE Correo_Gerente ADD CONSTRAINT correo_gerente_fkey FOREIGN KEY(id_gerente)
REFERENCES Gerente(id_gerente);

--Comentarios Referencias
COMMENT ON CONSTRAINT correo_gerente_fkey ON Correo_Gerente IS 'Restricción FOREIGN KEY que establece a id_gerente como llave foranea de la tabla Gerente';

--Restricciones Telefono_Gerente----------------------------------------------------------
--Dominio
ALTER TABLE Telefono_Gerente ALTER COLUMN telefono SET NOT NULL;
ALTER TABLE Telefono_Gerente ADD CONSTRAINT telefonoG CHECK (telefono SIMILAR TO '[0-9]*');

--Comentarios Dominio
COMMENT ON COLUMN Telefono_Gerente.telefono IS 'El telefono es el identificador de la tabla Telefono_Gerente, por lo que no puede ser nulo';
COMMENT ON CONSTRAINT telefonoG ON Telefono_Gerente IS 'Restriccion CHECK el cual nos asegura que el telefono del gerente sea una cadena de números.';

--Entidad
ALTER TABLE Telefono_Gerente ADD CONSTRAINT telefono_gerente_pkey PRIMARY KEY(id_gerente,telefono);

--Comentarios Entidad
COMMENT ON CONSTRAINT telefono_gerente_pkey ON Telefono_Gerente IS 'Restricción PRIMARY KEY que establece el telefono y id_gerente como identificador de la tabla Telefono_Gerente.';

--Referencial
ALTER TABLE Telefono_Gerente ADD CONSTRAINT telefono_gerente_fkey FOREIGN KEY(id_gerente)
REFERENCES Gerente(id_gerente);

--Comentarios Referencias
COMMENT ON CONSTRAINT telefono_gerente_fkey ON Telefono_Gerente IS 'Restricción FOREIGN KEY que establece a id_gerente como llave foranea de la tabla Telefono_Gerente';

--Restricciones Encargado----------------------------------------------------------
--Entidad
ALTER TABLE Encargado ADD CONSTRAINT encargado_pkey PRIMARY KEY(id_encargado);
ALTER TABLE Encargado ADD CONSTRAINT unencar UNIQUE(id_encargado);
ALTER TABLE Vivero ADD CONSTRAINT idE UNIQUE(id_vivero);
--Comentarios Entidad
COMMENT ON CONSTRAINT encargado_pkey ON Encargado IS 'La PRIMARY KEY de un Encargado es su id_encargado';
COMMENT ON CONSTRAINT unencar ON Encargado IS 'Restriccion UNIQUE para el id_enargado';
COMMENT ON CONSTRAINT ide ON Vivero IS 'Restriccion UNIQUE para el id_vivero';

--Dominio
ALTER TABLE Encargado ALTER COLUMN id_encargado SET NOT NULL;
ALTER TABLE Encargado ADD CONSTRAINT nomb3 CHECK(nombre <> '');
ALTER TABLE Encargado ADD CONSTRAINT apPat3 CHECK(paterno <>'');
ALTER TABLE Encargado ADD CONSTRAINT apMat3 CHECK(materno <>'');
ALTER TABLE Encargado ADD CONSTRAINT fechaDN CHECK(fecha_de_nacimiento >= '1990-01-01');
ALTER TABLE Encargado ADD CONSTRAINT gen2 CHECK(genero <>'');
ALTER TABLE Encargado ADD CONSTRAINT sal2 CHECK(salario between 10000 and 16999);
ALTER TABLE Encargado ADD CONSTRAINT dir3 CHECK(direccion <>'');

--Comentarios Dominio
COMMENT ON CONSTRAINT nomb3 ON Encargado IS 'Restriccion CHECK el cual nos asegura que el nombre del encargado no sea la cadena vacia.';
COMMENT ON CONSTRAINT apPat3 ON Encargado IS 'Restriccion CHECK el cual nos asegura que el apellido paterno del encargado no sea la cadena vacia.';
COMMENT ON CONSTRAINT apMat3 ON Encargado IS 'Restriccion CHECK el cual nos asegura que el apellido materno del encargado no sea la cadena vacia.';
COMMENT ON CONSTRAINT fechaDN ON Encargado IS 'Restriccion CHECK para delimitar la fecha de nacimiento a partir de 1990-01-01 en adelante.';
COMMENT ON CONSTRAINT gen2 ON Encargado IS 'Restriccion CHECK el cual nos asegura que el genero del encargado no sea la cadena vacia.';
COMMENT ON CONSTRAINT sal2 ON Encargado IS 'Restriccion CHECK para delimitar el salario del encargado entre 12000 y 19999 pesos.';
COMMENT ON CONSTRAINT dir3 ON Encargado IS 'Restriccion CHECK el cual nos asegura que la direccion del encargado no sea la cadena vacia.';
--Referencial
ALTER TABLE Encargado ADD CONSTRAINT encargado_fkey FOREIGN KEY(id_vivero)
REFERENCES Vivero(id_vivero);

COMMENT ON CONSTRAINT encargado_fkey ON Encargado IS 'Restriccion FOREIGN KEY de la llave foranea id_vivero de la tabla Vivero.';
--Restricciones Correo_Encargado----------------------------------------------------------
--Dominio
ALTER TABLE Correo_Encargado ALTER COLUMN correo SET NOT NULL;
ALTER TABLE Correo_Encargado ADD CONSTRAINT crr3 CHECK(correo <> '');
--Comentarios Dominio
COMMENT ON COLUMN Correo_Encargado.correo IS 'El correo es el identificador de la tabla Correo_Encargado, por lo que no puede ser nulo';
COMMENT ON CONSTRAINT crr3 ON Correo_Encargado IS 'Restriccion CHECK el cual nos asegura que el correo del encargado no sea la cadena vacia.';

--Entidad
ALTER TABLE Correo_Encargado ADD CONSTRAINT correo_encargado_pkey PRIMARY KEY(id_encargado,correo);

--Comentarios Entidad
COMMENT ON CONSTRAINT correo_encargado_pkey ON Correo_Encargado IS 'Restricción PRIMARY KEY que establece como identificador id_encargado y correo de la tabla Correo_Encargado.';


--Referencial
ALTER TABLE Correo_Encargado ADD CONSTRAINT correo_encargado_fkey FOREIGN KEY(id_encargado)
REFERENCES Encargado(id_encargado);

--Comentarios Referencias
COMMENT ON CONSTRAINT correo_encargado_fkey ON Correo_Encargado IS 'Restricción FOREIGN KEY que establece a id_encargado como llave foranea de la tabla Encargado';

--Restricciones Telefono_Encargado----------------------------------------------------------
--Dominio
ALTER TABLE Telefono_Encargado ALTER COLUMN telefono SET NOT NULL;
ALTER TABLE Telefono_Encargado ADD CONSTRAINT telefonoEn CHECK (telefono SIMILAR TO '[0-9]*');

--Comentarios Dominio
COMMENT ON COLUMN Telefono_Encargado.telefono IS 'El telefono es el identificador de la tabla Telefono_Encargado, por lo que no puede ser nulo';
COMMENT ON CONSTRAINT telefonoEn ON Telefono_Encargado IS 'Restriccion CHECK el cual nos asegura que el telefono del encargado sea una cadena de números.';


--Entidad
ALTER TABLE Telefono_Encargado ADD CONSTRAINT telefono_encargado_pkey PRIMARY KEY(id_encargado,telefono);
--Comentarios Entidad
COMMENT ON CONSTRAINT telefono_encargado_pkey ON Telefono_Encargado IS 'Restricción PRIMARY KEY que establece el telefono y id_encargado como identificador de la tabla Telefono_Encargado.';


--Referencial
ALTER TABLE Telefono_Encargado ADD CONSTRAINT telefono_encargado_fkey FOREIGN KEY(id_encargado)
REFERENCES Encargado(id_encargado);
--Comentarios Referencias
COMMENT ON CONSTRAINT telefono_encargado_fkey ON Telefono_Encargado IS 'Restricción FOREIGN KEY que establece a id_encargado como llave foranea de la tabla Telefono_Encargado';

--Restricciones Cuidador----------------------------------------------------------
--Entidad
ALTER TABLE Cuidador ADD CONSTRAINT cuidador_pkey PRIMARY KEY(id_cuidador);
ALTER TABLE Cuidador ADD CONSTRAINT uncuid UNIQUE(id_cuidador);
ALTER TABLE Vivero ADD CONSTRAINT idC UNIQUE(id_vivero);
--Dominio
ALTER TABLE Cuidador ALTER COLUMN id_cuidador SET NOT NULL;
ALTER TABLE Cuidador ADD CONSTRAINT nomb4 CHECK(nombre <> '');
ALTER TABLE Cuidador ADD CONSTRAINT apPat4 CHECK(paterno <>'');
ALTER TABLE Cuidador ADD CONSTRAINT apMat4 CHECK(materno <>'');
ALTER TABLE Cuidador ADD CONSTRAINT fechaDN CHECK(fecha_de_nacimiento >= '1990-01-01');
ALTER TABLE Cuidador ADD CONSTRAINT gen3 CHECK(genero <>'');
ALTER TABLE Cuidador ADD CONSTRAINT sal3 CHECK(salario between 9000 and 13999);
ALTER TABLE Cuidador ADD CONSTRAINT dir4 CHECK(direccion <>'');
--Referencial
ALTER TABLE Cuidador ADD CONSTRAINT cuidador_fkey FOREIGN KEY(id_vivero)
REFERENCES Vivero(id_vivero);

COMMENT ON CONSTRAINT cuidador_pkey ON Cuidador IS 'Llave primaria del Cuidador';
COMMENT ON CONSTRAINT cuidador_fkey ON Cuidador IS 'Llave foranea de la tabla vivero';
COMMENT ON CONSTRAINT uncuid ON Cuidador IS 'Se le asigna como unico el valor del id_cuidador';
COMMENT ON CONSTRAINT idC ON Vivero IS 'Id unico de la tabla vivero';
COMMENT ON COLUMN Cuidador.id_cuidador IS 'Se le indica que no puede tener valores nulos';
COMMENT ON CONSTRAINT nomb4 ON Cuidador IS 'Se le indica que el nombre del cuidador no sea una cadena vacia';
COMMENT ON CONSTRAINT apPat4 ON Cuidador IS 'Se le indica que el apellido paterno del cuidador no sea una cadena vacia';
COMMENT ON CONSTRAINT apMat4 ON Cuidador IS 'Se le indica que apellido materno del cuidador no sea una cadena vacia';
COMMENT ON CONSTRAINT fechaDN ON Cuidador IS 'Se le indica que la fecha de nacimiento sera a partir del 1ro de Enero de 1990';
COMMENT ON CONSTRAINT gen3 ON Cuidador IS 'Se le indica que el genero no sea una cadena vacia';
COMMENT ON CONSTRAINT sal3 ON Cuidador IS 'Se indica que el salario del cuidador sea en un rango de 9,000 a 13,999';
COMMENT ON CONSTRAINT dir4 ON Cuidador IS 'Se le indica que la direccion del cuidador no sea la cadena vacia';


--Restricciones Correo_Cuidador----------------------------------------------------------
--Dominio
ALTER TABLE Correo_Cuidador ALTER COLUMN correo SET NOT NULL;
ALTER TABLE Correo_Cuidador ADD CONSTRAINT crr4 CHECK(correo <> '');
--Entidad
ALTER TABLE Correo_Cuidador ADD CONSTRAINT correo_cuidador_pkey PRIMARY KEY(id_cuidador,correo);
--Referencial
ALTER TABLE Correo_Cuidador ADD CONSTRAINT correo_cuidador_fkey FOREIGN KEY(id_cuidador)
REFERENCES Cuidador(id_cuidador);

COMMENT ON COLUMN Correo_Cuidador.correo IS 'Se le indica que el correo del cuidador no puede tener valores nulos';
COMMENT ON CONSTRAINT crr4 ON Correo_Cuidador IS 'Se le indica que el correo no sea la cadena vacia';
COMMENT ON CONSTRAINT correo_cuidador_pkey ON Correo_Cuidador IS 'Llave primaria del correo del cuidador y de el cuiador';
COMMENT ON CONSTRAINT correo_cuidador_fkey ON Correo_Cuidador IS 'Llave foranea del correo del cuidador';

--Restricciones Telefono_Cuidador----------------------------------------------------------
--Dominio
ALTER TABLE Telefono_Cuidador ALTER COLUMN telefono SET NOT NULL;
ALTER TABLE Telefono_Cuidador ADD CONSTRAINT telefonoCu CHECK (telefono SIMILAR TO '[0-9]*');
--Entidad
ALTER TABLE Telefono_Cuidador ADD CONSTRAINT telefono_cuidador_pkey PRIMARY KEY(id_cuidador,telefono);
--Referencial
ALTER TABLE Telefono_Cuidador ADD CONSTRAINT telefono_cuidador_fkey FOREIGN KEY(id_cuidador)
REFERENCES Cuidador(id_cuidador);

COMMENT ON COLUMN Telefono_Cuidador.telefono IS 'Se le indica que no puede tener valores nulos';
COMMENT ON CONSTRAINT telefonoCu ON Telefono_Cuidador IS 'Se le indica que la restriccion CHECK en el telefono debe ser similar a un rango del 0 al 9';
COMMENT ON CONSTRAINT telefono_cuidador_pkey ON Telefono_Cuidador IS 'Llave primaria del telefono del cuiador';
COMMENT ON CONSTRAINT telefono_cuidador_fkey ON Telefono_Cuidador IS 'Llave foranea del telefono del cuidador';

--Restricciones Cajero----------------------------------------------------------
--Entidad
ALTER TABLE Cajero ADD CONSTRAINT cajero_pkey PRIMARY KEY(id_cajero);
ALTER TABLE Cajero ADD CONSTRAINT uncaj UNIQUE(id_cajero);
ALTER TABLE Vivero ADD CONSTRAINT idCa UNIQUE(id_vivero);
--Dominio
ALTER TABLE Cajero ALTER COLUMN id_cajero SET NOT NULL;
ALTER TABLE Cajero ADD CONSTRAINT fecha_de_nacimiento CHECK(fecha_de_nacimiento <= '1990-01-01');
ALTER TABLE Cajero ADD CONSTRAINT nombre CHECK(nombre <> '');
ALTER TABLE Cajero ADD CONSTRAINT paterno CHECK(paterno <> '');
ALTER TABLE Cajero ADD CONSTRAINT materno CHECK(materno <> '');
ALTER TABLE Cajero ADD CONSTRAINT sal4 CHECK(salario between 6000 and 9999);
ALTER TABLE Cajero ADD CONSTRAINT direccion CHECK(direccion <> '');
--Referencial
ALTER TABLE Cajero ADD CONSTRAINT cajero_fkey FOREIGN KEY(id_vivero)
REFERENCES Vivero(id_vivero);



COMMENT ON CONSTRAINT cajero_pkey ON Cajero IS 'La llave primaria de la tabla Cajero';
COMMENT ON CONSTRAINT uncaj ON Cajero IS 'Restriccion unique para el atributo id_cajero';
COMMENT ON CONSTRAINT idCa ON Vivero IS 'Restriccion unique para el atributo id_vivero';
COMMENT ON CONSTRAINT fecha_de_nacimiento ON Cajero IS 'Restriccion check el cual nos asegura que la fecha de nacimeinto no sea menor al 1 de enero de 1990';
COMMENT ON CONSTRAINT nombre ON Cajero IS 'Restriccion check el cual nos asegura que el nombre no sea vacio';
COMMENT ON CONSTRAINT paterno ON Cajero IS 'Restriccion check el cual nos asegura que el apellido paterno no sea vacio';
COMMENT ON CONSTRAINT materno ON Cajero IS 'Restriccion check el cual nos asegura que el apellido materno no sea vacio';
COMMENT ON CONSTRAINT sal4 ON Cajero IS 'Restriccion check el cual nos asegura que el salario este entre 6000 y 9999 pesos';
COMMENT ON CONSTRAINT direccion ON Cajero IS 'Restriccion check el cual nos asegura que la direccion no sea vacio';
COMMENT ON CONSTRAINT cajero_fkey ON Cajero IS 'La llave foranea de la tabla Cajero';


--Restricciones Correo_Cajero----------------------------------------------------------

--Dominio
ALTER TABLE Correo_Cajero ALTER COLUMN id_cajero SET NOT NULL;
ALTER TABLE Correo_Cajero ADD CONSTRAINT correo CHECK(correo <> '');
--Entidad
ALTER TABLE Correo_Cajero ADD CONSTRAINT correo_cajero_pkey PRIMARY KEY(id_cajero,correo);
--Referencial

ALTER TABLE Correo_Cajero ADD CONSTRAINT correo_cajero_fkey FOREIGN KEY(id_cajero)
REFERENCES Gerente(id_gerente);


COMMENT ON TABLE Correo_Cajero IS 'Tabla que contiene todos los correos de todos los empleados con puesto de cajeros';
COMMENT ON COLUMN Correo_Cajero.id_cajero IS 'Identificador del cajero al que nos referimos';
COMMENT ON COLUMN Correo_Cajero.correo IS 'Correo del cajero';
COMMENT ON CONSTRAINT correo ON Correo_Cajero IS 'Restriccion check el cual nos asegura que el correo no sea vacio';
COMMENT ON CONSTRAINT correo_cajero_pkey ON Correo_Cajero IS 'La llave primaria de la tabla Correo_Cajero';
COMMENT ON CONSTRAINT correo_cajero_fkey ON Correo_Cajero IS 'La llave foranea de la tabla Correo_Cajero';

--Restricciones Telefono_Cajero----------------------------------------------------------

--Dominio
ALTER TABLE Telefono_Cajero ALTER COLUMN id_cajero SET NOT NULL;
ALTER TABLE Telefono_Cajero ADD CONSTRAINT telefono CHECK(telefono <> '');
COMMENT ON COLUMN Telefono_Cajero.telefono IS 'El telefono es el identificador de la tabla Telefono_Cajero, por lo que no puede ser nulo';
COMMENT ON CONSTRAINT telefono ON Telefono_Cajero IS 'Restriccion CHECK el cual nos asegura que el telefono del cajero sea una cadena de números.';

--Entidad
ALTER TABLE Telefono_Cajero ADD CONSTRAINT telefono_cajero_pkey PRIMARY KEY(id_cajero,telefono);
--Referencial
ALTER TABLE Telefono_Cajero ADD CONSTRAINT telefono_cajero_fkey FOREIGN KEY(id_cajero)
REFERENCES Cajero(id_cajero);



COMMENT ON TABLE Telefono_Cajero IS 'Tabla que contiene todos los telefonos de todos los empleados con puesto de cajeros';
COMMENT ON COLUMN Telefono_Cajero.telefono IS 'Telefono del cajero';
COMMENT ON CONSTRAINT telefono_cajero_pkey ON Telefono_Cajero IS 'La llave primaria de la tabla Telefono_Cajero';
COMMENT ON CONSTRAINT telefono_cajero_fkey ON Telefono_Cajero IS 'La llave foranea de la tabla Telefono_Cajero';


--Restricciones Metodo_Pago---------------------------------------------------------------
--Entidad
ALTER TABLE Metodo_Pago ADD CONSTRAINT id_pago_pkey PRIMARY KEY(id_pago);
ALTER TABLE Metodo_Pago ADD CONSTRAINT unpago UNIQUE(id_pago);
--Dominio
ALTER TABLE Metodo_Pago ADD CONSTRAINT credito CHECK(credito SIMILAR TO '[0-9]*');	
ALTER TABLE Metodo_Pago ADD CONSTRAINT crediT CHECK(CHAR_LENGTH(credito)=16);
ALTER TABLE Metodo_Pago ADD CONSTRAINT debiT CHECK(CHAR_LENGTH(debito)=16);	
ALTER TABLE Metodo_Pago ADD CONSTRAINT debito CHECK(debito SIMILAR TO '[0-9]*');
ALTER TABLE Metodo_Pago ALTER COLUMN es_tarjeta SET NOT NULL;	
ALTER TABLE Metodo_Pago ALTER COLUMN es_efectivo SET NOT NULL;

--Restricciones Venta_Electronica---------------------------------------------------------
--Entidad
ALTER TABLE Venta_Electronica ADD CONSTRAINT id_venta_electronica_pkey PRIMARY KEY(id_venta_electronica);
ALTER TABLE Venta_Electronica ADD CONSTRAINT unVent UNIQUE(id_venta_electronica);
COMMENT ON CONSTRAINT id_venta_electronica_pkey ON Venta_Electronica IS 'Restriccion UNIQUE para el id_venta_electronica';
COMMENT ON CONSTRAINT unVent ON Venta_Electronica IS 'Restriccion UNIQUE para el id_venta_electronica';

--Dominio
ALTER TABLE Venta_Electronica ALTER COLUMN id_vivero SET NOT NULL;
ALTER TABLE Venta_Electronica ALTER COLUMN numero_de_cliente SET NOT NULL;
ALTER TABLE Venta_Electronica ALTER COLUMN id_pago SET NOT NULL;
ALTER TABLE Venta_Electronica ALTER COLUMN  numero_de_producto SET NOT NULL;
ALTER TABLE Venta_Electronica ADD CONSTRAINT precio_desglose CHECK(precio_desglose <>'');
ALTER TABLE Venta_Electronica ADD CONSTRAINT des CHECK(desglose_productos <>'');
ALTER TABLE Venta_Electronica ADD CONSTRAINT direccion CHECK(direccion <>'');
ALTER TABLE Venta_Electronica ALTER COLUMN numero_de_seguimiento SET NOT NULL;
ALTER TABLE Venta_Electronica ALTER COLUMN total SET NOT NULL;
ALTER TABLE Venta_Electronica ADD CONSTRAINT fecha_pedido CHECK(fecha_pedido >= '2010-01-01');
--Referencial
ALTER TABLE Venta_Electronica ADD CONSTRAINT id_vivero_fkey FOREIGN KEY (id_vivero)
REFERENCES Vivero(id_vivero);
ALTER TABLE Venta_Electronica ADD CONSTRAINT numero_de_cliente_fkey FOREIGN KEY (numero_de_cliente)
REFERENCES Cliente(numero_de_cliente);
ALTER TABLE Venta_Electronica ADD CONSTRAINT id_pago_fkey FOREIGN KEY (id_pago)
REFERENCES Metodo_Pago(id_pago);	

--Restricciones Poseer-------------------------------------------------------------------
--Dominio
ALTER TABLE Poseer ALTER COLUMN numero_de_cliente SET NOT NULL;
ALTER TABLE Poseer ALTER COLUMN id_vivero SET NOT NULL;
--Referencial
ALTER TABLE Poseer ADD CONSTRAINT id_vivero_fkey FOREIGN KEY (id_vivero)
REFERENCES Vivero(id_vivero);
ALTER TABLE Poseer ADD CONSTRAINT numero_de_cliente_fkey FOREIGN KEY (numero_de_cliente)
REFERENCES Cliente(numero_de_cliente);



--Restricciones Venta_Fisica---------------------------------------------------------------
--Entidad
ALTER TABLE Venta_Fisica ADD CONSTRAINT id_venta_fisica_pkey PRIMARY KEY(id_venta_fisica);
ALTER TABLE Venta_Fisica ADD CONSTRAINT unVentF UNIQUE(id_venta_fisica);
--Dominio
	ALTER TABLE Venta_Fisica ALTER COLUMN id_vivero SET NOT NULL;
	ALTER TABLE Venta_Fisica ALTER COLUMN numero_de_cliente SET NOT NULL;
	ALTER TABLE Venta_Fisica ALTER COLUMN id_pago SET NOT NULL;
	ALTER TABLE Venta_Fisica ALTER COLUMN id_cajero SET NOT NULL;
	ALTER TABLE Venta_Fisica ALTER COLUMN  numero_de_producto SET NOT NULL;
	ALTER TABLE Venta_Fisica ADD CONSTRAINT precio_desglose CHECK(precio_desglose <>'');
	ALTER TABLE Venta_Fisica ADD CONSTRAINT desglose_productos CHECK(desglose_productos <>'');
	ALTER TABLE Venta_Fisica ALTER COLUMN total SET NOT NULL;
--Referencial
ALTER TABLE Venta_Fisica ADD CONSTRAINT id_vivero_fkey FOREIGN KEY (id_vivero)
REFERENCES Vivero(id_vivero);
ALTER TABLE Venta_Fisica ADD CONSTRAINT numero_de_cliente_fkey FOREIGN KEY (numero_de_cliente)
REFERENCES Cliente(numero_de_cliente);
ALTER TABLE Venta_Fisica ADD CONSTRAINT id_pago_fkey FOREIGN KEY (id_pago)
REFERENCES Metodo_Pago(id_pago);
ALTER TABLE Venta_Fisica ADD CONSTRAINT id_cajero_fkey FOREIGN KEY (id_cajero)
REFERENCES Cajero(id_cajero);




