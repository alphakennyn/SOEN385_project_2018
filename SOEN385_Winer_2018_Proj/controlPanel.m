function varargout = controlPanel(varargin)
% CONTROLPANEL MATLAB code for controlPanel.fig
%      CONTROLPANEL, by itself, creates a new CONTROLPANEL or raises the existing
%      singleton*.
%
%      H = CONTROLPANEL returns the handle to a new CONTROLPANEL or the handle to
%      the existing singleton*.
%
%      CONTROLPANEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONTROLPANEL.M with the given input arguments.
%
%      CONTROLPANEL('Property','Value',...) creates a new CONTROLPANEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before controlPanel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to controlPanel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help controlPanel

% Last Modified by GUIDE v2.5 09-Apr-2018 18:28:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @controlPanel_OpeningFcn, ...
                   'gui_OutputFcn',  @controlPanel_OutputFcn, ...
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


% --- Executes just before controlPanel is made visible.
function controlPanel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to controlPanel (see VARARGIN)

% Choose default command line output for controlPanel
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes controlPanel wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = controlPanel_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



clc;


function load_a_model(model)
    if(bdIsLoaded(model))
          sim(model)  
    else    
        open(model);
        load_system(model)
        sim(model)
    end
    
% --- Executes on button press in partA.
function partA_Callback(hObject, eventdata, handles)
% hObject    handle to partA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    model = 'questionA';
    load_a_model(model)

% --- Executes on button press in partB.
function partB_Callback(hObject, eventdata, handles)
% hObject    handle to partB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    model = 'questionB';
    load_a_model(model)

% --- Executes on button press in partC.
function partC_Callback(hObject, eventdata, handles)
% hObject    handle to partC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    model = 'questionC';
    load_a_model(model);





function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    open_system('questionA');
    load_system('questionA');
    p=get(handles.edit4,'String');
    i=get(handles.edit5,'String');
    d=get(handles.edit6,'String');
    t=get(handles.edit7,'String');
    if(and(str2double(p)~=0, str2double(i)~=0))
        if(str2double(d)~=0)
            blk = tunablePID('pidblock','PID', str2double(t));
            blk.Kp.Value = str2double(p);        % initialize Kp to p
            blk.Ki.Value = str2double(i);        % initialize Ki to i
            blk.Kd.Value = str2double(d);        % initialize Kd to d
            blk.Tf.Value = str2double(t);
            set_param('questionA/PID Controller','P', p);
            set_param('questionA/PID Controller','I', i);
            set_param('questionA/PID Controller','D', d);
            blk.Tf.Free = false;
        else
            blk = tunablePID('piblock','PI', str2double(t));
            blk.Kp.Value = str2double(p);        % initialize Kp to p
            blk.Ki.Value = str2double(i);        % initialize Ki to i
            blk.Tf.Value = str2double(t);
            set_param('questionA/PID Controller','P', p);
            set_param('questionA/PID Controller','I', i);
            blk.Tf.Free = false;
        end
    end
    if(and(str2double(p)~=0, str2double(d)~=0))
        if(str2double(i)==0)
            blk = tunablePID('pdblock','PD', str2double(t));
            blk.Kp.Value = str2double(p);        % initialize Kp to p
            blk.Kd.Value = str2double(d);        % initialize Kd to d
            blk.Tf.Value = str2double(t);
            set_param('questionA/PID Controller','P', p);
            set_param('questionA/PID Controller','D', d);
            blk.Tf.Free = false;
        end
    end
    if(and(str2double(p)~=0, str2double(i)==0))
        if(str2double(d)==0)
            blk = tunablePID('pblock','P', str2double(t));
            blk.Kp.Value = str2double(p);        % initialize Kp to p
            blk.Tf.Value = str2double(t);
            blk.Tf.Free = false;
            set_param('questionA/PID Controller','P', p);
            %disp(P_Gain_Val);
        end
    end
    disp(pid(blk));
