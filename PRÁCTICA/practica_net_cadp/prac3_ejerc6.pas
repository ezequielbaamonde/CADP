{
Realizar un programa modularizado que lea datos de 100 productos de una tienda de ropa. Para cada
producto debe leer el precio, código y tipo (pantalón, remera, camisa, medias, campera, etc.). 
Informar:
● Código de los dos productos más baratos.
● Código del producto de tipo “pantalón” más caro.
● Precio promedio
* .
}


program ejercicio3_6;
var
	precio, prom, min maxPan: real; tipo: string;
	codigo, i: integer;
BEGIN
	for i:=1 to 100 do begin
		write('Ingrese el precio del producto: ');
		read(precio);
		write('Ingrese el codigo del producto: ');
		read(codigo);
		write('Ingrese el tipo del producto: ');
		read(tipo);
		prodBaratos(precio, codigo, min);
	end;
END.

