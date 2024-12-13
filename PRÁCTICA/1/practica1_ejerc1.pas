{
* Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los
dos números es el mayor. Si son iguales debe informar en pantalla lo siguiente: “Los números leídos
son iguales”
}


program mayor;
var
	num1, num2: integer;

BEGIN
	write('Ingrese un numero: ');
	read(num1);
	write('Ingrese otro numero: ');
	read(num2);
	if(num1>num2) then
	 begin
		writeln('El ', num1, ' es mayor que el ', num2);
	 end;
	if(num2>num1) then
	 begin
		writeln('El ', num2, ' es mayor que el ', num1);
	 end;
	 if(num1=num2) then
	  begin
		writeln('Los numeros leidos son iguales.');
	  end
END.

