{
Implemente un programa que lea por teclado dos números enteros e imprima en pantalla los
valores leídos en orden inverso. Por ejemplo, si se ingresan los números 4 y 8, debe mostrar el
mensaje: Se ingresaron los valores 8 y 4
}


program imprimir_numeros;
var
    num1, num2: integer;
begin
  write('Ingrese un numero: ');
  read(num1);
  write('Ingrese un numero: ');
  read(num2);
  writeln('El segundo número ingresado es: ', num2);
  writeln('El primer número ingresado es: ', num1);
end.

