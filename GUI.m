function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 03-Dec-2019 19:45:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
startup_rvc
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text17, 'Visible', 'off');
set(handles.text18, 'Visible', 'off');
set(handles.text19, 'Visible', 'off');
set(handles.text20, 'Visible', 'off');
set(handles.text21, 'Visible', 'off');
set(handles.text22, 'Visible', 'off'); 
int_1_1 = get(handles.edit7, 'String');
int_1_1 = str2num(int_1_1)
int_1_2 = get(handles.edit16, 'String');
int_1_2 = str2num(int_1_2)
int_1_3 = get(handles.edit14, 'String');
int_1_3 = str2num(int_1_3)
int_1_4 = get(handles.edit15, 'String');
int_1_4 = str2num(int_1_4)
int_2_1 = get(handles.edit17, 'String');
int_2_1 = str2num(int_2_1)
int_2_2 = get(handles.edit18, 'String');
int_2_2 = str2num(int_2_2)
int_2_3 = get(handles.edit11, 'String');
int_2_3 = str2num(int_2_3)
int_2_4 = get(handles.edit13, 'String');
int_2_4 = str2num(int_2_4)
int_3_1 = get(handles.edit8, 'String');
int_3_1 = str2num(int_3_1)
int_3_2 = get(handles.edit9, 'String');
int_3_2 = str2num(int_3_2)
int_3_3 = get(handles.edit10, 'String');
int_3_3 = str2num(int_3_3)
int_3_4 = get(handles.edit12, 'String');
int_3_4 = str2num(int_3_4)
int_4_1 = get(handles.edit19, 'String');
int_4_1 = str2num(int_4_1)
int_4_2 = get(handles.edit20, 'String');
int_4_2 = str2num(int_4_2)
int_4_3 = get(handles.edit21, 'String');
int_4_3 = str2num(int_4_3)
int_4_4 = get(handles.edit22, 'String');
int_4_4 = str2num(int_4_4)
T = [int_1_1,int_1_2,int_1_3,int_1_4;int_2_1,int_2_2,int_2_3,int_2_4;int_3_1,int_3_2,int_3_3,int_3_4;int_4_1,int_4_2,int_4_3,int_4_4]
temp = load('R.mat');
R = temp.R
Inverse_kinematics = R.ikunc(T)
set(handles.text11, 'String', 'Inverse_kinematics(q1,q2...)');
set(handles.text10, 'String', Inverse_kinematics);

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
op = get(hObject,'Value')
% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a fut ure version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes during object creation, after setting all properties.
function text10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
euler_zyz
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
euler_angles_gui_zyx
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton2
set(handles.text17, 'Visible', 'off');
set(handles.text18, 'Visible', 'off');
set(handles.text19, 'Visible', 'off');
set(handles.text20, 'Visible', 'off');
set(handles.text21, 'Visible', 'off');
set(handles.text22, 'Visible', 'off'); 
get(hObject,'Value')

flag = handles.uibuttongroup2.SelectedObject.String;
switch flag
    case 'Enter DH'
        fprintf('Entering DH Parameters\n')
        prompt = {'Enter a terms, Space Separated','Enter d terms, Space Separated', ...
            'Enter alpha terms, Space Separated, in degrees','Enter theta terms, Space Separated, in degrees'};
        dlgtitle = 'DH Input';
        dims = [1 50];
    
        answer = inputdlg(prompt,dlgtitle,dims);
        a = str2num(answer{1});
        d = answer{2};
        alpha = str2num(answer{3});
        theta = answer{4};        
        
        
        
        
        %Create symbolic matrices for substition
        symTheta = sym('Theta',[1, length(a)]);
        symTheta = transpose(symTheta);
        symD = sym('D',[1,length(a)]);
        symD = transpose(symD);
      
        
        
        tempd = strsplit(d);
        for i = 1:length(tempd)
            if(~isempty(str2num(char(tempd(i)))))
                d2(i) = str2num(char(tempd(i)));
            else
                d2(i) = symD(i);
            end
        end
        
        temptheta = strsplit(theta);
        for i = 1:length(temptheta)
            if(~isempty(str2num(char(temptheta(i)))))
                theta2(i) = str2num(char(temptheta(i)));
            else
                theta2(i) = symTheta(i);
            end
        end
        
        DHTable = genDHTable(a,d2,alpha,theta2);
        
        
        
    case 'Enter Parameters'
        fprintf('Entering Robot Parameters\n')

        prompt = {'Enter number of Joints, including end effector','Enter Joint types (R or P or E), Space separated', ...
            'Enter length of links, Space separated', 'Enter Z-axis of joints,as unit vector, space separated'...
            'Enter the link Direction, as unit vector, space separated'};
        dlgtitle = 'Robot Input';
        dims = [1 50];

        answer = inputdlg(prompt,dlgtitle,dims);

        numJoints = str2num(answer{1});
        JointTypes = answer{2};
        linkLengths = str2num(answer{3});
        zAxis = str2num(answer{4});
        linkDir = str2num(answer{5});
        counter  = 0;
        for i = 1:3:length(zAxis)
            if(i ~= 1)
                zaxis(1:3,1,(i-3*counter)+counter) = zAxis(i:i+2);
             else
                zaxis(1:3,1,i) = zAxis(i:i+2);
             end
            counter = counter + 1;
        end
        
        counter = 0;
        for i = 1:3:length(linkDir)
            if(i == 1)
                linkdir(1:3,1,i) = linkDir(i:i+2);
            else
                linkdir(1:3,1,(i-3*counter)+counter) = linkDir(i:i+2);
            end
            counter = counter + 1;
        end
        
        %Find the DH table from the input parameters
        DHTable = calcDHfromRobot(numJoints,jointTypes,linkLengths,zaxis,linkdir);
        
        
    
    otherwise
        handles.text10.Value = 'None Selected';
 
