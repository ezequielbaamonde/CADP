{
3. Utilizando el programa del ejercicio 1, realizar los siguientes cambios:
	a. Modificar el módulo armarNodo para que los elementos se guarden en la lista en el orden en que fueron
	ingresados (agregar atrás).
	* 
	b. Modificar el módulo armarNodo para que los elementos se guarden en la lista en el orden en que fueron
	ingresados, manteniendo un puntero al último ingresado
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
