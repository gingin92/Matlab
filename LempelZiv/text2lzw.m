function [salida,tabla] = text2lzw(vector)
if ~isa(vector,'uint8')
    error('Se debe ingresar un vector en formato uint8');
end
vector = uint16(vector(:)');
tabla = num2cell(unique(vector,'stable'));
l_tab=length(tabla);
salida = vector;
sal_aux = 1;
ent_aux = 1;
for aux=2:length(vector)
    elemn = vector(aux);
    text = vector(ent_aux:(aux-1));
    cod = codde([text elemn],tabla,l_tab);
    if isempty(cod)
        salida(sal_aux) = codde(text,tabla,l_tab);
        l_tabla = length(tabla)+1;
        tabla{l_tabla} = [text elemn];
        cod = uint16(l_tabla-1);
        sal_aux = sal_aux+1;
        ent_aux = aux;
    end
end
text = vector(ent_aux:aux);
salida(sal_aux) = codde(text,tabla,l_tab);
salida((sal_aux+1):end) = [];


function cod = codde(text,tabla,l_tab)
cod = uint16([]);
if length(text)==1
    cod = text;
else
    codig=256;
    for aux=l_tab+1:length(tabla)
        if isequal(text,tabla{aux})
            cod = uint16(codig);
            break
        end
        codig=codig+1;
    end
end