{
  
a) ¿Qué valores toma la variable numeros al finalizar el primer bloque for?
* Del 1-10
* 
b) Al terminar el programa, ¿con qué valores finaliza la variable números?
*
c) Si se desea cambiar la línea 11 por la sentencia: for i:=1 to 9 do ¿Cómo debe modificarse el
código para que la variable números contenga los mismos valores que en 1.b)?
d) ¿Qué valores están contenidos en la variable numeros si la líneas 11 y 12 se reemplazan por:
for i:=1 to 9 do
numeros[i+1] := numeros[i];
}


program practica4_1;
type
	vnums = array[1..10] of integer;
var
	numeros: vnums;
	i: integer;

BEGIN
	for i:=1 to 10 do
	 begin
		numeros[i] := i;
		writeln(numeros[i]);
	end;
END.

