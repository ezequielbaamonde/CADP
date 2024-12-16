program WICC;

type subPubli = 1..12;

 contadorPubli = array [subPubli] of integer;
 
 publicacion = record
	titulo: string;
	nom: string;
	dni: integer;
	tipo: subPubli;
 end;

 regLista = record
	dniAutor: integer;
	cant: integer; //publicaciones presentadas
 end;
 
 lista = ^nodo;
 nodo = record
	dato: regLista;
	sig: lista;
 end;
 
procedure iniVector(var v: contadorPubli);
 var i: subPubli;
 begin
  for i:= 1 to 12 do v[i]:= 0;
 end;
 
procedure leerPublicacion(var p: publicacion);
 begin
  readln(p.dni);
  if (p.dni <> 0) then begin
	readln(p.titulo);
	readln(p.nom);
	readln(p.tipo);
  end;
 end;

procedure agregarAdelante(var l: lista; num: integer);
 var nue: lista;
 begin
 new (nue);
 nue^.dato.dniAutor:= num;
 nue^.dato.cant:= 0;
 nue^.sig:= l;
 l:= nue;
 end;

procedure acumularAutor(var lis: lista; dni: integer); 
 begin
	if (lis = NIL) then begin //Si la lista está vacia, genero un puntero inicial
		agregarAdelante(lis, dni);
	end
	//Si no está vacia, pregunto si el dni ingresado es el mismo que el de mi puntero inicial.
	else if (dni = lis^.dato.dniAutor) then 
		lis^.dato.cant:= lis^.dato.cant + 1 //si es así, incremento la cantidad de publicaciones del autor
	else agregarAdelante(lis, dni);  //Si no está vacia ni tampoco el DNI coincide, se trata de un nuevo autor
 
 end;
 
 
procedure generarEstructuras(var vec: contadorPubli; var lis: lista);
 var publi: publicacion;
 begin
  leerPublicacion(publi);
  while (publi.dni <> 0) do begin
	vec[publi.tipo]:= vec[publi.tipo] + 1; //Incremento vector contador de tipo publicaciones
	acumularAutor(lis, publi.dni); //Se lee ordenado por DNI autor.
	leerPublicacion(publi);
  end;	
 end;

function maximo(v: contadorPubli): subPubli;
 var max, i: integer; tipo: subPubli;
 begin
  max:= -1; tipo:= 1; //inicilamente en 1 porque es de 1..12;
  for i:=1 to 12 do begin
	if (v[i] > max) then begin
		max:= v[i];
		tipo:= i;
	end;
  end;
  maximo:= tipo; //retorna tipo de publicacion con más presentaciones
 end;

procedure informarCant(lis: lista);
 begin
	while (lis <> NIL) do begin
		writeln('Cantidad de publicaciones presentadas por el autor con DNI ', lis^.dato.dniAutor, ': ',
		lis^.dato.cant);
		lis:= lis^.sig;
	end;
 end;

var vector: contadorPubli; autores: lista; max: subPubli;
begin
 iniVector(vector);
 autores:= NIL;
 generarEstructuras(vector, autores);
 max:= maximo(vector);
 writeln('El tipo de publicacion con mayor cantidad de publicaciones es el tipo ', max);
 informarCant(autores);
end.