%End of the switch statement      
end
sz = size(DHTable);

dcol = DHTable(:,2);

for i = 1:sz(1)
    %D is a numeric value
    if(~isempty(str2num(char(dcol(i)))))
        L2{i} = Link('a', double(DHTable(i,1)), 'alpha',double(DHTable(i,3)),'d',double(DHTable(i,2)));
    else
        L2{i} = Link('a',double(DHTable(i,1)),'alpha',double(DHTable(i,3)),'theta',double(DHTable(i,4)));
    end
end

tempL = L2{1};
for i = 2:length(L2)
    tempL = [tempL L2{i}];
end

R = SerialLink(tempL);
R.name = 'Robot';
% figure(100)
% plot(R,zeros(sz(1)))
% teach(R)
set(handles.text11, 'String', 'DH parameters values');
set(handles.text10, 'String', char(R));
save('C:\Users\Piyush\Desktop\ASU\study\MAE 547\Final Project\dhtable1.mat','DHTable');


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



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton3
set(handles.text17, 'Visible', 'off');
set(handles.text18, 'Visible', 'off');
set(handles.text19, 'Visible', 'off');
set(handles.text20, 'Visible', 'off');
set(handles.text21, 'Visible', 'off');
set(handles.text22, 'Visible', 'off'); 
get(hObject,'Value')

flag = handles.uibuttongroup2.SelectedObject.String;
switch flag
    case 'Enter DH'
        fprintf('Entering DH Parameters\n')
        prompt = {'Enter a terms, Space Separated','Enter d terms, Space Separated', ...
            'Enter alpha terms, Space Separated, in degrees','Enter theta terms, Space Separated, in degrees'};
        dlgtitle = 'DH Input';
        dims = [1 50];
    
        answer = inputdlg(prompt,dlgtitle,dims);
        a = str2num(answer{1});
        d = answer{2};
        alpha = str2num(answer{3});
        theta = answer{4};        
        
        
        
        
        %Create symbolic matrices for substition
        symTheta = sym('Theta',[1, length(a)]);
        symTheta = transpose(symTheta);
        symD = sym('D',[1,length(a)]);
        symD = transpose(symD);
      
        
        
        tempd = strsplit(d);
        for i = 1:length(tempd)
            if(~isempty(str2num(char(tempd(i)))))
                d2(i) = str2num(char(tempd(i)));
            else
                d2(i) = symD(i);
            end
        end
        
        temptheta = strsplit(theta);
        for i = 1:length(temptheta)
            if(~isempty(str2num(char(temptheta(i)))))
                theta2(i) = str2num(char(temptheta(i)));
            else
                theta2(i) = symTheta(i);
            end
        end
        
        DHTable = genDHTable(a,d2,alpha,theta2);
        
        
        
    case 'Enter Parameters'
        fprintf('Entering Robot Parameters\n')

        prompt = {'Enter number of Joints, including end effector','Enter Joint types (R or P or E), Space separated', ...
            'Enter length of links, Space separated', 'Enter Z-axis of joints,as unit vector, space separated'...
            'Enter the link Direction, as unit vector, space separated'};
        dlgtitle = 'Robot Input';
        dims = [1 50];

        answer = inputdlg(prompt,dlgtitle,dims);

        numJoints = str2num(answer{1});
        JointTypes = answer{2};
        linkLengths = str2num(answer{3});
        zAxis = str2num(answer{4});
        linkDir = str2num(answer{5});
        counter  = 0;
        for i = 1:3:length(zAxis)
            if(i ~= 1)
                zaxis(1:3,1,(i-3*counter)+counter) = zAxis(i:i+2);
             else
                zaxis(1:3,1,i) = zAxis(i:i+2);
             end
            counter = counter + 1;
        end
        
        counter = 0;
        for i = 1:3:length(linkDir)
            if(i == 1)
                linkdir(1:3,1,i) = linkDir(i:i+2);
            else
                linkdir(1:3,1,(i-3*counter)+counter) = linkDir(i:i+2);
            end
            counter = counter + 1;
        end
        
        %Find the DH table from the input parameters
        DHTable = calcDHfromRobot(numJoints,jointTypes,linkLengths,zaxis,linkdir);
        
        
    
    otherwise
        handles.text10.Value = 'None Selected';
 
