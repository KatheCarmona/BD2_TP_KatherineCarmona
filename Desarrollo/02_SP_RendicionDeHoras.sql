USE PracticaTP;

DELIMITER $$
CREATE PROCEDURE RendicionDeHoras (IN Leg CHAR(4),Rol VARCHAR(100), IN Proyecto VARCHAR (100), IN Mes VARCHAR(100),IN Modelo CHAR (1), IN hs NUMERIC(5))
BEGIN
IF Modelo = 'm' THEN INSERT INTO RendicionHs (Legajo,Rol, IdProyecto, Proyecto, IdCliente,Cliente, Mes, HsMes, HsSem,HsDia)
SELECT Leg, Rol, p.IdProyecto , Proyecto, c.IdCliente, c.Descripcion, Mes, hs, 0, 0
from proyecto p
Join cliente c on p.IdCliente = c.IdCliente
where p.Descripcion = Proyecto;

ELSEIF Modelo = 's' THEN INSERT INTO RendicionHs (Legajo,Rol, IdProyecto, Proyecto, IdCliente,Cliente, Mes, HsMes, HsSem,HsDia)
SELECT Leg, Rol, p.IdProyecto , Proyecto, c.IdCliente, c.Descripcion, Mes, 0, hs, 0
from proyecto p
Join cliente c on p.IdCliente = c.IdCliente
where p.Descripcion = Proyecto;

ELSEIF Modelo = 'd' THEN INSERT INTO RendicionHs (Legajo,Rol, IdProyecto, Proyecto, IdCliente,Cliente, Mes, HsMes, HsSem,HsDia)
SELECT Leg, Rol, p.IdProyecto , Proyecto, c.IdCliente, c.Descripcion, Mes, 0, 0, hs
from proyecto p
Join cliente c on p.IdCliente = c.IdCliente
where p.Descripcion = Proyecto;

  END IF;
  
  
  
END

DELIMITER $$
  CREATE PROCEDURE rendicion (IN cant int(4), IN l int(4), in Rol VARCHAR(100), IN Proyecto VARCHAR (100), IN Mes VARCHAR(100),IN Modelo CHAR (1), IN hs NUMERIC(5))
  begin
  declare leg int(4);
  declare i int(4);
  set leg=l;
  set i=0;
  while cant!=0
  do
  CALL RendicionDeHoras(leg, Rol, Proyecto, Mes, Modelo, hs);
  set cant=cant-1;
  set leg=leg+1;
  end while;
  end;
$$