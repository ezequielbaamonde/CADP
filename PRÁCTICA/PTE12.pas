{12. El centro de deportes Fortaco’s quiere procesar la información de los 4 tipos de
suscripciones que
ofrece: 1)Musculación, 2)Spinning, 3)Cross Fit, 4)Todas las clases. Para ello, el centro
dispone de una tabla
con información sobre el costo mensual de cada tipo de suscripción.
Realizar un programa que lea y almacene la información de los clientes 
del centro. De cada cliente se
conoce el nombre, DNI, edad y tipo de suscripción contratada (valor entre 1 y 4). 
Cada cliente tiene una
sola suscripción. La lectura finaliza cuando se lee el cliente con DNI 0, el cual no 
debe procesarse.
Una vez almacenados todos los datos, procesar la estructura de datos generada, calcular
e informar:
La ganancia total de Fortaco’s
Las 2 suscripciones con más clientes.
Genere una lista con nombre y DNI de los clientes de más de 40 años que están suscritos
a CrossFit
o a Todas las clases. Esta lista debe estar ordenada por DNI.}


program punto12;

type
	suscripciones = 1..4;
	clientes = record
		nombre: string;
		dni: integer;
		edad; integer;
		tipoSuscrip: suscripciones;
	end;
	
	//GENERAR LISTA otro inciso
	listaClientes = ^nodo
	nodo = record
		dato: clientes;
		sig: listaClientes;
	end;
	vectorCostos = array [suscripciones] of real;


procedure leerClientes(var d: clientes)
 begin
	readln(clientes.dni)
	if (clientes.dni <> 0) then begin
		readln(clientes.nombre);
		readln(clientes.edad);
		readln(clientes.tipoSuscrip);
	end;
 end;

procedure agregarAdelante (var L: listaClientes; c: clientes);
 var nue: listaClientes;
 begin
	new(nue);
	nue^.dato:= c;
	nue^.sig:= L;
	L:= nue;
 end;

procedure cargarLista (var L: listaClientes);
 var
	datoCli: clientes
 begin
	leerClientes(datoCli);
	while (datoCli.dni <> 0) do
		agregarAdelante(L, datoCli);
 end;

procedure cargarCostos(var v: vectorCostos); //se dispone

procedure iniciarVector (var vec2: vectorCostos);
 var i: suscripciones;
 begin
	for i:= 1 to 4 do
		vec2[i]:= 0;
 end;

//GANANCIA TOTAL
procedure recorrerLista (lis: listaClientes, vec: vectorCostos; var vec2: vectorCostos);
 var gananciaTotal: real;
 begin
	while (lis <> nil) do begin
		gananciaTotal:= vec[lis^.dato.tipoSuscrip] + total;
		vec2:= vec2[lis^.dato.tipoSucrip] + 1; //sumoCliente para otro procedmiento
		lis:= lis^.sig;
	end;
 writeln('Ganancia total: ', gananciaTotal);	
 end;

//SuscripcionesMax
procedure maximos (vec2: vectorCostos);
 var max1, max2: integer; indice, sus1, sus2: suscripciones;
 begin
	max1, max2:= -1;
	sus1, sus2:= 0;
	for i:= 1 to 4 do begin
		if (vec2[i] > max1) then begin
			max2:= max1;
			max1:= vec2[i];
			sus2:= sus1;
			sus1:= indice;
		end;
		else begin
			max2:= vec2[i];
			sus2:= indice;
		end;
 end;

var
	lista1: listaClientes; //lista a generar
	vector1: vectorCostos; //vector dispone
	dato: clientes;

BEGIN
	lista1:= nil;
	cargarCostos(vector) //se dispone tabla -vector-
	
END;
