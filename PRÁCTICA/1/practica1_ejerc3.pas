{
Realizar un programa que lea 3 números enteros y los imprima en orden descendente.
Por ejemplo, si se ingresan los valores 4, -10 y 12, deberá imprimir: 12 4 -10
}


program orden_descendiente;
var
	a,b,c: integer;
	temporal: integer;

BEGIN
	write('Ingrese un numero: ');
	read(a);
	write('Ingrese un segundo numero: ');
	read(b);
	write('Ingrese un tercer numero: ');
	read(c);
	
	{a > b}
	{cab, acb, abc}
	if not(a > b) then
	begin
		temporal:= a;
		a:= b;
		b:= temporal;
	end;
	
	{a > c}
	{acb, abc}
	if not(a > c) then
	begin
		temporal:= a;
		a:= c;
		c:= temporal;
	end;
	
	{b > c}
	{abc}
	if not(b > b) then
	begin
		temporal:= b;
		b:= c;
		c:= temporal;
	end;
	
	writeln(a, ' ', b, ' ', c);
END.