%End of the switch statement      
end
sz = size(DHTable);

dcol = DHTable(:,2);

for i = 1:sz(1)
    %D is a numeric value
    if(~isempty(str2num(char(dcol(i)))))
        L2{i} = Link('a', double(DHTable(i,1)), 'alpha',double(DHTable(i,3)),'d',double(DHTable(i,2)));
    else
        L2{i} = Link('a',double(DHTable(i,1)),'alpha',double(DHTable(i,3)),'theta',double(DHTable(i,4)));
    end
end

tempL = L2{1};
for i = 2:length(L2)
    tempL = [tempL L2{i}];
end

R = SerialLink(tempL);
save('C:\Users\Piyush\Desktop\ASU\study\MAE 547\Final Project\R.mat','R');
set(handles.text11, 'String', 'DH parameters values');
set(handles.text10, 'String', char(R));



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
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
set(handles.text17, 'Visible', 'off');
set(handles.text18, 'Visible', 'off');
set(handles.text19, 'Visible', 'off');
set(handles.text20, 'Visible', 'off');
set(handles.text21, 'Visible', 'off');
set(handles.text22, 'Visible', 'off'); 
temp = load('dhtable1.mat');
[symDH] = temp.DHTable;
q = get(handles.edit23, 'String');
q = str2num(q);

    % Substituting user input joint variables in DH parameters (confirm if numJoints includes end effector or not)
    k = symvar(symDH);
    [rows,cols] = size(symDH);
    for i = 1:rows
        [row,col] = find(symDH == k(i));
        symDH(row,col) = q(i);
    end
    
    % A contains the transformation matrices between successive frames(confirm if alpha,theta are in radians in symDH)
    A = sym(zeros(4,4,rows));
    for i = 1:rows
        A(:,:,i) = [cos(symDH(i,4)*(pi/180)), -sin(symDH(i,4)*(pi/180))*cos(symDH(i,3)*(pi/180)), sin(symDH(i,4)*(pi/180))*sin(symDH(i,3)*(pi/180)), symDH(i,1)*cos(symDH(i,4)*(pi/180));
                    sin(symDH(i,4)*(pi/180)), cos(symDH(i,4)*(pi/180))*cos(symDH(i,3)*(pi/180)), -cos(symDH(i,4)*(pi/180))*sin(symDH(i,3)*(pi/180)), symDH(1,1)*sin(symDH(i,4)*(pi/180));
                    0, sin(symDH(i,3)*(pi/180)), cos(symDH(i,3)*(pi/180)), symDH(i,2); 
                    0, 0, 0, 1];
    end
    
    % T contains the transformation matrices of frames w.r.t the base frame 
    T = sym(zeros(4,4,rows));
    prev = A(:,:,1);
    for i = 1:rows
        if i == 1
            T(:,:,i) = prev;
        else
            T(:,:,i) = prev * A(:,:,i);
            prev = T(:,:,i);
        end
    end
    
    % Finding the end-effector position w.r.t base frame
    pos_e = T(1:3,end,end);
    set(handles.text11, 'String', 'Forward Kinematics(Pose: x , y , z)');
    pos_e = cellstr(num2str(double(pos_e)));
    set(handles.text10, 'String', pos_e);

   
