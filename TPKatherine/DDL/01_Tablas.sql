CREATE DATABASE PracticaTP;
USE PracticaTP;

CREATE TABLE Empleado (
    Legajo CHAR(4) PRIMARY KEY,
    NombreApellido VARCHAR (200),
    Rol VARCHAR(100)
);

CREATE TABLE Proyecto(
IdProyecto CHAR (5) PRIMARY KEY,
IdCliente CHAR (4),
Descripcion VARCHAR (100)
);

CREATE TABLE Cliente (
IdCliente CHAR (4) PRIMARY KEY,
Descripcion VARCHAR (100),
cenCostos VARCHAR (200),
cenFacturacion VARCHAR (200)
);

CREATE TABLE LiquidacionMensual (
IdLiquidacion INT (2) PRIMARY KEY NOT NULL auto_increment,
Proyecto VARCHAR (100), 
Cliente VARCHAR (100), 
Rol VARCHAR(100),
Mes VARCHAR (100),
Horas NUMERIC (6)
);

CREATE TABLE RendicionHs (
    Legajo CHAR(4),
    Rol VARCHAR(100),
    IdProyecto CHAR (5),
    Proyecto VARCHAR (100), 
    IdCliente CHAR (4),
    Cliente VARCHAR (100),
    Mes VARCHAR(100),
    HsMes NUMERIC(5),
    HsSem NUMERIC(4),
    HsDia NUMERIC(3)
);
