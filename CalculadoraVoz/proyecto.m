function varargout = proyecto(varargin)
% PROYECTO MATLAB code for proyecto.fig
%      PROYECTO, by itself, creates a new PROYECTO or raises the existing
%      singleton*.
%
%      H = PROYECTO returns the handle to a new PROYECTO or the handle to
%      the existing singleton*.
%
%      PROYECTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROYECTO.M with the given input arguments.
%
%      PROYECTO('Property','Value',...) creates a new PROYECTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before proyecto_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to proyecto_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help proyecto

% Last Modified by GUIDE v2.5 27-Jul-2016 17:52:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @proyecto_OpeningFcn, ...
                   'gui_OutputFcn',  @proyecto_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before proyecto is made visible.
function proyecto_OpeningFcn(hObject, eventdata, handles, varargin)
if exist('db_soft.mat')==2
    load('db_soft.mat');
else
    errordlg('No existe base de datos de audios. Ejecutar la funcion "crearvozdb".', 'DB Error');
    set(handles.start,'Enable','off');
end
handles.y=audiorecorder(44100,8,1);
handles.operacion='';
handles.resultado=0;
handles.sound=db_sound;
handles.vector=db_vector;
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to proyecto (see VARARGIN)

% Choose default command line output for proyecto
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes proyecto wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = proyecto_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
cont=1;
term=0;
while cont==1 && term<10
    sound(handles.pitido,88200);
    pause(1)
    recordblocking(handles.y,1);
    pause(1)
    play(handles.y);
    pause(1)
    z=getaudiodata(handles.y);
    transf_usuario=abs(fft(normalizar(z)));
    min_error=100;
    nombre='';
    for k = 1 : length(handle.sound)
            transf_voz_bd=abs(fft(normalizar(handle.sound{k})));
            actual_error=mean(abs(transf_voz_bd - transf_usuario));
            if actual_error < min_error
                min_error=actual_error;
                nombre=handle.vector{k};
            end
    end
        switch nombre
            case '0'
                handles.operacion=cat(2,get(handles.operac,'String'),num2str(0));
                set(handles.operac,'String',handles.operacion);
            case '1'
                handles.operacion=cat(2,get(handles.operac,'String'),num2str(1));
                set(handles.operac,'String',handles.operacion);
            case '2'
                handles.operacion=cat(2,get(handles.operac,'String'),num2str(2));
                set(handles.operac,'String',handles.operacion);
            case '3'
                handles.operacion=cat(2,get(handles.operac,'String'),num2str(3));
                set(handles.operac,'String',handles.operacion);
            case '4'
                handles.operacion=cat(2,get(handles.operac,'String'),num2str(4));
                set(handles.operac,'String',handles.operacion);
            case '5'
                handles.operacion=cat(2,get(handles.operac,'String'),num2str(5));
                set(handles.operac,'String',handles.operacion);
            case '6'
                handles.operacion=cat(2,get(handles.operac,'String'),num2str(6));
                set(handles.operac,'String',handles.operacion);
            case '7'
                handles.operacion=cat(2,get(handles.operac,'String'),num2str(7));
                set(handles.operac,'String',handles.operacion);
            case '8'
                handles.operacion=cat(2,get(handles.operac,'String'),num2str(8));
                set(handles.operac,'String',handles.operacion);
            case '9'
                handles.operacion=cat(2,get(handles.operac,'String'),num2str(9));
                set(handles.operac,'String',handles.operacion);
            case 'mas'
                handles.operacion=cat(2,get(handles.operac,'String'),'+');
                set(handles.operac,'String',handles.operacion);
            case 'menos'
                handles.operacion=cat(2,get(handles.operac,'String'),'-');
                set(handles.operac,'String',handles.operacion);
            case 'igual'
                resp=str2num(get(handles.operac,'String'));
                set(handles.operac,'String',resp);
                cont=2;
            case 'por'
                handles.operacion=cat(2,get(handles.operac,'String'),'*');
                set(handles.operac,'String',handles.operacion);
            case 'log'
                handles.operacion=cat(2,'log(',get(handles.operac,'String'),')');
                set(handles.operac,'String',handles.operacion);
            case 'borrar'
                handles.operacion=handles.operacion(1:end-1);
                set(handles.operac,'String',handles.operacion);
            case 'terminal'
                cont=2;
                msgbox('Procesamiento de Voz en el programa terminao','Finalizando');
            otherwise
                cont=1;
        end
    guidata(hObject, handles);
    pause(1);
    term=term+1;
end
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
function sonidoN=normalizar(sonido)
maxi=max(abs(sonido));
sonidoN=sonido./maxi;