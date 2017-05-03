function varargout = Code(varargin)
% CODE MATLAB code for Code.fig
%      CODE, by itself, creates a new CODE or raises the existing
%      singleton*.
%
%      H = CODE returns the handle to a new CODE or the handle to
%      the existing singleton*.
%
%      CODE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CODE.M with the given input arguments.
%
%      CODE('Property','Value',...) creates a new CODE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Code_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Code_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Code

% Last Modified by GUIDE v2.5 21-Mar-2017 11:31:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Code_OpeningFcn, ...
                   'gui_OutputFcn',  @Code_OutputFcn, ...
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


% --- Executes just before Code is made visible.
function Code_OpeningFcn(hObject, ~, handles, varargin)
%handles.output = hObject; guips = get(hObject,'Position'); WindowAPI(hObject,'Position',guips); WindowAPI(hObject,'Clip');
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Code (see VARARGIN)

% Choose default command line output for Code
handles.output = hObject;
global im4
im4=imread('C:\Users\KHUSHAL\Documents\MATLAB\12.png');
axes(handles.axes1);
imshow(im4);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Code wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Code_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
set(gcf,'Visible','off');
Get_Image;



% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.

function pushbutton2_Callback(hObject, eventdata, handles)
set(gcf,'Visible','off');
PreProcesing;
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
%set(gcf,'Visible','off');
   global im3
%b=rgb2gray(im3);
%b=im2bw(b);
   b = im3;
   [y1,x1] = size(b);
   c=cov(double(b));
   c=princomp(c);

for x= 1:1:100
             s= num2str(x);
             s1='.jpg';
             s=strcat(s,s1);
             a2=imread(s);
      %a2=imread(s);
      %a2=imrotate(a2,10);
             b2=rgb2gray(a2);
             b2=im2bw(b2);
             b2=imresize(b2, [y1 x1]);
             c2=cov(double(b2));
             c2=princomp(c2);
             y=dot(c,c2);
             a=y(1);
             dis1='Value of pca for  ';
             dis1=strcat(dis1,s(1));
             dis1=strcat (dis1,' person is');
             disp(dis1);
             disp(a);
             B = 1.00000;
             e = .000003;
             flag=0;
             if abs(a - B) < e
                  %msgbox('person is valid  ');
                      flag=1;
                      ans1='Valid and Palm is of Person ';
                  %disp('Value after enting if is ')
                      ans1=strcat(ans1,s(1));
                      msgbox(ans1);
                      clear all;
                  % disp(a);
                      break;
                      
                      %else
                            % msgbox('person is invalid  ');
                            % disp(B);
                            % disp('Value after entering else is');
                            % disp(a);

             end
end
if flag==0
    
    msgbox('person is invalid  ');
end

% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
set(gcf,'Visible','off');
AboutUS;
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
set(gcf,'Visible','off');
helpUs;

% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
close('Code');
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