sz = size(symDH);
dcol = symDH(:,2);

for i = 1:sz(1)
    %D is a numeric value
    if(~isempty(str2num(char(dcol(i)))))
        L2{i} = Link('a', double(symDH(i,1)), 'alpha',double(symDH(i,3)),'d',double(symDH(i,2)));
    else
        L2{i} = Link('a',double(symDH(i,1)),'alpha',double(symDH(i,3)),'theta',double(symDH(i,4)));
    end
end

tempL = L2{1};
for i = 2:length(L2)
    tempL = [tempL L2{i}];
end

R = SerialLink(tempL);
    
figure(100)
plot(R,zeros(sz(1)))
teach(R)


% --- Executes on button press in togglebutton4.
function togglebutton4_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton4
set(handles.text17, 'Visible', 'off');
set(handles.text18, 'Visible', 'off');
set(handles.text19, 'Visible', 'off');
set(handles.text20, 'Visible', 'off');
set(handles.text21, 'Visible', 'off');
set(handles.text22, 'Visible', 'off');  
get(hObject,'Value')

flag = handles.uibuttongroup3.SelectedObject.String;
switch flag
    case 'Enter DH'
        fprintf('Entering DH Parameters\n')
        prompt = {'Enter a terms, Space Separated','Enter d terms, Space Separated', ...
            'Enter alpha terms, Space Separated, in degrees','Enter theta terms, Space Separated, in degrees'};
        dlgtitle = 'DH Input';
        dims = [1 50];
    
        answer = inputdlg(prompt,dlgtitle,dims);
        a = str2num(answer{1});
        d = answer{2};
        alpha = str2num(answer{3});
        theta = answer{4};        
        
        
        
        
        %Create symbolic matrices for substition
        symTheta = sym('Theta',[1, length(a)]);
        symTheta = transpose(symTheta);
        symD = sym('D',[1,length(a)]);
        symD = transpose(symD);
      
        
        counter  = 1;
        for i = 1:length(d)
            if(~isempty(str2num(d(i))))
                d2(counter) = str2num(d(i));
                counter = counter + 1;
            elseif(d(i) ~= ' ')
                d2(counter) = symD(counter);
                counter = counter + 1;
            end
        end
        
        counter = 1;
        for i = 1:length(theta)
            if(~isempty(str2num(theta(i))))
                theta2(counter) = str2num(theta(i));
                counter = counter + 1;
            elseif(theta(i) ~= ' ')
                theta2(counter) = symTheta(counter);
                counter = counter +1;
            end
        end
        
        DHTable = genDHTable(a,d2,alpha,theta2);
        
        
        
    case 'Enter Parameters'

        prompt = {'Enter number of Joints, including end effector','Enter Joint types (R or P or E), Space separated', ...
            'Enter length of links, Space separated', 'Enter Z-axis of joints,as unit vector, space separated'...
            'Enter the link Direction, as unit vector, space separated'};
        dlgtitle = 'Robot Input';
        dims = [1 50];

        answer = inputdlg(prompt,dlgtitle,dims);

        numJoints = str2num(answer{1});
        JointTypes = answer{2};
        linkLengths = str2num(answer{3});
        zAxis = str2num(answer{4});
        linkDir = str2num(answer{5});
        counter  = 0;
        for i = 1:3:length(zAxis)
            if(i ~= 1)
                zaxis(1:3,1,(i-3*counter)+counter) = zAxis(i:i+2);
             else
                zaxis(1:3,1,i) = zAxis(i:i+2);
             end
            counter = counter + 1;
        end
        
        counter = 0;
        for i = 1:3:length(linkDir)
            if(i == 1)
                linkdir(1:3,1,i) = linkDir(i:i+2);
            else
                linkdir(1:3,1,(i-3*counter)+counter) = linkDir(i:i+2);
            end
            counter = counter + 1;
        end
        
        %Find the DH table from the input parameters
        DHTable = calcDHfromRobot(numJoints,jointTypes,linkLengths,zaxis,linkdir);
        
        
    
    otherwise
        handles.text10.Value = 'None Selected';
 
%End of the switch statement      
end
sz = size(DHTable);

dcol = DHTable(:,2);

