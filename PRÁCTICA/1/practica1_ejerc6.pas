{
Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La
lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse
Al finalizar la lectura, informar:
	a. La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2).
	* 
	b. La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar
	1).
	* 
	c. El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean
	menor al valor 2500 (en el ejemplo anterior se debería informar 0%)
}


program ejercicio6_prac1;
var
	legajo, cantAlum, cantAprob, cantDest: integer;
	prom, porcAlumDest: real;

BEGIN
	cantAlum:= 0;
	cantAprob:= 0;
	cantDest:= 0;
	porcAlumDest:= 0;
	
	write('Ingrese su legajo: ');
	read(legajo);
	
	while (legajo <> -1) do
	 begin
		{Ingreso de datos}
		write('Ingrese su promedio: ');
		read(prom);
		
		{If para que no almacene el legajo -1}
		if (legajo <> -1) then
		 begin
			cantAlum:= cantAlum + 1; {+1 Alumno leído}
		 end;
		 
		if (prom > 6.5) then
		 begin
			cantAprob:= cantAprob + 1
		 end; {Fin IF}

		if (prom > 8.5) and (legajo < 2500) then
		 begin
			cantDest:= cantDest + 1;
		 end;{Fin IF}
		 
		write('Ingrese su legajo: ');
		read(legajo);
		
	 end; {Fin While}
	 
	porcAlumDest:= (cantDest * 100) / cantAlum;
	
	{IMPRESIÓN}
	writeln('La cantidad de alumnos leidos: ', cantAlum);
	writeln('La cantidad de alumnos cuyo promedio es mayor a 6.5: ', cantAprob);
	writeln('El porcentaje de alumnos destacados, alumnos con promedio mayor a 8.5, cuyo legajo sean menor al valor 2500: ', porcAlumDest:8:2, '%');
	
END.

