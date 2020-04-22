function [salida,tabla] = lzw2norm(vector)
if ~isa(vector,'uint16')
    error('input argument must be a uint16 vector')
end

vector = vector(:)';

tabla = num2cell(0:1:255);
salida = uint8([]);

code = vector(1);
salida(end+1) = code;
elemn = code;
for index=2:length(vector)
    elemn = vector(index);
    if (double(elemn)+1)>length(tabla)
        text = tabla{double(code)+1};
        text = [text elemn];
    else
        text = tabla{double(elemn)+1};
    end
    salida = [salida text];
    elemn = text(1);
    [tabla,code] = addcode(tabla,[tabla{double(code)+1} elemn]);
    code = elemn;
end

function code = getcodefor(substr,table)
code = uint16([]);
if length(substr)==1
	code = substr;
else
	for index=257:length(table)
		if isequal(substr,table{index})
			code = uint16(index-1);
			break
		end
	end
end

function [table,code] = addcode(table,substr)
code = length(table)+1;
table{code} = substr;
code = uint16(code-1);