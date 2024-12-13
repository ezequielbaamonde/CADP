{
4. Utilizando el programa del ejercicio 1, realizar los siguientes módulos:
	a. Máximo: recibe la lista como parámetro y retorna el elemento de valor máximo.
	b. Mínimo: recibe la lista como parámetro y retorna el elemento de valor mínimo.
	c. Múltiplos: recibe como parámetros la lista L y un valor entero A, y retorna la cantidad de elementos de la
	lista que son múltiplos de A.
}

program JugamosConListas;
type
	lista = ^nodo;
	nodo = record
		num : integer;
		sig : lista;
end;

procedure agregarAlFinal(var L: lista; v: integer); {el puntero recibido "L" es por referencia ya que debe modificar la lista}
	var
		nuevo, aux : lista; {para realizar enganches}
	begin
		new(nuevo);
		nuevo^.num := v;
		nuevo^.sig := nil;
		if (L = nil) then L:= nuevo
		else begin
			aux:= L;
			while(aux^.sig <> nil) do
				aux:= aux^.sig; {Recorro la lista y me quedo en el ultimo}
				
			aux^.sig:= nuevo; {Le indico al ultimo elemento que su siguiente es NUEVO}
		end;
	end;

procedure imprimirEnteros(pI: lista);
 begin
	while(pI<>nil) do begin
		writeln(pI^.num);
		pI:= pi^.sig;
	end;
 end;
 
procedure incrementarDatos (punI: lista; v: integer);
 begin
	while (punI<>nil) do begin
		punI^.num:= punI^.num + v;
		punI:= punI^.sig
	end;
 end;

function maximo (punI: lista):integer;
var max: integer;
 begin
	max:= -9999;
	while(punI <> nil) do begin
		if (punI^.num > max) then
			max:= punI^.num;
		punI:= punI^.sig;
	end;
	maximo:= max;
 end;
 
function minimo (punI: lista):integer;
var min: integer;
 begin
	min:= 9999;
	while(punI <> nil) do begin
		if (punI^.num < min) then
			min:= punI^.num;
		punI:= punI^.sig;
	end;
	minimo:= min;
 end;

procedure multiplos(punI: lista; v:integer);
var
	calculo: integer;
 begin
	while(punI <> nil) do begin
		calculo:= punI^.num MOD v;
		if (calculo = 0) then
			writeln(punI^.num, ' es multiplo de ', v);
		punI:= punI^.sig;
	end;
 end;

var
	pri : lista; {puntero que contiene al registro NODO con el valor y proxima dirección}
	valor : integer;
begin
	pri := nil; {inicializo puntero}
	writeln('Ingrese un numero');
	read(valor);
	while (valor <> 0) do begin
		agregarAlFinal(pri, valor); {envio puntero y valor}
		writeln('Ingrese un numero');
		read(valor);
	end;
	
	{Modulo 1C}
	writeln('Lista: ');
	imprimirEnteros(pri);
	
	{Modulo 1D}
	writeln('Ingrese un numero para incrementar valores: ');
	read(valor);
	while(valor <> 0) do begin
		incrementarDatos(pri, valor);
		writeln('Ingrese otro numero para incrementar: ');
		read(valor);
	end;
	writeln('Lista incrementada: ');
	imprimirEnteros(pri);
	
	{Modulo 4A}
	writeln('Numero maximo de la lista: ', maximo(pri)); {llamo función}
	{Modulo 4B}
	writeln('Numero minimo de la lista: ', minimo(pri)); {llamo función}
	{Modulo 4C}
	writeln('Ingrese un valor y verificaremos que elementos de la lista son sus multiplos: ');
	read(valor);
	multiplos(pri, valor);
end.
