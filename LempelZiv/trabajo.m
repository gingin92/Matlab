function varargout = trabajo(varargin)
% TRABAJO MATLAB code for trabajo.fig
%      TRABAJO, by itself, creates a new TRABAJO or raises the existing
%      singleton*.
%
%      H = TRABAJO returns the handle to a new TRABAJO or the handle to
%      the existing singleton*.
%
%      TRABAJO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRABAJO.M with the given input arguments.
%
%      TRABAJO('Property','Value',...) creates a new TRABAJO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before trabajo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to trabajo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help trabajo

% Last Modified by GUIDE v2.5 30-Jan-2016 00:15:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @trabajo_OpeningFcn, ...
    'gui_OutputFcn',  @trabajo_OutputFcn, ...
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


% --- Executes just before trabajo is made visible.
function trabajo_OpeningFcn(hObject, eventdata, handles, varargin)
update_files(handles);
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to trabajo (see VARARGIN)

% Choose default command line output for trabajo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trabajo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = trabajo_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
update_files(handles);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
a=get(handles.listbox1,'Value');
file_act=get(handles.listbox1,'String');
[ext,~]=strsplit(file_act{a},'.');
c=cat(2,pwd,'\',file_act{a});
switch ext{end}
    case {'docx','doc'}
        word = actxserver('Word.Application');
        wdoc = word.Documents.Open(c);
        sometext = wdoc.Content.Text;
        wdoc.Close;
        word.Quit;
    case 'txt'
        fid = fopen(c,'r');
        sometext=fread(fid,'uint8');
        a=find(sometext==0,1);
        if ~isempty(a)
            fid = fopen(c,'r');
            sometext=fread(fid,'uint16');
        end
        sometext=char(sometext)';
end
set(handles.pushbutton5,'Enable','ON');
set(handles.uncod,'String',sometext);
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
a=get(handles.listbox1,'Value');
file_act=get(handles.listbox1,'String');
[ext,~]=strsplit(file_act{a},'.');
answer=inputdlg({'Escriba el nombre del archivo (sin extension):'},'Nombre',1,{file_act{a}(1:end-1-length(ext{end}))});
com_decom=questdlg('Desea comprimir o descomprimir?','Accion','Com','Descom','Com');
sometext=get(handles.uncod,'String')';

switch com_decom
    case 'Com'
        sometext=uint8(sometext);
        datc=text2lzw(sometext);
        bitsn=length(sometext)*8;
        bitsc=length(datc)*16;
    case 'Descom'
        sometext=uint16(sometext);
        datc=lzw2norm(sometext);
        bitsn=length(sometext)*16;
        bitsc=length(datc)*8;
end
datc=char(datc);
set(handles.cod,'String',datc);
bitst=((bitsn-bitsc)/bitsn)*100;
set(handles.text14,'String',{cat(2,'Bits Original:',num2str(bitsn));cat(2,'Bits Complimido:',num2str(bitsc));cat(2,'Tasa Compresion:',num2str(bitst),'%')});
docFile=cat(2,pwd,'\',answer{1});

switch ext{end}
    case {'docx','doc'}
        word = actxserver('Word.Application');
        word.Visible =0;
        document=word.Documents.Add;
        selection=word.Selection;
        selection.TypeText(datc);
        document.SaveAs2(docFile,16);
        word.Quit();
    case 'txt'
        fid = fopen(cat(2,pwd,'\',answer{1},'_',com_decom,'.txt'), 'w');
        switch com_decom
            case 'Com'
                fwrite(fid,datc,'uint16');
            case 'Descom'
                fwrite(fid,datc,'uint8');
        end
end

% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
[a,b]=uigetfile({'*.doc;*.docx;*.txt', 'Archivos de Word(*.doc, *.docx)'},'Seleccione un archivo');
c=cat(2,b,a);
copyfile(c,cat(2,pwd,'\',a));
update_files(handles);
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function update_files(handles)
list_a=dir(fullfile(pwd,'*.doc*'));
list_b=dir(fullfile(pwd,'*.txt'));
list_dir={list_a.name,list_b.name};
if isempty(list_dir)
    set(handles.pushbutton4,'Enable','OFF');
else
    set(handles.pushbutton4,'Enable','ON');
    set(handles.listbox1,'String',list_dir);
    set(handles.listbox1,'Value',1);
end
set(handles.pushbutton5,'Enable','OFF');


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

function [salida,tabla] = lzw2norm(vector)
if ~isa(vector,'uint16')
    error('Se debe ingresar un vector en formato uint16')
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

function [table,code] = addcode(table,substr)
code = length(table)+1;   % start from 1
table{code} = substr;
code = uint16(code-1);    % start from 0