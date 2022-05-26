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

DELIMITER $$
CREATE PROCEDURE ajusteDeHoras2 (IN cant int(4), in l int(4),IN Proyecto VARCHAR (100), IN Mes VARCHAR(100), IN ajuste numeric(5))
BEGIN
declare leg int(4);
set leg=l;
while cant!=0
do
CALL ajusteDeHoras (Proyecto, Mes, Leg,ajuste);
set cant=cant-1;
set leg=leg+1;
end while;
    
END;
drop procedure ajusteDeHoras2;
$$