function [salida,tabla] = lzw_decod(vector)
if ~isa(vector,'uint16')
	error('Se debe ingresar un vector en formato uint16')
end

vector = vector(:)';

tabla = num2cell(uint16(0:1:255));
salida = uint8([]);

code = vector(1);
salida(end+1) = code;
text_aux = code;
for index=2:length(vector)
	element = vector(index);
	if (double(element)+1)>length(tabla)
		string = tabla{double(code)+1};
		string = [string text_aux];
    else
		string = tabla{double(element)+1};
	end
	salida = [salida string];
	text_aux = string(1);
	[tabla,code] = addcode(tabla,[tabla{double(code)+1} text_aux]);
	code = element;
end

function [tabla,code] = addcode(tabla,substr)
code = length(tabla)+1;
tabla{code} = substr;
code = uint16(code-1);