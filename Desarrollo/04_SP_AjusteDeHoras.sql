USE PracticaTP;

DELIMITER $$
CREATE PROCEDURE ajusteDeHoras (IN Proyecto VARCHAR (100), IN Mes VARCHAR(100),IN Leg CHAR(4), IN ajuste numeric(5))
BEGIN
	DECLARE vrol VARCHAR(100); 
    DECLARE hrs NUMERIC(5);
    DECLARE dif NUMERIC(5);
    
    SET vrol= (Select Rol from RendicionHs r where r.Legajo=Leg and r.Mes=Mes);
	SET hrs= (select SUM(HsSem+ HsMes+ HsDia) from RendicionHs rh where rh.Legajo=Leg and rh.Mes= Mes);
	SET dif = ajuste - hrs; 
    
	INSERT INTO LiquidacionMensual (Proyecto, Cliente, Rol, Mes, Horas)
	SELECT Proyecto, Cliente, vrol, Mes, dif
    FROM LiquidacionMensual l
	WHERE l.Mes = Mes AND l.Rol = vrol;
    
END;
$$