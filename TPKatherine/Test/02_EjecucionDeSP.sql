USE PracticaTP;

CALL RendicionDeHoras('PM01',"Project Manager",'Facilita Web', "abril", 'm', 80);
CALL RendicionDeHoras('PM01',"Project Manager",'Sistema Avion', "marzo", 'm', 160);
CALL RendicionDeHoras('AD01',"Administrador",'Sistema Avion', "marzo", 'm', 160);
CALL RendicionDeHoras('AD01',"Administrador",'Facilita Web', "abril", 'm', 160);
CALL RendicionDeHoras('ST01',"Tester",'Sistema Avion', "marzo", 's', 40);
CALL RendicionDeHoras('DV01',"Desarrollador",'Sistema Avion', "marzo", 's', 40);
CALL RendicionDeHoras('DO01',"DevOps",'Sistema Avion', "marzo", 'd', 12);
CALL RendicionDeHoras('DO02',"DevOps",'Facilita Web', "abril", 'd', 12);
CALL RendicionDeHoras('ST02',"Tester",'Facilita Web', "abril", 's', 40);
CALL RendicionDeHoras('DV02',"Desarrollador",'Facilita Web', "abril", 's', 40);

CALL CalcularLiquidacionMensual ('FLT',"abril");
CALL CalcularLiquidacionMensual ('TT',"marzo");

CALL ajusteDeHoras ("Facilita Web", "abril", 'PM01',160);
CALL ajusteDeHoras ("Facilita Web", "abril", 'AD01',80);

CALL ajusteDeHoras ("Sistema Avion", "marzo", 'DO01',8);
CALL ajusteDeHoras ("Sistema Avion", "marzo", 'ST01',60);