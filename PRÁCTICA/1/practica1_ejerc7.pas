{
Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un
almacén. 
* La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse.

Para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un
10% al precio anterior.
* 
* Por ejemplo:
○ Si se ingresa el código 10382, con precio actual 40, y nuevo precio 44, deberá imprimir: “el
aumento de precio del producto 10382 no supera el 10%”
○ Si se ingresa el código 32767, con precio actual 30 y nuevo precio 33,01, deberá imprimir: “el
aumento de precio del producto 32767 es superior al 10%”
}


program ejercicio7;
var
	precioActual, precioNuevo, diferencia, porcentaje: real;
	codigo: integer;

BEGIN
	diferencia:= 0;
	porcentaje:= 0; 
	write('Ingrese el codigo del producto: ');
	read(codigo);
	
	while (codigo <> 32767) do
	 begin
		write('Ingrese el precio ACTUAL del producto ingresado: ');
		read(precioActual);
		
		write('Ingrese el precio NUEVO del producto ingresado: ');
		read(precioNuevo);
		
		{CALCULO CUÁL VALOR ES MAYOR PARA REALIZAR EL CALCULO
		 DE LA DIFERENCIA CON RESULTADO POSITIVO}
		if (precioActual > precioNuevo) then
		 begin
			diferencia:= (precioActual-precioNuevo);
		 end
		 else
		  begin
			diferencia:= (precioNuevo-precioActual);
		  end;
		  	
		porcentaje:= (diferencia*100) / precioActual; {Cuánto aumento/bajo el producto en %}
		
		{Si supera el 10% del producto con valor inicial}
		if (porcentaje > 10) then
		 begin
			writeln('El valor nuevo del producto ', codigo, ' supera en un 10% el valor viejo.');
		 end
		 else
		  begin
			writeln('El valor nuevo del producto ', codigo, ' NO supera en un 10% el valor viejo.');
		  end;
		  
		writeln(###################################################);  
		write('Ingrese el codigo del producto: ');
		read(codigo);  
	 end;
	
END.

