function varargout = helpUs(varargin)
% HELPUS MATLAB code for helpUs.fig
%      HELPUS, by itself, creates a new HELPUS or raises the existing
%      singleton*.
%
%      H = HELPUS returns the handle to a new HELPUS or the handle to
%      the existing singleton*.
%
%      HELPUS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELPUS.M with the given input arguments.
%
%      HELPUS('Property','Value',...) creates a new HELPUS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before helpUs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to helpUs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help helpUs

% Last Modified by GUIDE v2.5 17-Jan-2017 12:54:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @helpUs_OpeningFcn, ...
                   'gui_OutputFcn',  @helpUs_OutputFcn, ...
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


% --- Executes just before helpUs is made visible.
function helpUs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to helpUs (see VARARGIN)

% Choose default command line output for helpUs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes helpUs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = helpUs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
set(gcf,'Visible','off');
Code;
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
