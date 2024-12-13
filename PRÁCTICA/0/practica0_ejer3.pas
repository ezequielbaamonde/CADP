{
Implemente un programa que lea dos números reales e imprima el resultado de la división de
los mismos con una precisión de dos decimales. Por ejemplo, si se ingresan los valores 4,5 y 7,2,
debe imprimir: El resultado de dividir 4,5 por 7,2 es 0,62
}


program imprimir_numeros;
var
    num1, num2, division: real;
begin
	write('Ingrese un dividendo: ');
	read(num1);
	write('Ingrese un divisor: ');
	read(num2);
	division:= num1/num2;
	writeln('Resultado de la division: ', division:1:2);
end.
