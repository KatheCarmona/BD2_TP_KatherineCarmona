USE PracticaTP;

DELIMITER $$
CREATE PROCEDURE insertarClientes( IN IdCli CHAR (4), IN des VARCHAR (100), IN cCost VARCHAR (200), IN cFac VARCHAR(200))
BEGIN
INSERT INTO Cliente (IdCliente,Descripcion, cenCostos, cenFacturacion) VALUES (IdCli, des, cCost, cFac);
END;

DELIMITER $$
CREATE PROCEDURE insertarEmpleados(IN leg CHAR (4), IN NyA VARCHAR (200), IN rol VARCHAR(100))
BEGIN
INSERT INTO Empleado (Legajo, NombreApellido, Rol) VALUES (leg, NyA, rol);
END

DELIMITER $$
CREATE PROCEDURE insertarProyectos(IN IdPy CHAR (5), IN IdCli CHAR (4), IN descr VARCHAR (100))
BEGIN
INSERT INTO Proyecto (IdProyecto, IdCliente, Descripcion) VALUES (IdPy, IdCli, descr);
END

$$
