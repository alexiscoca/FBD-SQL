DROP SCHEMA IF EXISTS public CASCADE;
CREATE SCHEMA public;

--Llaves primarias
CREATE TABLE planta(
	especie VARCHAR(50),
	sustrato VARCHAR(50),
	genero VARCHAR(50),
	cuidadosBasicos VARCHAR(50),
	nombre VARCHAR(50),
	precio INT,
	fechaDeGerminacion DATE,
	tiempoDeRiego TIME,
	sol CHAR(2),
	sombra CHAR(2),
	resolana CHAR(2)
);

--Reestricciones 
ALTER TABLE planta ALTER COLUMN especie SET NOT NULL;
ALTER TABLE planta ADD CONSTRAINT nombrep1 CHECK(nombre <> '');

--Entidad
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
ALTER TABLE vivero ADD CONSTRAINT id_vivero_pkey PRIMARY KEY(id_vivero);