for i = 1:sz(1)
    %D is a numeric value
    if(~isempty(str2num(char(dcol(i)))))
        L2{i} = Link('a', double(DHTable(i,1)), 'alpha',double(DHTable(i,3)),'d',double(DHTable(i,2)));
    else
        L2{i} = Link('a',double(DHTable(i,1)),'alpha',double(DHTable(i,3)),'theta',double(DHTable(i,4)));
    end
end

tempL = L2{1};
for i = 2:length(L2)
    tempL = [tempL L2{i}];
end


R = SerialLink(tempL);
save('C:\Users\Piyush\Desktop\ASU\study\MAE 547\Final Project\dhtable_diffkin.mat','DHTable');


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        prompt = {'Enter a terms, Space Separated','Enter d terms, Space Separated', ...
            'Enter alpha terms, Space Separated, in degrees','Enter theta terms, Space Separated, in degrees',...
            'Enter the Joint Types, no end effector','Enter the Joint Velocities'};
        dlgtitle = 'Numeric Input';
        dims = [1 50];
    
        answer = inputdlg(prompt,dlgtitle,dims);
        a = str2num(answer{1});
        d = str2num(answer{2});
        alpha = str2num(answer{3});
        theta = str2num(answer{4}); 
        jointTypes = answer{5};
        jointVel = (str2num(answer{6}))';
        
        [sing,symV,Ve,J] = forwardDiffKin(a,d,alpha,theta,jointTypes,jointVel);
        set(handles.text10, 'String', '');
        set(handles.text17, 'Visible', 'on');
        set(handles.text18, 'Visible', 'on');
        set(handles.text19, 'Visible', 'on');
        set(handles.text20, 'Visible', 'on');
        set(handles.text21, 'Visible', 'on');
        set(handles.text22, 'Visible', 'on');        
