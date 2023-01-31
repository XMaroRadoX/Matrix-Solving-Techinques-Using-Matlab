function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 26-Dec-2022 00:32:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function equCount_Callback(hObject, eventdata, handles)
% hObject    handle to equCount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equCount as text
%        str2double(get(hObject,'String')) returns contents of equCount as a double


% --- Executes during object creation, after setting all properties.
function equCount_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equCount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in goCount.
function goCount_Callback(hObject, eventdata, handles)
% hObject    handle to goCount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in inputSource.
function inputSource_Callback(hObject, eventdata, handles)
% hObject    handle to inputSource (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns inputSource contents as cell array
%        contents{get(hObject,'Value')} returns selected item from inputSource


% --- Executes during object creation, after setting all properties.
function inputSource_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputSource (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function equInput_Callback(hObject, eventdata, handles)
% hObject    handle to equInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equInput as text
%        str2double(get(hObject,'String')) returns contents of equInput as a double


% --- Executes during object creation, after setting all properties.
function equInput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in nextEqu.
function nextEqu_Callback(hObject, eventdata, handles)
% hObject    handle to nextEqu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in readFile.
function readFile_Callback(hObject, eventdata, handles)
% hObject    handle to readFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on selection change in methods.
function methods_Callback(hObject, eventdata, handles)
% hObject    handle to methods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns methods contents as cell array
%        contents{get(hObject,'Value')} returns selected item from methods


% --- Executes during object creation, after setting all properties.
function methods_CreateFcn(hObject, eventdata, handles)
% hObject    handle to methods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in inputEquations.
function inputEquations_Callback(hObject, eventdata, handles)
% hObject    handle to inputEquations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns inputEquations contents as cell array
%        contents{get(hObject,'Value')} returns selected item from inputEquations


% --- Executes during object creation, after setting all properties.
function inputEquations_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputEquations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maxIter_Callback(hObject, eventdata, handles)
% hObject    handle to maxIter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxIter as text
%        str2double(get(hObject,'String')) returns contents of maxIter as a double


% --- Executes during object creation, after setting all properties.
function maxIter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxIter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function epsilon_Callback(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epsilon as text
%        str2double(get(hObject,'String')) returns contents of epsilon as a double


% --- Executes during object creation, after setting all properties.
function epsilon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function initialPts_Callback(hObject, eventdata, handles)
% hObject    handle to initialPts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of initialPts as text
%        str2double(get(hObject,'String')) returns contents of initialPts as a double


% --- Executes during object creation, after setting all properties.
function initialPts_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initialPts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in initialPtsDisplay.
function initialPtsDisplay_Callback(hObject, eventdata, handles)
% hObject    handle to initialPtsDisplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns initialPtsDisplay contents as cell array
%        contents{get(hObject,'Value')} returns selected item from initialPtsDisplay


% --- Executes during object creation, after setting all properties.
function initialPtsDisplay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initialPtsDisplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla reset ;
set(handles.equation, 'String', '');
set(handles.equationsList, 'String', '');
set(handles.maxIter,'String','50');
set(handles.epsilon,'String','0.00001');
set(handles.ptsList,'String','');
set(handles.ptsInput, 'String', '');
set(handles.execTimeSeidel, 'String', '');
set(handles.execTimeLU, 'String', '');
set(handles.execTimeGE, 'String', '');
set(handles.rootsGE, 'String', '');
set(handles.rootsLU, 'String', '');
set(handles.rootsSeidel, 'String', '');
set(handles.iterSeidel, 'String', '');
set(handles.precSeidel, 'String', '');
set(handles.tableSeidel,'Data','');
cla;
delete output.txt ;


% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
% hObject    handle to submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox6.
function listbox6_Callback(hObject, eventdata, handles)
% hObject    handle to listbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox6


% --- Executes during object creation, after setting all properties.
function listbox6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox4.
function listbox4_Callback(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox4


% --- Executes during object creation, after setting all properties.
function listbox4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function equation_Callback(hObject, eventdata, handles)
% hObject    handle to equation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equation as text
%        str2double(get(hObject,'String')) returns contents of equation as a double


% --- Executes during object creation, after setting all properties.
function equation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in nextEquation.
function nextEquation_Callback(hObject, eventdata, handles)
% hObject    handle to nextEquation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
eq = get(handles.equation,'String');
row ={eq};
oldData = get(handles.equationsList,'String');
newData=[oldData; row];
set(handles.equationsList,'String',newData);
set(handles.equation,'String','');
%input any equation -- count their number and number of variables (if not
%matching -- error)


% --- Executes on button press in fileRead.
function fileRead_Callback(hObject, eventdata, handles)
% hObject    handle to fileRead (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename pathname] = uigetfile({'*.txt'},'File Selector');
if(filename~=0)
    ipfile_id=fopen(strcat(pathname,filename));

    equ_count = str2num(fgetl(ipfile_id));
    
    methodName = fgetl(ipfile_id);
    if strcmpi(methodName,'Gaussian-elimination') || strcmpi(methodName,'Gaussian Elimination') || strcmpi(methodName,'Gauss Elimination')
        set(handles.method, 'Value', 1)
    end
    if strcmpi(methodName,'LU decomposition') || strcmpi(methodName,'LU-decomposition')
        set(handles.method, 'Value', 2)
    end
    if strcmpi(methodName,'Gauss-Seidel') || strcmpi(methodName,'Gauss seidel')
        set(handles.method, 'Value', 3)
    end
    if strcmpi(methodName,'all')
        set(handles.method, 'Value', 3)
    end
    
    for i =1:equ_count;
        eq = fgetl(ipfile_id);
        row ={eq };
        oldData = get(handles.equationsList,'String');
        newData=[oldData; row];
        set(handles.equationsList,'String',newData); 
    end
    if( ~feof(ipfile_id))
        init=cell2mat(split(fgetl(ipfile_id)));
        oldPts = [];
        set(handles.ptsList,'String',init);
        
    end
    
end


% --- Executes on selection change in method.
function method_Callback(hObject, eventdata, handles)
% hObject    handle to method (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns method contents as cell array
%        contents{get(hObject,'Value')} returns selected item from method


% --- Executes during object creation, after setting all properties.
function method_CreateFcn(hObject, eventdata, handles)
% hObject    handle to method (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in equationsList.
function equationsList_Callback(hObject, eventdata, handles)
% hObject    handle to equationsList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns equationsList contents as cell array
%        contents{get(hObject,'Value')} returns selected item from equationsList


% --- Executes during object creation, after setting all properties.
function equationsList_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equationsList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to maxIter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxIter as text
%        str2double(get(hObject,'String')) returns contents of maxIter as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxIter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epsilon as text
%        str2double(get(hObject,'String')) returns contents of epsilon as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ptsInput_Callback(hObject, eventdata, handles)
% hObject    handle to ptsInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ptsInput as text
%        str2double(get(hObject,'String')) returns contents of ptsInput as a double


% --- Executes during object creation, after setting all properties.
function ptsInput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ptsInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in addPts.
function addPts_Callback(hObject, eventdata, handles)
% hObject    handle to addPts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oldPts = get(handles.ptsList,'String');
newPt = get(handles.ptsInput,'String');
newPts = [oldPts; newPt];
set(handles.ptsList,'String',newPts);



% --- Executes on selection change in ptsList.
function ptsList_Callback(hObject, eventdata, handles)
% hObject    handle to ptsList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ptsList contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ptsList


% --- Executes during object creation, after setting all properties.
function ptsList_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ptsList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in reset.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in analyze.
function analyze_Callback(hObject, eventdata, handles)
% hObject    handle to analyze (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%process inputs:
%equations --> count them and count variables in them
% 

%our code supports up top 20 variables
syms x y z a b c x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20;
if(isempty(get(handles.equationsList,'String'))) %check if user has entered and equation
    errordlg('Please Enter Equations','Error');
else
    %validate that number of equations = number of variables
    equations = get(handles.equationsList,'String');
    symEquations = []; %store symbolic equation
    v = []; %store variables occurrences
    equ_count = length(equations);
    for k=1:length(equations)
        eq=str2sym(equations{k}); %convert string equation to symbolic
        symEquations = [symEquations; eq];
        v = [ v symvar(eq)];
    end
    size = length(unique(v)); %count unique occurrences of variables
    
    if (size > equ_count)
        errordlg('Number of variables and Equations must match','Error');
    else
        method = get(handles.method,'value');
        epsilon = get(handles.epsilon,'string');
        if isempty(epsilon)
            epsilon = 0.00001;
        else
            epsilon = str2double(epsilon);
        end
        
        tech = techniques;
        [coeffs,constants] = equationsToMatrix(symEquations, unique(v));
        variables = unique(v);
        if(method == 1 || method == 4)
                %gauss elimination
                tic;
                res = tech.GaussElimination(size,epsilon,coeffs,constants);
                exec_time = toc;
                if (res == -1)
                    errordlg('Singularity Matrix Error','Error');
                else
                    set(handles.execTimeGE,'string',exec_time);
                    set(handles.rootsGE,'string',res);
                end
                t = now;
                d = datetime(t,'ConvertFrom','datenum');
                fileID = fopen('output.txt','a');
                fprintf(fileID,'%s\n','-------------------------------------------------------------------------------------------------------');
                fprintf(fileID,'%s\n','Gaussian-elimination roots');
                fprintf(fileID,'%s\n','----------------------------');
                fprintf(fileID,'\n%s     %s\n','var','value');
                for itr=1:size
                    fprintf(fileID,'%s     %f\n',char(variables(itr)),double(res(itr)));
                end
                fprintf(fileID,'\n%s     %s %s\n','Execution time',num2str(exec_time),'seconds');
                fprintf(fileID,'%s     %s\n','Sample is run at',d);
                fprintf(fileID,'%s\n\n\n','-------------------------------------------------------------------------------------------------------');
                fclose(fileID);
        end
        if(method == 2 || method == 4)
                %LU Decomposition
                tic;
                res = tech.LUDecomp(size,epsilon,coeffs,constants);
                exec_time = toc;
                if (res == -1)
                    errordlg('Failed to Compute','Error');
                else
                    set(handles.execTimeLU,'string',exec_time);
                    set(handles.rootsLU,'string',res);
                end
                
                t = now;
                d = datetime(t,'ConvertFrom','datenum');
                fileID = fopen('output.txt','a');
                fprintf(fileID,'%s\n','-------------------------------------------------------------------------------------------------------');
                fprintf(fileID,'%s\n','LU-Decomposition roots');
                fprintf(fileID,'%s\n','--------------------------');
                fprintf(fileID,'\n%s     %s\n','var','value');
                for itr=1:size
                    fprintf(fileID,'%s     %f\n',char(variables(itr)),double(res(itr)));
                end
                fprintf(fileID,'\n%s     %s %s\n','Execution time',num2str(exec_time),'seconds');
                fprintf(fileID,'%s     %s\n','Sample is run at',d);
                fprintf(fileID,'%s\n\n\n','-------------------------------------------------------------------------------------------------------');
                fclose(fileID);
        end
        if(method == 3 || method == 4)
                %Gauss Seidel
                maxiter = get(handles.maxIter,'string');
                if isempty(maxiter)
                    maxiter = 50;
                else
                    maxiter = str2double(maxiter);
                end 
                
                init = get(handles.ptsList,'String');
                if(isempty(init) || length(init)< size) %check if user has entered and equation
                    errordlg('Please Enter enough initial values','Error');
                else
                    tic;
                    res = tech.GaussSeidel(size,epsilon,coeffs,constants,maxiter,init);
                    exec_time = toc;
                    if (res == -1)
                        errordlg('Failed to Compute','Error');
                    else
                        set(handles.execTimeSeidel,'string',exec_time);
                        set(handles.rootsSeidel,'string',res(end,1:size));
                        set(handles.iterSeidel,'string',length(res)-1);
                        %arr_temp = [res(:,1:size) res(:,size+1:end)];
                        set(handles.tableSeidel,'data',res);
                        set(handles.precSeidel,'string',res(end,size+1:end) );
                        for ii=1:size
                            axes(handles.axes1);
                            plot(res(:,ii))
                            grid on;hold on;
                            xlabel('iterations')
                            ylabel('Roots')
                        end
                        t = now;
                        d = datetime(t,'ConvertFrom','datenum');
                        
                        fileID = fopen('output.txt','a');
                        fprintf(fileID,'%s\n','-------------------------------------------------------------------------------------------------------');
                        fprintf(fileID,'%s\n','Gauss-Seidel roots');
                        fprintf(fileID,'%s\n','--------------------------');
                        fprintf(fileID,'\n%s     %s\n','var','value');
                        xs=wrev(res(end,1:size));
                        for i=1:size
                            fprintf(fileID,'%s     %f\n',char(variables(i)),double(xs(i)));
                        end
                        fprintf(fileID,'\n%s    %f\n','Number of iterations',length(res)-1);
                        fprintf(fileID,'\n%s\n','Precision:');
                        prec_arr = res(end,size+1:end);
                        for i=1:size
                            fprintf(fileID,'%s     %f\n',char(variables(i)),double(prec_arr(i)));
                        end
                        fprintf(fileID,'\n%s\n','Iterations Details:');
                        for i=1:size
                            fprintf(fileID,'%s         ',char(variables(i)));
                        end
                        for i=1:size
                            fprintf(fileID,'%s%s       ','e',char(variables(i)));
                        end
                        fprintf(fileID,'\n');
                        
                        for ii=1:length(res(:,end))
                            for jj=1:size
                            fprintf(fileID,'%f  ',double(res(ii,jj)));
                            end
                            for jj=size+1:2*size
                            fprintf(fileID,'%f  ',double(res(ii,jj)));
                            end
                            fprintf(fileID,'\n');
                        end
                        fprintf(fileID,'\n%s     %s %s\n','Execution time',num2str(exec_time),'seconds');
                        fprintf(fileID,'%s     %s\n','Sample is run at',d);
                        fprintf(fileID,'%s\n\n\n','-------------------------------------------------------------------------------------------------------');
                        fclose(fileID);
                    end
                end
        end
        
    end
end





% --- Executes on selection change in rootsLU.
function rootsLU_Callback(hObject, eventdata, handles)
% hObject    handle to rootsLU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns rootsLU contents as cell array
%        contents{get(hObject,'Value')} returns selected item from rootsLU


% --- Executes during object creation, after setting all properties.
function rootsLU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rootsLU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox15.
function listbox15_Callback(hObject, eventdata, handles)
% hObject    handle to listbox15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox15 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox15


% --- Executes during object creation, after setting all properties.
function listbox15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in rootsGE.
function rootsGE_Callback(hObject, eventdata, handles)
% hObject    handle to rootsGE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns rootsGE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from rootsGE


% --- Executes during object creation, after setting all properties.
function rootsGE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rootsGE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in rootsSeidel.
function rootsSeidel_Callback(hObject, eventdata, handles)
% hObject    handle to rootsSeidel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns rootsSeidel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from rootsSeidel


% --- Executes during object creation, after setting all properties.
function rootsSeidel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rootsSeidel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in precSeidel.
function precSeidel_Callback(hObject, eventdata, handles)
% hObject    handle to precSeidel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns precSeidel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from precSeidel


% --- Executes during object creation, after setting all properties.
function precSeidel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to precSeidel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
