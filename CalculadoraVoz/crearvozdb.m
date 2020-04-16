clear all;
clc;
y=audiorecorder(44100,8,1);
vector={'0','1','2','3','4','5','6','7','8','9','mas','menos','log','igual','por','borrar','terminar','blanco'};
sound=cell(size(vector));
a=1;
while a<=length(sound)
    clc;
    disp(cat(2,'Grabando referencia de "',vector{a},'", precione enter cuando este listo a grabar'));
    pause;
    zf=grabar(y);
    if sum(zf)==0
        disp('Error en la grabacion, verificar conexion microfono. Precione ENTER para continuar')
        pause;
    else
        play(y);
        acep=input('Considera el sonido correcto (y/n): ','s');
        if acep=='y' || acep=='Y'
            sound{a}=zf;
            a=a+1;
        end
    end
end

save('db_soft.mat','db_vector','db_sound')

function zf=grabar(y)
recordblocking(y,1);
z=getaudiodata(y);
zf=filtrar(z);
end

function sald=filtrar(sig)
f = [0 5000 5000 6000]/6000;
m = [0 0 1 1];
[b,a] = yulewalk(8,f,m);
sald=filter(b,a,sig);
end