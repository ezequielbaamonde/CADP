{
	¿Qué imprime si se lee la siguiente secuencia de valores? 250, 35, 100
	* Si se ingresa el valor 250 suma a par dos digitos y uno a impar
	* Si se ingresa el valor 35 suma dos digitos que son impares
	* Si se ingresa 100 suma dos digitos pares y uno impar
}


Program ejercicio3_2;

procedure digParesImpares(num : integer; var par, impar : integer); {Par e Impar son de referencia}
	var
		dig: integer;
	begin
		while (num <> 0) do begin
			dig:= num mod 10;
		if((dig mod 2)= 0) then
			par := par + 1
		else
			impar:= impar + 1;
			num := num DIV 10;
		end;
	end;

var
	dato, par, impar: integer;
begin
	par := 0;
	impar := 0;
	repeat
		read(dato);
		digParesImpares(dato,par,impar);
	until (dato = 100);
	writeln('Digitos Pares: ',par, ' - Digitos Impares:', impar);
end.
