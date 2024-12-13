{
1. program ejercicio5;
2. suma los números entre a y b, y retorna el resultado en c 
3. procedure sumar(a, b, c : integer) *FALTA var c, tiene que ser de referencia

4. 	var
5. 		suma : integer;
6. 	begin
		for i := a to b do *mal suma
9. 			suma := suma + i;
10. 	c := c + suma;
11. end;

	var
13. 	result : integer;
14. begin
15. 	result := 0;
16. 	readln(a); readln(b);
17. 	sumar(a, b, 0); *NO ES 0 SINO LA VARIABLE RESULT

18. 	write(‘La suma total es ‘,result); *NO RETORNA RESULT

	averigua si el resultado final estuvo entre 10 y 30
20. 	ok := (result >= 10) or (result <= 30); *NO DECLARADO OK y mal asignado su valor
21. 	if (not ok) then *evaluar la condición de la variable de arriba
22. 		write (‘La suma no quedó entre 10 y 30’);
23. end
* }


