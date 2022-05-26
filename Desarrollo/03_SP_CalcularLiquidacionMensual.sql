USE PracticaTP;

DELIMITER $$
CREATE PROCEDURE CalcularLiquidacionMensual (IN IdClie CHAR (4), IN Mes VARCHAR(100))
BEGIN
declare cli varchar(100);
declare py varchar (100);
set cli =(select Cliente from RendicionHs rh where rh.IdCliente=IdClie group by rh.IdCliente);
set py=(select Proyecto from RendicionHs rh where rh.IdCliente=IdClie group by rh.IdProyecto);
	INSERT INTO LiquidacionMensual (Proyecto, Cliente, Rol, Mes, Horas)
    SELECT Proyecto, Cliente, Rol, Mes, SUM(rH.HsSem+ rh.HsMes+rh.HsDia)
    FROM RendicionHs rh
	WHERE rh.Mes = Mes AND rh.IdCliente = IdCliente
    GROUP BY rh.Rol;
    call insertarId(cli,Mes,py);
END
DELIMITER $$
CREATE PROCEDURE CalcularLiquidacionMensualPY (IN py VARCHAR (100), IN Mes VARCHAR(100))
BEGIN
declare cli varchar(100);
set cli =(select Cliente from RendicionHs rh where rh.Proyecto=py group by rh.Proyecto);
	INSERT INTO LiquidacionMensual (Proyecto, Cliente, Rol, Mes, Horas)
    SELECT Proyecto, Cliente, Rol, Mes, SUM(rH.HsSem+ rh.HsMes+rh.HsDia)
    FROM RendicionHs rh
	WHERE rh.Mes = Mes AND rh.Proyecto = py
    GROUP BY rh.Rol;
    call insertarId(cli,Mes,py);
END

DELIMITER $$
create procedure insertarId(in clie VARCHAR (100), IN pMes VARCHAR(100),IN py VARCHAR (100))
begin
	declare idA int(6);
	set idA =(select siguiente from numerador where tabla = "liquidacionMensual");
    update liquidacionMensual l set l.id=idA where l.Cliente=clie and l.Mes=pMes and l.Proyecto=py;
	set idA= idA+1;
	update numerador set siguiente=idA where tabla = "liquidacionMensual";

end;

$$