function varargout = ClasificacionCarroi(varargin)
% CLASIFICACIONCARROI MATLAB code for ClasificacionCarroi.fig
%      CLASIFICACIONCARROI, by itself, creates a new CLASIFICACIONCARROI or raises the existing
%      singleton*.
%
%      H = CLASIFICACIONCARROI returns the handle to a new CLASIFICACIONCARROI or the handle to
%      the existing singleton*.
%
%      CLASIFICACIONCARROI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CLASIFICACIONCARROI.M with the given input arguments.
%
%      CLASIFICACIONCARROI('Property','Value',...) creates a new CLASIFICACIONCARROI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ClasificacionCarroi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ClasificacionCarroi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ClasificacionCarroi

% Last Modified by GUIDE v2.5 03-Nov-2014 17:30:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ClasificacionCarroi_OpeningFcn, ...
                   'gui_OutputFcn',  @ClasificacionCarroi_OutputFcn, ...
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


% --- Executes just before ClasificacionCarroi is made visible.
function ClasificacionCarroi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ClasificacionCarroi (see VARARGIN)


% Choose default command line output for ClasificacionCarroi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ClasificacionCarroi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ClasificacionCarroi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s1;
s1= str2double(get(hObject,'String'))
if isnan(s1)
    s1=0
set(hObject,'String',s1);
errordlg('Ingrese numeros','ERROR');
end

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
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
global s2;
s2= str2double(get(hObject,'String'))
if isnan(s2)
    s2=0
set(hObject,'String',s2);
errordlg('Ingrese numeros','ERROR');
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
SC=[1 2 3 4 5 2 3 5;0 0 1 1 0 0 1 1; 0 1 0 1 0 1 0 1];
TC=[0 0 1 1 1 0 1 1];
%plotpv(SC,TC)
variacion=[1 5; 0 1; 0 1];
car=newp(variacion,1,'hardlim');
car.trainParam.epochs=1000;
car.trainParam.show=5;
car.iw{1,1,1}=[5 1 1];
car.b{1}=1;
car=train(car,SC,TC);

%plotpv(car.iw{1,1,1},car.b{1});

simulacion=sim(car,SC);
TC
simulacion
global s1;
global s2;
global s3;
global tipo;
auto=[0];
camion=[1];
global simu;


if s1==0 & s2==0& s3==0
   tipo='NO SE DETECTA NADA';
   im=imread('nada.jpg');
   imshow(im);
   errordlg('NO VALIDO','ERROR'); 
   %simulacion=[];
   simu=sim(car,[s1;s2;s3]);
else
    simu=sim(car,[s1;s2;s3]);
    
    if auto(1)==simu(1)
        im=imread('auto.jpg');
           imshow(im);   
            tipo='Auto';

    elseif  camion(1)==simu(1)
           im=imread('camion.jpg');
            imshow(im);       
            tipo='Camion';
    end
end

set(handles.text5,'string',simu);
set(handles.text6,'string',tipo);



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s3;
s3= str2double(get(hObject,'String'))
if isnan(s3)
    s3=0
set(hObject,'String',s3);
errordlg('Ingrese numeros','ERROR');
end
% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object deletion, before destroying properties.
function axes1_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
