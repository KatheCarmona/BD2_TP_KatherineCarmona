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

Delimiter $$
CREATE procedure insertarPY(in cant int(4), in cli char(4))
begin
declare i int (4);
declare id char (4);
set i=0;
set id =3;
while i!=cant
do
	INSERT INTO Proyecto (IdProyecto, IdCliente, Descripcion) VALUES (id, cli, "descProyecto");
    set id=id+1;
    set i=i+1;
end while;
end;

Delimiter $$
CREATE procedure insertarParticipantes(in cant int(4))
begin
declare i int (4);
declare leg char (4);
set i=0;
set leg=1;
while i!=cant
do
	INSERT INTO Empleado (Legajo, NombreApellido, Rol) VALUES (leg, 'NombreApellido', "Rol_A");
    set leg=leg+1;
    set i=i+1;
end while;
end;
$$

insert into numerador (id, tabla, siguiente) values (0, "liquidacionMensual", 1);
