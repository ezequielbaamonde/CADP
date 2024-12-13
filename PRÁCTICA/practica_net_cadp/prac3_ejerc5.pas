{
   A. Realizar un módulo que reciba un par de números (numA,numB) y retorne si numB es el doble de numA.
   B. Utilizando el módulo realizado en el inciso a., realizar un programa que lea secuencias de pares de
	  números hasta encontrar el par (0,0), e informe la cantidad total de pares de números leídos y la cantidad de
	  pares en las que numB es el doble de numA.
	  Ejemplo: si se lee la siguiente secuencia: (1,2) (3,4) (9,3) (7,14) (0,0) el programa debe informar los valores
      4 (cantidad de pares leídos) y 2 (cantidad de pares en los que numB es el doble de numA).
}


program ejerc3_5;
procedure dobleDelNumero(numA, numb: integer, var doble:integer);
	begin
		if ((numA*2)= numB) then
			doble:= doble + 1; 
	end;

begin
	{...
	esDoble:= 0;
	dobleDelNumero(num1,num2,esDoble);
	}
	{retorna el parametro esDoble en un write}
	
	{INCISO B}
	{
	cantLeidos:= 0;
	cantParesDob:= 0;
	
	readln(num1);
	readln(num2);
	while (num1 <0>) or (num2<0>) do
	begin
		cantLeidos:= cantLeidos + 1;
		dobleDelNumero(num1, num2, cantParesDob)
		readln(num1); readln(num2);
	end;
	write('La cantidad pares leidos es: ', cantLeidos, ' - La cantidad de pares en los que el numB es el doble de numA: ',cantParesDob);
	}
END.

