%% Ejercicio 4
% Escribir un archivo.m que de como resultado el menor de tres
% números a, b, c. Utilizando la sentencia switch ... case ... otherwise
% ... end

a=input('Ingrese el primer numero: ');
b=input('Ingrese el segundo numero: ');
c=input('Ingrese el tercer numero: ');

switch true
    case a<b && a<c
        disp('El primer numero es el menor');
    case b<a && b<c
        disp('El segundo numero es el menor');
    case c<b && c<a
        disp('El tercer numero es el menor');
    otherwise
        disp('Existe 2 numeros iguales y son los menores');
end