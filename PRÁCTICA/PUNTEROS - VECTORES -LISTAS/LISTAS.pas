{
c. Implementar un módulo que imprima los números enteros guardados en la lista generada.
d. Implementar un módulo que reciba la lista y un valor, e incremente con ese valor cada dato de la lista
}
program JugamosConListas;
type
	lista = ^nodo;
	nodo = record
		num : integer;
		sig : lista;
end;

procedure armarNodo(var L: lista; v: integer); {el puntero recibido "L" es por referencia ya que debe modificar la lista}
	var
		aux : lista; {para realizar enganches}
	begin
		new(aux); {reservo memoria para crear la lista}
		aux^.num := v; {ingreso al campo NUM del registro NODO y le cargo el valor ingresado por teclado}
		aux^.sig := L; {cargo en siguiente la posición del puntero actual -nil-}
		L := aux; {la posición de L ahora es la que tiene AUX asignada}
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

var
	pri : lista; {puntero que contiene al registro NODO con el valor y proxima dirección}
	valor : integer;
begin
	pri := nil; {inicializo puntero}
	writeln('Ingrese un numero');
	read(valor);
	while (valor <> 0) do begin
		armarNodo(pri, valor); {envio puntero y valor}
		writeln('Ingrese un numero');
		read(valor);
	end;
	
	{Modulo C}
	writeln('Lista: ');
	imprimirEnteros(pri);
	
	{Modulo D}
	writeln('Ingrese un numero para incrementar valores: ');
	read(valor);
	while(valor <> 0) do begin
		incrementarDatos(pri, valor);
		writeln('Ingrese otro numero para incrementar: ');
		read(valor);
	end;
	writeln('Lista incrementada: ');
	imprimirEnteros(pri);
end.
