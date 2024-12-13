{Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se
ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído).}
program reales;

var
	num, doble: real;


BEGIN
	write('Ingrese un numero real con dos decimales: ');
	read(num);
	doble:= num*2;
	while (num <> doble) do
	 begin
		doble:= num*2;
		write('Ingrese otro numero real con dos decimales: ');
		read(num);
	 end;
	writeln('Se ha ingresado el doble del numero real anteriormente leido: ',  num:1:2);
	
	
END.
