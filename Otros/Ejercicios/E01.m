%% Ejercicio 1
% Escribir un programa que permita determinar si un número
% entero dado es par o impar. (Utilizar el operador mod)

numero=input('Ingrese el numero a evaluar: ');
if mod(numero,2)==0
    disp('El numero es par');
else
    disp('El numero es impar');
end