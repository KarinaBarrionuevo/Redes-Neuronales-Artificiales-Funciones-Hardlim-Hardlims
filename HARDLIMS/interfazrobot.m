function varargout = interfazrobot(varargin)
% INTERFAZROBOT MATLAB code for interfazrobot.fig
%      INTERFAZROBOT, by itself, creates a new INTERFAZROBOT or raises the existing
%      singleton*.
%
%      H = INTERFAZROBOT returns the handle to a new INTERFAZROBOT or the handle to
%      the existing singleton*.
%
%      INTERFAZROBOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZROBOT.M with the given input arguments.
%
%      INTERFAZROBOT('Property','Value',...) creates a new INTERFAZROBOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfazrobot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfazrobot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfazrobot

% Last Modified by GUIDE v2.5 02-Nov-2014 12:34:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfazrobot_OpeningFcn, ...
                   'gui_OutputFcn',  @interfazrobot_OutputFcn, ...
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


% --- Executes just before interfazrobot is made visible.
function interfazrobot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfazrobot (see VARARGIN)

% Choose default command line output for interfazrobot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interfazrobot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfazrobot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s2;
s2= str2double(get(hObject,'String'))
if isnan(s2)
    s2=-1
set(hObject,'String',s2);
errordlg('Ingrese numeros','EROR');
end

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s1;
s1= str2double(get(hObject,'String'))
if isnan(s1)
    s1=-1
set(hObject,'String',s1);
errordlg('Ingrese numeros','EROR');
end
% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s3;
s3= str2double(get(hObject,'String'))
if isnan(s3)
    s3=-1
set(hObject,'String',s3);
errordlg('Ingrese numeros','EROR');
end
% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s4;
s4= str2double(get(hObject,'String'))
if isnan(s4)
    s4=-1
set(hObject,'String',s4);
errordlg('Ingrese numeros','EROR');
end
% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
SP=[ -1 -1 1 1 1  1   1  -1 ;
     -1 1 -1 1  1  1   1  1 ;
     -1 -1 1 1  -1  1  -1 -1;
     -1 1 -1 1  -1 -1   1  1  ] ;
M= [  1 1 -1 1   -1   1  -1  1  ;
      1 1 -1 1    1   -1   1  1 ] ;

net=newp([-1 1;-1 1;-1 1;-1 1],2,'hardlims');
net.trainParam.epochs=1000;
net.trainParam.show=5;
net=train(net,SP,M);
control = sim(net,SP);
M
control
global s1;
global s2;
global s3;
global s4;
global movimiento;

adelante=[1 1];
atras=[-1 -1];
izq=[1 -1];
der=[-1 1];


    if s1==1 & s2==1& s3==1 &s4==1
        movimiento='NO EFECTUAR MOVIMIENTO';
        %simulacion=[];
        simulacion=sim(net,[s1;s2;s3;s4]);
        errordlg('NO VALIDO','EROR');   
    else
    simulacion=sim(net,[s1;s2;s3;s4]);
    
        if adelante(1)==simulacion(1)& adelante(2)==simulacion(2)
               
            movimiento='ADELANTE'

        elseif  atras(1)==simulacion(1)& atras(2)==simulacion(2)
                
            movimiento='ATRAS'
        
        elseif  der(1)==simulacion(1)& der(2)==simulacion(2)
                  
            movimiento='DERECHA'   

        elseif  izq(1)==simulacion(1)& izq(2)==simulacion(2)
                   
            movimiento='IZQUIERDA'
        end
    end

set(handles.text6,'string',simulacion(1));
set(handles.text24,'string',simulacion(2));
set(handles.text10,'string',movimiento);    











% --- Executes on key press with focus on edit7 and none of its controls.
function edit7_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function text10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);


% --- Executes when entered data in editable cell(s) in uitable5.
function uitable5_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable5 (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