%         text_to_display = cellstr(sym2cell(symV));
        x = arrayfun(@char, symV, 'uniform', 0);
        set(handles.text20, 'String', x);
        end_effector_velo = cellstr(num2str(Ve));
        set(handles.text22, 'String', end_effector_velo);
        y = arrayfun(@char, sing, 'uniform', 0);
        set(handles.text21, 'String', y);
        


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 prompt = {'Enter the distance to be translated along x-axis','Enter the distance to be translated along y-axis', ...
            'Enter the distance to be translated along z-axis','Enter the point coordinates w.r.t original axes to be shown after translation'};
        dlgtitle = 'Input';
        dims = [1 50];

        answer = inputdlg(prompt,dlgtitle,dims);

        t_x = str2num(answer{1});
        t_y = str2num(answer{2});
        t_z = str2num(answer{3});
        P = str2num(answer{4});
        t = [1 0 0 t_x;
             0 1 0 t_y;
             0 0 1 t_z;
             0 0 0 1];
        t_v = inv(t) * [P';1];
    set(handles.text11, 'String', 'Coordinates of the point w.r.t new frame after translation: ');
    text_to_display = cellstr(num2str(t_v(1:3)));
    set(handles.text10, 'String', text_to_display);
    
% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 prompt = {'Enter the vector about which translation takes place','Distance to be translated along the vector', ...
            'Enter the point coordinates w.r.t original axes to be shown after translation'};
        dlgtitle = 'Input';
        dims = [1 50];

        answer = inputdlg(prompt,dlgtitle,dims);

        V = str2num(answer{1});
        d = str2num(answer{2});
        P = str2num(answer{3});
    
    rx = V(1)/sqrt(V(1)^2 + V(2)^2 + V(3)^2);
    ry = V(2)/sqrt(V(1)^2 + V(2)^2 + V(3)^2);
    rz = V(3)/sqrt(V(1)^2 + V(2)^2 + V(3)^2);
    sin_alpha = ry/sqrt(rx^2 +ry^2);
    cos_alpha = rx/sqrt(rx^2 +ry^2);
    sin_beta = sqrt(rx^2 +ry^2);
    cos_beta = rz;
    
    % Translation
    t = [1 0 0 d*sin_beta*cos_alpha;
         0 1 0 d*sin_beta*sin_alpha;
         0 0 1 d*cos_beta;
         0 0 0 1];
    t_v = inv(t) * [P'; 1];
    set(handles.text17, 'Visible', 'off');
    set(handles.text18, 'Visible', 'off');
    set(handles.text19, 'Visible', 'off');
    set(handles.text20, 'Visible', 'off');
    set(handles.text21, 'Visible', 'off');
    set(handles.text22, 'Visible', 'off'); 
    set(handles.text11, 'String', 'Coordinates of the point w.r.t new frame after translation: ');
    text_to_display = cellstr(num2str(t_v(1:3)));
    set(handles.text10, 'String', text_to_display);


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 prompt = {'Enter the vector about which rotation takes place','Enter the angle in degrees the vector is rotated', ...
            'Enter the point coordinates w.r.t original axes to be shown after rotation'};
        dlgtitle = 'Input';
        dims = [1 50];

        answer = inputdlg(prompt,dlgtitle,dims);

        V = str2num(answer{1});
        theta_deg = str2num(answer{2});
        P = str2num(answer{3});
        
        rx = V(1)/sqrt(V(1)^2 + V(2)^2 + V(3)^2);
        ry = V(2)/sqrt(V(1)^2 + V(2)^2 + V(3)^2);
        rz = V(3)/sqrt(V(1)^2 + V(2)^2 + V(3)^2);

        theta = deg2rad(theta_deg);
        R = [(rx^2)*(1-cos(theta))+cos(theta), rx*ry*(1-cos(theta))-rz*sin(theta), rx*rz*(1-cos(theta))+ry*sin(theta);
             rx*ry*(1-cos(theta))+rz*sin(theta), (ry^2)*(1-cos(theta))+cos(theta), ry*rz*(1-cos(theta))-rx*sin(theta);
             rx*rz*(1-cos(theta))-ry*sin(theta), ry*rz*(1-cos(theta))+rx*sin(theta), (rz^2)*(1-cos(theta))+cos(theta)];
        r_v = R' * P';
        set(handles.text17, 'Visible', 'off');
        set(handles.text18, 'Visible', 'off');
        set(handles.text19, 'Visible', 'off');
        set(handles.text20, 'Visible', 'off');
        set(handles.text21, 'Visible', 'off');
        set(handles.text22, 'Visible', 'off'); 
        set(handles.text11, 'String', 'Coordinates of the point w.r.t new frame after translation: ');
        text_to_display = cellstr(num2str(r_v(1:3)));
        set(handles.text10, 'String', text_to_display);

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt = {'Enter the vector about which rotation or translation takes place','Enter the Distance to be translated along the vector', ...
            'Enter the angle in degrees the vector is rotated','Enter the point coordinates w.r.t original axes to be shown after translation and rotation'};
        dlgtitle = 'Input';
        dims = [1 50];

        answer = inputdlg(prompt,dlgtitle,dims);

        V = str2num(answer{1});
        d = str2num(answer{2});
        theta_deg = str2num(answer{3});
        P = str2num(answer{4});
        
          
        rx = V(1)/sqrt(V(1)^2 + V(2)^2 + V(3)^2);
        ry = V(2)/sqrt(V(1)^2 + V(2)^2 + V(3)^2);
        rz = V(3)/sqrt(V(1)^2 + V(2)^2 + V(3)^2);
        sin_alpha = ry/sqrt(rx^2 +ry^2);
        cos_alpha = rx/sqrt(rx^2 +ry^2);
        sin_beta = sqrt(rx^2 +ry^2);
        cos_beta = rz;

        % Translation and Rotation
   
        theta = deg2rad(theta_deg);
        T = [(rx^2)*(1-cos(theta))+cos(theta), rx*ry*(1-cos(theta))-rz*sin(theta), rx*rz*(1-cos(theta))+ry*sin(theta), d*sin_beta*cos_alpha;
             rx*ry*(1-cos(theta))+rz*sin(theta), (ry^2)*(1-cos(theta))+cos(theta), ry*rz*(1-cos(theta))-rx*sin(theta), d*sin_beta*sin_alpha;
             rx*rz*(1-cos(theta))-ry*sin(theta), ry*rz*(1-cos(theta))+rx*sin(theta), (rz^2)*(1-cos(theta))+cos(theta), d*cos_beta;
             0 0 0 1];

        T_v = inv(T) * [P';1];

        set(handles.text17, 'Visible', 'off');
        set(handles.text18, 'Visible', 'off');
        set(handles.text19, 'Visible', 'off');
        set(handles.text20, 'Visible', 'off');
        set(handles.text21, 'Visible', 'off');
        set(handles.text22, 'Visible', 'off'); 
        set(handles.text11, 'String', 'Coordinates of the point w.r.t new frame after translation: ');
        text_to_display = cellstr(num2str(T_v(1:3)));
        set(handles.text10, 'String', text_to_display);
