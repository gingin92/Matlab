%% Ejercicio 2
% Utilizando el operador relacional > (mayor que), escribir un archivo.m que
% permita definir si un n�mero a es mayor que un n�mero b. El programa debe
% permitir ingresar los n�meros a y b, e imprimir el resultado a es mayor que b,
% o a es menor que b, o a es igual a b.

a=input('Ingrese el numero a evaluar (a): ');
b=input('Ingrese el numero para comparar (b): ');

if a>b
    disp('a es mayor que b');
elseif b>a
    disp('a es menor que b');
else
    disp('a es igual a b');
end