program ejerc9p7;
type
	subGen = 1..8;
	//RECORDS
	peliculas = record
		codigo: integer;
		titulo: string;
		genero: subGen;
		puntaje: real;
	end;
	
	criticas = record
		dni: integer;
		apellido: string;
		nombre: string;
		puntajeCrit: real;
	
	//ESTRUCTURA DE DATOS
	lista = ^nodo
	nodo = record
		dato: peliculas;
		sig: lista;
	end;
	
	procedure leerCriticas ();
	begin
		read(datos.);
		while ()

var
	lis: lista; //se dispone
	datos: criticas;

BEGIN

END;
