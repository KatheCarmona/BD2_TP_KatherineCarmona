Use practicaTP;
create role app_carga;
create role liquidador;
create role administrador;

create user carga@`%` identified by '1234' ;
create user liq@`%` identified by '1234' ;
create user admi@`%` identified by '1234' ;

GRANT EXECUTE ON PROCEDURE PracticaTP.RendicionDeHoras TO app_carga;
GRANT EXECUTE ON PROCEDURE PracticaTP.rendicion  TO app_carga;
GRANT SELECT ON PracticaTP.rendicionhs TO app_carga;

GRANT EXECUTE ON PROCEDURE PracticaTP.CalcularLiquidacionMensual  TO liquidador;
GRANT EXECUTE ON PROCEDURE PracticaTP.CalcularLiquidacionMensualPY  TO liquidador;
GRANT SELECT ON PracticaTP.liquidacionmensual TO liquidador;
GRANT ALL privileges ON PracticaTP.* TO administrador;
 

GRANT `app_carga` to `carga`@`%`;
GRANT `liquidador` to `liq`@`%`;
GRANT `administrador` to `admi`@`%`;

Set default role all to carga, liq, admi;