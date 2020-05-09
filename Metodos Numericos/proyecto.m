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


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
a=get(handles.listbox1,'Value');
switch a
    case 1
        set(handles.hor_gpol,'Visible','on');
        set(handles.text3,'Visible','on');
        set(handles.hor_panel,'Visible','on');
        
        set(handles.bisec_tol,'Visible','off');
        set(handles.bisec_lim,'Visible','off');
        set(handles.text10,'Visible','off');
        set(handles.text9,'Visible','off');
        set(handles.bisec_txt,'Visible','off');
        set(handles.bisec_bt,'Visible','off');
        set(handles.bisec_panel,'Visible','off');
        
        set(handles.nwhor_gpol,'Visible','off');
        set(handles.nwhor_tol,'Visible','off');
        set(handles.text13,'Visible','off');
        set(handles.text5,'Visible','off');
        set(handles.text6,'Visible','off');
        set(handles.nwhor_bt,'Visible','off');
        set(handles.nwhor_panel,'Visible','off');
        
        set(handles.text12,'Visible','off');
        set(handles.gauss_neq,'Visible','off');
        set(handles.gauss_eq,'Visible','off');
        set(handles.gauss_resp,'Visible','off');
        set(handles.gauss_bt,'Visible','off');
        set(handles.uipanel5,'Visible','off');
    case 2
        set(handles.bisec_eq,'Visible','on');
        set(handles.text7,'Visible','on');
        set(handles.bisec_panel,'Visible','on');
        
        set(handles.hor_gpol,'Visible','off');
        set(handles.text3,'Visible','off');
        set(handles.hor_txt,'Visible','off');
        set(handles.bisec_txt,'Visible','off');
        set(handles.hor_bt,'Visible','off');
        set(handles.hor_panel,'Visible','off');
        
        set(handles.nwhor_gpol,'Visible','off');
        set(handles.nwhor_tol,'Visible','off');
        set(handles.text13,'Visible','off');
        set(handles.text5,'Visible','off');
        set(handles.text6,'Visible','off');
        set(handles.nwhor_bt,'Visible','off');
        set(handles.nwhor_panel,'Visible','off');
        
        set(handles.text12,'Visible','off');
        set(handles.gauss_neq,'Visible','off');
        set(handles.gauss_eq,'Visible','off');
        set(handles.gauss_resp,'Visible','off');
        set(handles.gauss_bt,'Visible','off');
        set(handles.uipanel5,'Visible','off');
    case 3
        set(handles.nwhor_gpol,'Visible','on');
        set(handles.text5,'Visible','on');
        set(handles.nwhor_panel,'Visible','on');
        
        set(handles.hor_gpol,'Visible','off');
        set(handles.text3,'Visible','off');
        set(handles.hor_txt,'Visible','off');
        set(handles.bisec_txt,'Visible','off');
        set(handles.hor_bt,'Visible','off');
        set(handles.hor_panel,'Visible','off');
        
        set(handles.bisec_tol,'Visible','off');
        set(handles.bisec_lim,'Visible','off');
        set(handles.text10,'Visible','off');
        set(handles.text9,'Visible','off');
        set(handles.bisec_txt,'Visible','off');
        set(handles.bisec_bt,'Visible','off');
        set(handles.bisec_panel,'Visible','off');
        
        set(handles.text12,'Visible','off');
        set(handles.gauss_neq,'Visible','off');
        set(handles.gauss_eq,'Visible','off');
        set(handles.gauss_resp,'Visible','off');
        set(handles.gauss_bt,'Visible','off');
        set(handles.uipanel5,'Visible','off');
    case 4
        set(handles.gauss_neq,'Visible','on');
        set(handles.text12,'Visible','on');
        set(handles.uipanel5,'Visible','on');
        
        set(handles.bisec_tol,'Visible','off');
        set(handles.bisec_lim,'Visible','off');
        set(handles.text10,'Visible','off');
        set(handles.text9,'Visible','off');
        set(handles.bisec_txt,'Visible','off');
        set(handles.bisec_bt,'Visible','off');
        set(handles.bisec_panel,'Visible','off');
        
        set(handles.hor_gpol,'Visible','off');
        set(handles.text3,'Visible','off');
        set(handles.hor_txt,'Visible','off');
        set(handles.bisec_txt,'Visible','off');
        set(handles.hor_bt,'Visible','off');
        set(handles.hor_panel,'Visible','off');
        
        set(handles.nwhor_gpol,'Visible','off');
        set(handles.nwhor_tol,'Visible','off');
        set(handles.text13,'Visible','off');
        set(handles.text5,'Visible','off');
        set(handles.text6,'Visible','off');
        set(handles.nwhor_bt,'Visible','off');
        set(handles.nwhor_panel,'Visible','off');
