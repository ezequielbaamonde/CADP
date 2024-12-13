{
Modifique el programa anterior para que el mensaje de salida muestre la suma de ambos
números:
a. Utilizando una variable adicional
b. Sin utilizar una variable adicional
}


program imprimir_numeros;
var
    num1, num2, suma: integer;
begin
  write('Ingrese un numero: ');
  read(num1);
  write('Ingrese un numero: ');
  read(num2);
  suma:= num1 + num2;
  writeln('Impresion con variable adicional...');
  writeln('Resultado de la suma: ', suma);
  writeln('Impresion sin variable adicional...');
  writeln('Resultado de la suma: ', num1 + num2);
end.
