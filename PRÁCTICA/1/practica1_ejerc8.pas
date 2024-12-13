{
Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos
uno de ellos no lo era. Por ejemplo, si se leen los caracteres “a e o” deberá informar “Los tres son
vocales”, y si se leen los caracteres “z a g” deberá informar “al menos un carácter no era vocal”.
}


program ejercicio8;

type
	vocales = (a, e, i ,o ,u);
var
	caracter: vocales;
	aux, contador: integer;

BEGIN
	contador:= 0;
	aux:= 0;
	while (aux < 3) do
	begin
		write('Ingrese una letra: ');
		read(caracter);
		{CONDICIÓN}
		if(caracter = a) or (caracter = e) or (caracter = i) or (caracter = o) or (caracter = u) then
		 begin
			 contador:= contador + 1;
		 end
		else
		 begin
			writeln('La letra ingresada no es vocal');
		 end;
		{FIN CONDICIÓN} 
		aux:= aux + 1;
		
	end;{FIN WHILE}
	
	{CONDICIÓN}
	if (contador = 3) then
	 begin
		writeln('Las 3 letras ingresadas son vocales');
	 end
	 else
	  begin
		writeln('Al menos un caracter no era vocal');
	  end;
	{FIN CONDICIÓN}
END.

