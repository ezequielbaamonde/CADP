{
a. ¿Qué imprime si se lee el valor 10 en la variable x ?
	Imprime 25 porque a cada bucle del for le suma el i+1 y se le suma a num2
	* 
b. ¿Qué imprime si se lee el valor 10 en la variable x y se cambia el encabezado del procedure por:
procedure suma(num1: integer; num2:integer);
	Imprime 10 porque no hay un parametro de referencia.
	*

c. ¿Qué sucede si se cambia el encabezado del procedure por:
procedure suma(var num1: integer; var num2:integer);
	La variable i nunca se incrementa y pasa a ser 0 ya que en la función se le asigna 0
	* Error
	*
   
}


program Ejercicio3_1;

procedure suma(num1: integer; var num2:integer);
	begin
		num2 := num1 + num2;
		num1 := 0;
	end;

var
	i, x : integer;
begin
	read(x); { leo la variable x }
	for i:= 1 to 5 do
		suma(i,x);
	write(x); { imprimo las variable x }
end.
