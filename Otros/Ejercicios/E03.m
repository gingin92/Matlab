%% Ejercicio 3
% Escribir un archivo.m que de como resultado el menor de tres
% números a, b, c. Utilizando la sentencia de control if…elseif…end

a=input('Ingrese el primer numero: ');
b=input('Ingrese el segundo numero: ');
c=input('Ingrese el tercer numero: ');

if a<b && a<c
    disp('El primer numero es el menor');
elseif b<a && b<c
    disp('El segundo numero es el menor');
elseif c<b && c<a
    disp('El tercer numero es el menor');
else
    disp('Existe 2 numeros iguales y son los menores');
end