[nombre, direccion] = uigetfile({'*.mp3';'*.wav'},'Selecionar archivo de Audio');
archivo=cat(2,direccion,nombre);
[y,Fs] = audioread(archivo);
t=linspace(0,length(y(:,1))/Fs,length(y(:,1)));
subplot(2,1,1)
plot(t,y(:,1));
title('Tiempo')
[f ,esp]=f_fourier(y,Fs);
subplot(2,1,2)
plot(f,esp);
title('Frecuencia')

function varargout = f_fourier(varargin)
% Funcion calcula los vectores frecuencia y moduo de la transformada de fourier.
% Parámetros:
% [f,esp] = f_fourier(y, Fs) o bien
% [f,esp] = f_fourier(y, t)
% donde y es el vector de informacion
% fs la frecuencia de muestreo y t
%  el vector de tiempo.

%% Codigo
if nargin == 2 && nargout == 2
    y = varargin{1};
    if length(varargin{2}) == 1
        fs = varargin{2};
    else
        t = varargin{2};
        fs = 1/(t(2)-t(1));
    end
    L = length(y);
    NFFT = 2^nextpow2(L); % Next power of 2 from length of y
    Y = fft(y,NFFT)/L;
    f = fs/2*linspace(0,1,NFFT/2+1); %Fs
    modulo = 2*abs(Y(1:NFFT/2+1));
    
    varargout{1} = f;
    varargout{2} = modulo;
else
    error('Los argumentos de entrada son el vector de informacion junto con la fs o el vector de tiempo. Los de salida son el vector de frecuencias y de informacion');
end
end