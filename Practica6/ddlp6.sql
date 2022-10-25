DROP SCHEMA IF EXISTS public CASCADE;
CREATE SCHEMA public;

-----------------------------------Llaves primarias------------------------------------
CREATE TABLE planta(
	especie VARCHAR(50),
	sustrato VARCHAR(50),
	genero VARCHAR(50),
	cuidadosBasicos VARCHAR(50),
	nombre VARCHAR(50),
	precio INT,
	fechaDeGerminacion DATE,
	tiempoDeRiego DATE,
	sol BOOLEAN,
	sombra BOOLEAN,
	resolana BOOLEAN
);

--Reestricciones 
ALTER TABLE planta ALTER COLUMN especie SET NOT NULL;
--sustrato
ALTER TABLE planta ALTER COLUMN genero SET NOT NULL;
ALTER TABLE planta ALTER COLUMN cuidadosbasicos SET NOT NULL;
ALTER TABLE planta ADD CONSTRAINT nombrep1 CHECK(nombre <> '');
ALTER TABLE planta ALTER COLUMN precio SET NOT NULL;
ALTER TABLE planta ADD CONSTRAINT pfechaDeGerminacion CHECK(fechaDeGerminacion > '2022-01-01'); --DUDA
ALTER TABLE planta ADD CONSTRAINT ptiempoDeRiego CHECK(tiempoDeRiego < '2022-01-10'); --DUDA
ALTER TABLE planta ALTER COLUMN sol SET NOT NULL;
ALTER TABLE planta ALTER COLUMN sombra SET NOT NULL;
ALTER TABLE planta ALTER COLUMN resolana SET NOT NULL;

--Entidad
ALTER TABLE planta ADD CONSTRAINT pespecie UNIQUE(especie);
ALTER TABLE planta ADD CONSTRAINT especie_pkey PRIMARY KEY(especie); 


CREATE TABLE vivero(
	id_vivero INT,
	nombre VARCHAR(50),
	fecha_de_apertura DATE,
	direccion VARCHAR(50)
);

--Reestricciones 
ALTER TABLE vivero ALTER COLUMN id_vivero SET NOT NULL;
ALTER TABLE vivero ADD CONSTRAINT nombrev1 CHECK(nombre <> '');
ALTER TABLE vivero ALTER COLUMN fecha_de_apertura SET NOT NULL;
ALTER TABLE vivero ADD CONSTRAINT direccionv1 CHECK(direccion <> '');

--Entidad 
ALTER TABLE vivero ADD CONSTRAINT vid_vivero UNIQUE(id_vivero);
ALTER TABLE vivero ADD CONSTRAINT id_vivero_pkey PRIMARY KEY(id_vivero);

CREATE TABLE cliente(
	numero_de_cliente INT,
	nombre VARCHAR(50),
	paterno VARCHAR(50),
	materno VARCHAR(50),
	fecha_de_nacimiento DATE
);

--Reestricciones de Cliente
ALTER TABLE cliente ALTER COLUMN numero_de_cliente SET NOT NULL;
ALTER TABLE cliente ADD CONSTRAINT nombrec1 CHECK(nombre <> '');
ALTER TABLE cliente ADD CONSTRAINT paternoc1 CHECK(paterno <> '');
ALTER TABLE cliente ADD CONSTRAINT maternoc1 CHECK(materno <> '');
ALTER TABLE cliente ALTER COLUMN fecha_de_nacimiento SET NOT NULL;

--Entidad
ALTER TABLE cliente ADD CONSTRAINT cnumero_de_cliente UNIQUE(numero_de_cliente);
ALTER TABLE cliente ADD CONSTRAINT numero_de_cliente_pkey PRIMARY KEY(numero_de_cliente);


CREATE TABLE metododepago(
	idpago INT,
	credito INT,
	debito INT,
	estarjeta BOOLEAN,
	esefectivo BOOLEAN
);

--Reestricciones Metodo de Pago
ALTER TABLE metododepago ALTER COLUMN idpago SET NOT NULL;
--CREDITO
--DEBITO
ALTER TABLE metododepago ALTER COLUMN estarjeta SET NOT NULL;
ALTER TABLE metododepago ALTER COLUMN esefectivo SET NOT NULL,

--Entidad 
ALTER TABLE metododepago ADD CONSTRAINT midpago UNIQUE(idpago);
ALTER TABLE metododepago ADD CONSTRAINT idpago_pkey PRIMARY KEY(idpago);