USE PracticaTP;

SELECT * FROM empleado ORDER BY Legajo;
SELECT * FROM cliente;
SELECT * FROM proyecto;

SELECT * FROM rendicionhs ORDER BY Proyecto;
SELECT * FROM liquidacionmensual;

SELECT * FROM liquidacionmensual WHERE Cliente = "Facilita";
SELECT * FROM liquidacionmensual WHERE Cliente = "Tecno Trip";
delete from liquidacionmensual where rol ="Desarrollador Semi Senior";

SELECT * FROM liquidacionmensual lm WHERE lm.Proyecto = "Proyecto 1";
SELECT * FROM liquidacionmensual lm WHERE Proyecto = "Proyecto 2";
