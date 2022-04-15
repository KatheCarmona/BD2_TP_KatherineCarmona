USE PracticaTP;

DELIMITER $$
CREATE PROCEDURE CalcularLiquidacionMensual (IN IdCliente CHAR (4), IN Mes VARCHAR(100))
BEGIN
	INSERT INTO LiquidacionMensual (Proyecto, Cliente, Rol, Mes, Horas)
    SELECT Proyecto, Cliente, Rol, Mes, SUM(rH.HsSem+ rh.HsMes+rh.HsDia)
    FROM RendicionHs rh
	WHERE rh.Mes = Mes AND rh.IdCliente = IdCliente
    GROUP BY rh.Rol;
END
$$