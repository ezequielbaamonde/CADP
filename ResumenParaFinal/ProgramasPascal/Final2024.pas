Program FinalFebrero2024;

type venta = record
		num: integer;
		cantP: integer;
		pago: String[8]; //Efectivo o Tarjeta
	 end;
	 
	 //Se dispone
	 listaVentas = ^nodoVentas;
	 nodoVentas = record
		dato: venta;
		sig: listaVentas;
	 end;
	 
	 listaV = ^nodoV;
	 nodoV = record
		dato: venta;
		sig: listaV;
	 end;

//Se dispone para generarVentas
procedure leerVentas();

//Se dispone
procedure generarVentas(var L: listaVentas);

function descomponer(n: integer):boolean;
 var dig, pares: integer; validacion: boolean;
 begin
	dig:= 0;
	pares:= 0; //contador
	while (n<>0) and (pares < 2)do begin
		dig:= n mod 10;
		if ((dig mod 2) = 0) then pares:= pares+1;
		n:= n div 10; //sig digito
	end;
	//pregunto si se alcanzaron la cant pares
	if (pares = 2) then
		validacion:= true
	else validacion:= false;
	descomponer:= validacion;
 end;

procedure agregar

procedure recorrer(l: listaVentas; var l2: listaV);
 var ok: boolean;
 begin
	while (lis <> NIL) do begin
		ok:= descomponer(lis^.dato.cantP); //devuelve si el num tiene al menos 2 digitos pares
		if (ok = true) then begin
			if (lis^.dato.pago = 'Tarjeta') then agAdelante(l2, lis^.dato)
			else agFinal(l2, lis^.dato);
		end;
		lis:= lis^.sig;
	end;
 end;
 
procedure generarEstructura(lis: listaVentas; var lis2: listaV);
 begin
	recorrer(lis, lis2);
 end;


var lis: listaVentas; lis2: listaV;

begin
 lis:= NIL;
 lis2:= NIL;
 generarVentas(lis);
 generarEstructura(lis, lis2);
end.