end
clear_all_fields(handles);
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



function hor_gpol_Callback(hObject, eventdata, handles)
a=str2double(get(handles.hor_gpol,'String'));
for i=1:(a+2)
    if i<=(a+1)
        b{i}=cat(2,'a',num2str(i-1));
    else
        b{i}='Xo';
    end
end
d=zeros(1,a+2);
set(handles.hor_eq,'ColumnWidth',{30});
set(handles.hor_eq,'Data',d);
set(handles.hor_eq,'ColumnName',b);
set(handles.nwhor_eq,'ColumnEditable',true(1,length(b)));
set(handles.hor_eq,'RowName','P(x)');
set(handles.hor_eq,'Visible','on');
set(handles.hor_bt,'Visible','on');
% hObject    handle to hor_gpol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hor_gpol as text
%        str2double(get(hObject,'String')) returns contents of hor_gpol as a double


% --- Executes during object creation, after setting all properties.
function hor_gpol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hor_gpol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hor_bt.
function hor_bt_Callback(hObject, eventdata, handles)
a=str2double(get(handles.hor_gpol,'String'));
b=get(handles.hor_eq,'Data');
total(a+2)=0;
for i=(a+1):-1:1
    total(i)=b(1,i)+((b(1,a+2))*total(i+1));
end
m=num2str(total(1));
set(handles.hor_txt,'String',cat(2,'P(Xo)= ',m));
set(handles.hor_txt,'Visible','on');
% hObject    handle to hor_bt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in nwhor_bt.
function nwhor_bt_Callback(hObject, eventdata, handles)
a=str2double(get(handles.nwhor_gpol,'String'));
b=get(handles.nwhor_eq,'Data');
tot=str2double(get(handles.nwhor_tol,'String'));
N = a+1;
f=1;
fp=1;
z(1)=b(1,1)/b(1,2);
while (abs(f)>tot)
    f = b(1,1);
    fp = 0;
    for k=2:N
        fp = f + fp*z(1);
        f = b(1,k) + f*z(1);
    end
    z(1)=z(1)-f/fp;
end

z(2)=(-1)*(b(1,1)/b(1,2));
f=1;
fp=1;
while (abs(f)>tot)
    f = b(1,1);
    fp = 0;
    for k=2:N
        fp = f + fp*z(2);
        f = b(1,k) + f*z(2);
    end
    z(2)=z(2)-f/fp;
end
c=0;
d=0;
for i=1:N
    c=c+b(1,i)*(z(1)^(i-1));
    d=d+b(1,i)*(z(2)^(i-1));
end
if (a<(-.01)) || (a>(.01)) || (b<(-.01)) || (b>(.01))
    set(handles.text6,'String','No existen raices');
end
if (c>(-.01)) && (c<(.01))
    m=num2str(z(1));
    set(handles.text6,'String',cat(2,'Raiz= ',m));
end
if (d>(-.01)) && (d<(.01))
    m=num2str(z(2));
    set(handles.text6,'String',cat(2,'Raiz= ',m));
end
set(handles.text6,'Visible','on');
% hObject    handle to nwhor_bt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function nwhor_gpol_Callback(hObject, eventdata, handles)
a=str2double(get(handles.nwhor_gpol,'String'));
for i=1:(a+1)
    b{i}=cat(2,'a',num2str(i-1));
end
d=zeros(1,a+1);
set(handles.nwhor_eq,'Data',d);
set(handles.nwhor_eq,'ColumnName',b);
set(handles.nwhor_eq,'ColumnEditable',true(1,length(b)));
set(handles.nwhor_eq,'RowName','P(x)');
set(handles.nwhor_eq,'Visible','on');
set(handles.nwhor_bt,'Visible','on');
set(handles.text13,'Visible','on');
set(handles.nwhor_tol,'Visible','on');
% hObject    handle to nwhor_gpol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nwhor_gpol as text
%        str2double(get(hObject,'String')) returns contents of nwhor_gpol as a double


% --- Executes during object creation, after setting all properties.
function nwhor_gpol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nwhor_gpol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bisec_eq_Callback(hObject, eventdata, handles)
set(handles.bisec_lim,'Visible','on');
set(handles.text10,'Visible','on');
set(handles.bisec_tol,'Visible','on');
set(handles.text9,'Visible','on');
set(handles.bisec_bt,'Visible','on');
% hObject    handle to bisec_eq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bisec_eq as text
%        str2double(get(hObject,'String')) returns contents of bisec_eq as a double


