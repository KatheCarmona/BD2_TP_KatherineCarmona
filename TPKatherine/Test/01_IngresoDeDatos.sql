USE PracticaTP;

/*---------------------TABLA CLIENTE------------------------------------------*/
CALL insertarClientes('TT', "Tecno Trip", "CC-Principal", "CF-Principal");
CALL insertarClientes('FLT', "Facilita", "CC-Secundario", "CF-Secundario" );

/*----------------------TABLA EMPLEADO---------------------------------------*/
CALL insertarEmpleados ('PM01', "Laura Perez","Project Manager");
CALL insertarEmpleados ('DV01', "Jose Suarez","Desarrollador");
CALL insertarEmpleados ('ST01',"Juana Ramirez", "Tester");
CALL insertarEmpleados ('AD01', "Federico Lama","Administrador");
CALL insertarEmpleados ('DO01', "Liliana Torres","DevOps");
CALL insertarEmpleados ('DV02', "Catalina Kent","Desarrollador");
CALL insertarEmpleados ('ST02',"Diego Cruz", "Tester");
CALL insertarEmpleados ('DO02', "Bruno Borac","DevOps");

/*-------------------TABLA PROYECTO------------------------------------------*/
CALL insertarProyectos('TTA','TT', "Sistema Avion");
CALL insertarProyectos('FLW','FLT', "Facilita Web");
