{
Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un
número X, se escribe |X| y se define como:
|X| = X cuando X es mayor o igual a cero
|X| = -X cuando X es menor a cero
}


program valorabsoluto;
var
	num: real;

BEGIN
	write('Ingrese un numero para imprimir su valor absoluto: ');
	read(num);
	if(num>=0) then
	 begin
		writeln('El valor absoluto del numero ingresado es: ', num:1:2);
	 end;
	if(num<0) then
	 begin
		writeln('El valor absoluto del numero negativo ingresado es: ', -1*num:1:2);
	 end;
END.