% --- Executes during object creation, after setting all properties.
function bisec_eq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bisec_eq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bisec_bt.
function bisec_bt_Callback(hObject, eventdata, handles)
syms x;
f=evalin(symengine,get(handles.bisec_eq,'String'));
a=str2num(get(handles.bisec_lim,'String'));
tol=str2double(get(handles.bisec_tol,'String'));
u=subs(f,x,a(1,1));
v=subs(f,x,a(1,2));
n=1;
if sign(u)==sign(v)
    disp('Error la funcion debe cambiar de signo en (a,b)');
    set(handles.bisec_txt,'String','Error la funcion debe cambiar de signo en (a,b)')
else
    while ((a(1,2)-a(1,1))*0.5>=tol)
        c=(a(1,2)+a(1,1))/2;
        w=subs(f,'x',c);
        if sign(u)==sign(w)
            a(1,1)=c;
            u=w;
        else
            a(1,2)=c;
            v=w;
        end
        n=n+1;
    end
    set(handles.bisec_txt,'Visible','on')
    set(handles.bisec_txt,'String',cat(2,'Raiz: ',num2str(c)))
end% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function bisec_tol_Callback(hObject, eventdata, handles)
% hObject    handle to bisec_tol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bisec_tol as text
%        str2double(get(hObject,'String')) returns contents of bisec_tol as a double


% --- Executes during object creation, after setting all properties.
function bisec_tol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bisec_tol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bisec_lim_Callback(hObject, eventdata, handles)
% hObject    handle to bisec_lim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bisec_lim as text
%        str2double(get(hObject,'String')) returns contents of bisec_lim as a double


% --- Executes during object creation, after setting all properties.
function bisec_lim_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bisec_lim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in gauss_bt.
function gauss_bt_Callback(hObject, eventdata, handles)
n=str2double(get(handles.gauss_neq,'String'));
c=get(handles.gauss_eq,'Data');
% resp=get(handles.gauss_eq,'ColumnName')';
for i=1:n-1
    for j=i+1:n
        L=c(j,i)/c(i,i);
        c(j,:)=c(j,:)-L*c(i,:);
    end
end

x(n,1)=c(n,n+1)/c(n,n);

for i=n-1:-1:1
    Suma=0;
    for j=i+1:n
        Suma=Suma+c(i,j)*x(j);
    end
    x(i,1)=(c(i,n+1)-Suma)/c(i,i);
end
for i=1:n
    resp{i,1}=cat(2,'a',num2str(i));
end
set(handles.gauss_resp,'ColumnName','=');
set(handles.gauss_resp,'RowName',resp);
set(handles.gauss_resp,'Data',x);
set(handles.gauss_resp,'Visible','on');
% hObject    handle to gauss_bt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function gauss_neq_Callback(hObject, eventdata, handles)
a=str2double(get(handles.gauss_neq,'String'));
for i=1:(a+1)
    if i<=a
        b{i}=cat(2,'a',num2str(i));
        c{i}=cat(2,'ec',num2str(i));
    else
        b{i}='=';
    end
end
d=zeros(a,a+1);
set(handles.gauss_eq,'ColumnWidth',{30});
set(handles.gauss_eq,'ColumnEditable',true(1,length(d)));
set(handles.gauss_eq,'Data',d);
set(handles.gauss_eq,'ColumnName',b);
set(handles.gauss_eq,'RowName',c);
set(handles.gauss_eq,'Visible','on');
set(handles.gauss_bt,'Visible','on');
% hObject    handle to gauss_neq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gauss_neq as text
%        str2double(get(hObject,'String')) returns contents of gauss_neq as a double


% --- Executes during object creation, after setting all properties.
function gauss_neq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gauss_neq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nwhor_tol_Callback(hObject, eventdata, handles)
% hObject    handle to nwhor_tol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nwhor_tol as text
%        str2double(get(hObject,'String')) returns contents of nwhor_tol as a double


% --- Executes during object creation, after setting all properties.
function nwhor_tol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nwhor_tol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function clear_all_fields(handles)
set(handles.hor_gpol,'String','');
set(handles.bisec_eq,'String','');
set(handles.bisec_lim,'String','');
set(handles.bisec_tol,'String','');
set(handles.nwhor_gpol,'String','');
set(handles.nwhor_tol,'String','');
set(handles.gauss_neq,'String','');

set(handles.hor_eq,'Data',{});
set(handles.nwhor_eq,'Data',{});
set(handles.gauss_eq,'Data',{});
set(handles.gauss_resp,'Data',{});


% --- Executes when entered data in editable cell(s) in nwhor_eq.
function nwhor_eq_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to nwhor_eq (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when entered data in editable cell(s) in hor_eq.
function hor_eq_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to hor_eq (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
