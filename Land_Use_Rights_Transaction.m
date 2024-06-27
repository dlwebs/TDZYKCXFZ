function varargout = Land_Use_Rights_Transaction(varargin)
% LAND_USE_RIGHTS_TRANSACTION MATLAB code for Land_Use_Rights_Transaction.fig
%      LAND_USE_RIGHTS_TRANSACTION, by itself, creates a new LAND_USE_RIGHTS_TRANSACTION or raises the existing
%      singleton*.
%
%      H = LAND_USE_RIGHTS_TRANSACTION returns the handle to a new LAND_USE_RIGHTS_TRANSACTION or the handle to
%      the existing singleton*.
%
%      LAND_USE_RIGHTS_TRANSACTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAND_USE_RIGHTS_TRANSACTION.M with the given input arguments.
%
%      LAND_USE_RIGHTS_TRANSACTION('Property','Value',...) creates a new LAND_USE_RIGHTS_TRANSACTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Land_Use_Rights_Transaction_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Land_Use_Rights_Transaction_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Land_Use_Rights_Transaction

% Last Modified by GUIDE v2.5 15-May-2024 16:08:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Land_Use_Rights_Transaction_OpeningFcn, ...
                   'gui_OutputFcn',  @Land_Use_Rights_Transaction_OutputFcn, ...
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


% --- Executes just before Land_Use_Rights_Transaction is made visible.
function Land_Use_Rights_Transaction_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Land_Use_Rights_Transaction (see VARARGIN)

% Choose default command line output for Land_Use_Rights_Transaction
handles.output = hObject;
handles = initializeGUIComponents(handles);
% Update handles structure
guidata(hObject, handles);



% --- Outputs from this function are returned to the command line.
function varargout = Land_Use_Rights_Transaction_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = msgbox('网络连接状态正常', '网络连通性测试','help');
jMsgBox = h.JavaFrame.getFigurePanelContainer.getComponent(0).getTopLevelAncestor;
jMsgBox.setAlwaysOnTop(true);
figure(handles.figure1);
drawnow; pause(1); 
capture_and_draw_msgbox(h, true, 'pushbutton3', 'uipanel1', true, 'tu11.png');



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'visible','off');



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



% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1



% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1



% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider



% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



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



% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2



% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3



function handles = initializeGUIComponents(handles)
global ELEMENT_TOP;
ELEMENT_TOP = 300;
set(handles.text26, 'String', '  土地使用权交易执行与跟踪系统');
handles.uipanel2.Title = '土地使用权类别管理';
handles.uipanel3.Title = '土地使用权交易范围管理';
handles.uipanel4.Title = '土地使用权交易设置';
handles.uipanel5.Title = '土地使用权交易标准设置';
handles.uipanel6.Title = '使用权交易效果评估';
set(handles.pushbutton8, 'String', '确认选择');
set(handles.pushbutton9, 'String', '确认选择');
set(handles.pushbutton10, 'String', '保存设置');
set(handles.pushbutton11, 'String', '保存设置');
set(handles.pushbutton12, 'String', '综合评估');
set(handles.pushbutton5, 'String', '导入土地使用权交易流程图');
set(handles.pushbutton6, 'String', '绘制土地使用权交易效果分析三维图');
set(handles.pushbutton7, 'String', '绘制使用权交易效果评估分析柱状图');
unit_content = {'', '', '', '', '分'};
text_contents1 = {'城市土地交易', '农村土地交易', '工业用地交易', '商业用地交易', '居住用地交易', '公共设施用地交易', '特殊用途用地交易'};
text_contents2 = {'土地征用', '土地出让', '土地租赁', '土地抵押', '土地转让', '土地收回', '土地划拨'};
text_contents3 = {'交易方式', '交易流程', '交易期限', '交易价格', '交易风险控制', '交易税费', '交易模式'};
text_contents4 = {'交易税率', '最低交易价格', '最高交易价格', '合同有效期', '最低租赁期限', '最高租赁期限', '抵押额度'};
text_contents5 = {'交易价格合理性评估', '交易流程透明度评估', '合同签订及时性评估', '交易信息公开性评估', '交易税费缴纳准确性评估', '交易合同备案及时性评估', '土地用途符合性评估'};
features1 = [
    struct('type', 'radiobutton', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
    struct('type', 'radiobutton', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
    struct('type', 'radiobutton', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
    struct('type', 'radiobutton', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
    struct('type', 'radiobutton', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
    struct('type', 'radiobutton', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
    struct('type', 'radiobutton', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
];
features2 = [
    struct('type', 'checkbox', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
    struct('type', 'checkbox', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
    struct('type', 'checkbox', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
    struct('type', 'checkbox', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
    struct('type', 'checkbox', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
    struct('type', 'checkbox', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
    struct('type', 'checkbox', 'fontSize', 12, 'width', 80, 'defaultValue', '选择', 'items', {{}}, 'range', [], 'unit', '', 'unitFontSize', 14),...
];
features3 = [
    struct('type', 'popupmenu', 'items', {formatItems('拍卖|招标|协议')}, 'width', 100, 'fontSize', 10, 'range', [], 'defaultValue', '', 'unit', '', 'unitFontSize', 14),...
    struct('type', 'popupmenu', 'items', {formatItems('合同签订|款项支付|产权过户')}, 'width', 100, 'fontSize', 10, 'range', [], 'defaultValue', '', 'unit', '', 'unitFontSize', 14),...
    struct('type', 'popupmenu', 'items', {formatItems('短期|中期|长期')}, 'width', 100, 'fontSize', 10, 'range', [], 'defaultValue', '', 'unit', '', 'unitFontSize', 14),...
    struct('type', 'popupmenu', 'items', {formatItems('市场价|评估价|议定价')}, 'width', 100, 'fontSize', 10, 'range', [], 'defaultValue', '', 'unit', '', 'unitFontSize', 14),...
    struct('type', 'popupmenu', 'items', {formatItems('低风险|中风险|高风险')}, 'width', 100, 'fontSize', 10, 'range', [], 'defaultValue', '', 'unit', '', 'unitFontSize', 14),...
    struct('type', 'popupmenu', 'items', {formatItems('税收优惠|税费减免|正常税费')}, 'width', 100, 'fontSize', 10, 'range', [], 'defaultValue', '', 'unit', '', 'unitFontSize', 14),...
    struct('type', 'popupmenu', 'items', {formatItems('在线交易|线下交易')}, 'width', 100, 'fontSize', 10, 'range', [], 'defaultValue', '', 'unit', '', 'unitFontSize', 14),...
];
features4 = [
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '%', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '元/㎡', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '元/㎡', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '年', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '年', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '年', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '%', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
];
features5 = [
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '分', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '分', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '分', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '分', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '分', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '分', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
    struct('type', 'edit', 'fontSize', 12, 'width', 60, 'unit', '分', 'unitFontSize', 14, 'defaultValue', '', 'items', {{}}, 'range', []),...
];
%  功能点名称创建（键）的调用方法
handles = createDynamicText(handles, handles.uipanel2, text_contents1, 14, 10, 39);
handles = createDynamicText(handles, handles.uipanel3, text_contents2, 14, 10, 39);
handles = createDynamicText(handles, handles.uipanel4, text_contents3, 14, 10, 39);
handles = createDynamicText(handles, handles.uipanel5, text_contents4, 14, 10, 39);
handles = createDynamicText(handles, handles.uipanel6, text_contents5, 14, -5, 39);

%  功能点值创建（值）的调用方法
handles = createUIComponents(handles, handles.uipanel2, features1, 39, 200);
handles = createUIComponents(handles, handles.uipanel3, features2, 39, 200);
handles = createUIComponents(handles, handles.uipanel4, features3, 39, 160);
handles = createUIComponents(handles, handles.uipanel5, features4, 39, 160);
handles = createUIComponents(handles, handles.uipanel6, features5, 39, 209);

%  确认按钮哪一行最后是否带有单位的调用方法
handles = createUnitText(handles, {'uipanel2', 'uipanel3', 'uipanel4', 'uipanel5', 'uipanel6'}, 14, unit_content);

return;

function text_click_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to text_click (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
capture_and_draw('uipanel2', false, 'pushbutton8', 'uipanel2', false, 'tu1.png');
% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% 模块1
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text38,'String','选择成功');
pause(1); 
capture_and_draw('uipanel2', true, 'pushbutton8', 'uipanel2', true, 'tu2.png');


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% 模块2
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text39,'String','选择成功');
pause(1); 
capture_and_draw('uipanel3', true, 'pushbutton9', 'uipanel3', true, 'tu3.png');


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% 模块3
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text40,'String','设置成功');
pause(1); 
capture_and_draw('uipanel4', true, 'pushbutton10', 'uipanel4', true, 'tu4.png');


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% 模块4
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text41,'String','设置成功');
pause(1); 
capture_and_draw('uipanel5', true, 'pushbutton11', 'uipanel5', true, 'tu5.png');


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% 模块5
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a=str2double(get(handles.uipanel6_edit1,'String'));
b=str2double(get(handles.uipanel6_edit2,'String'));
c=str2double(get(handles.uipanel6_edit3,'String'));
d=str2double(get(handles.uipanel6_edit4,'String'));
e=str2double(get(handles.uipanel6_edit5,'String'));
f=str2double(get(handles.uipanel6_edit6,'String'));
g=str2double(get(handles.uipanel6_edit7,'String'));
x=(a+b+c+d+e+f+g)/7;
y=sprintf('%2.2f%',x);
set(handles.text42,'String',y);
pause(1);
capture_and_draw('uipanel6', true, 'pushbutton12', 'uipanel6', true, 'tu6.png');


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% 模块6
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image;
[filename,filepath]=uigetfile({'*.bmp;*.png;*.jpg;'},'选择图像');
if(isequal(filename,0)||isequal(filepath,0)) 
    return;
end
image = [filepath,filename]; 
im=imread(image);
axes(handles.axes1);
imshow(im);
title('土地使用权交易流程图'); 
axes(handles.axes1);
drawnow; pause(1); 
capture_and_draw('uipanel7', true, 'pushbutton5', 'uipanel1', true, 'tu7.png');


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% 模块7
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2);
% 创建数据
X = linspace(1000, 10000, 20);  % 交易价格
Y = linspace(0.01, 0.1, 20);    % 交易税率
[Z, W] = meshgrid(X, Y);
V = Z .* exp(-10 * W) + log10(W + 1);

% 创建三维图
surf(handles.axes2, Z, W, V);

% 设置坐标轴标签和标题
xlabel(handles.axes2, '交易价格');
ylabel(handles.axes2, '交易税率');
zlabel(handles.axes2, '交易效果评估');
title(handles.axes2, '土地使用权交易效果分析三维图');

drawnow; pause(1); 
capture_and_draw('uipanel8', true, 'pushbutton6', 'uipanel1', true, 'tu8.png');


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% 模块8
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes3);
a=str2double(get(handles.uipanel6_edit1,'String')); 
b=str2double(get(handles.uipanel6_edit2,'String'));
c=str2double(get(handles.uipanel6_edit3,'String'));
d=str2double(get(handles.uipanel6_edit4,'String'));
e=str2double(get(handles.uipanel6_edit5,'String'));
f=str2double(get(handles.uipanel6_edit6,'String'));
g=str2double(get(handles.uipanel6_edit7,'String'));
Y = [a;b;c;d;e;f;g];
ch=bar(Y,'y');

set(gca,'XTickLabel', {'交易价格合理性评估', '交易流程透明度评估', '合同签订及时性评估', '交易信息公开性评估', '交易税费缴纳准确性评估', '交易合同备案及时性评估', '土地用途符合性评估'});
set(gca,'XTickLabelRotation',25);
ylim([0,max(max(Y)+max(Y)*0.3)]);
title('使用权交易效果评估分析柱状图'); 

drawnow; pause(1); 
capture_and_draw('uipanel9', true, 'pushbutton7', 'uipanel1', true, 'tu9.png');


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% 模块9
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = msgbox('土地使用权交易执行与跟踪系统为用户提供了土地使用权类别管理、土地使用权交易范围管理、土地使用权交易设置、土地使用权交易标准设置、使用权交易效果评估等功能。', '关于本软件','help');
jMsgBox = h.JavaFrame.getFigurePanelContainer.getComponent(0).getTopLevelAncestor;
jMsgBox.setAlwaysOnTop(true);
figure(handles.figure1);
drawnow; pause(1); 
capture_and_draw_msgbox(h, true, 'pushbutton1', 'uipanel1', true, 'tu10.png');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% 模块10
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clearPanelUI(handles.uipanel2);
clearPanelUI(handles.uipanel3);
clearPanelUI(handles.uipanel4);
clearPanelUI(handles.uipanel5);
clearPanelUI(handles.uipanel6);

set(handles.text38,'String',[]); 
set(handles.text39,'String',[]); 
set(handles.text40,'String',[]); 
set(handles.text41,'String',[]); 
set(handles.text42,'String',[]); 

axes(handles.axes1);
cla reset;
box on;
set(handles.axes1,'xtick',[]);
set(handles.axes1,'ytick',[]);
axes(handles.axes2);
cla reset;
box on;
set(handles.axes2,'xtick',[]);
set(handles.axes2,'ytick',[]);
axes(handles.axes3);
cla reset;
box on;
set(handles.axes3,'xtick',[]);
set(handles.axes3,'ytick',[]);
drawnow; pause(1); 
capture_and_draw('uipanel9', false, 'pushbutton2', 'uipanel1', true, 'tu12.png');
capture_and_draw('uipanel9', false, 'pushbutton4', 'uipanel1', true, 'tu13.png');


function clearPanelUI(panelHandle)
% 清除文本输入框
editHandles = findall(panelHandle, 'Style', 'edit');
for i = 1:length(editHandles)
    set(editHandles(i), 'String', '');
end

% 清除下拉菜单
popupHandles = findall(panelHandle, 'Style', 'popupmenu');
for i = 1:length(popupHandles)
    set(popupHandles(i), 'Value', 1);
end
% 清除单选按钮
radioHandles = findall(panelHandle, 'Style', 'radiobutton');
for i = 1:length(radioHandles)
    set(radioHandles(i), 'Value', 0);
end
% 清除复选框
checkboxHandles = findall(panelHandle, 'Style', 'checkbox');
for i = 1:length(checkboxHandles)
    set(checkboxHandles(i), 'Value', 0);
end
% 清除滑动条
sliderHandles = findall(panelHandle, 'Style', 'slider');
for i = 1:length(sliderHandles)
    minVal = get(sliderHandles(i), 'Min');
    set(sliderHandles(i), 'Value', minVal);
end
function handles = createDynamicText(handles, panelHandle, textContents, fontSize, offset, spacing)
    global ELEMENT_TOP;
    for i = 1:length(textContents)
        temp = uicontrol('Style', 'text', 'String', textContents{i}, 'Visible', 'off', 'FontSize', fontSize);
        textWidth = temp.Extent(3) + 10; 
        delete(temp); 
        h = uicontrol('Parent', panelHandle, ...
                      'Style', 'text', ...
                      'String', textContents{i}, ...
                      'Position', [offset, ELEMENT_TOP - (i-1)*spacing, textWidth, 27], ...
                      'FontSize', fontSize);
        tag = sprintf('%s_%s%d', get(panelHandle, 'Tag'), 'text', i);
        handles.(tag) = h;
    end
function handles = createUnitText(handles, panelHandles, fontSize, textContents)
    for i = 1:length(textContents)
        if ~isempty(textContents{i})
            tag = sprintf('text%d', i + 37);
            set(handles.(tag), 'Units', 'pixels');
            position = get(handles.(tag), 'Position');
            temp = uicontrol('Style', 'text', 'String', textContents{i}, 'Visible', 'off', 'FontSize', fontSize);
            textWidth = temp.Extent(3) + 10; 
            delete(temp); 
            h = uicontrol('Parent', handles.(panelHandles{i}), ...
                          'Style', 'text', ...
                          'String', textContents{i}, ...
                          'Position', [position(1) + position(3), position(2), textWidth, 27], ...
                          'FontSize', fontSize);
            unitTag = sprintf('%s_%s%d', get(handles.(panelHandles{i}), 'Tag'), 'text', i);
            handles.(unitTag) = h;
        end
    end
function items_cell = formatItems(input_str)
    if ~startsWith(input_str, '|')
        input_str = ['|' input_str];
    end
    items_list = strsplit(input_str, '|');
    items_cell = [''; items_list(:)];
% UIWAIT makes Land_Use_Rights_Transaction wait for user response (see UIRESUME)
% uiwait(handles.figure1);
function handles = createUIComponents(handles, panelHandle, features, spacing, offset)
    global ELEMENT_TOP;
    for i = 1:length(features)
        commonProperties = {'Parent', panelHandle, ...
                            'Position', [offset, ELEMENT_TOP - (i-1)*spacing, features(i).width, 27], ...
                            'FontSize', features(i).fontSize};
        tag = sprintf('%s_%s%d',get(panelHandle, 'Tag'), features(i).type, i);
        switch features(i).type
            case 'edit'
               h = uicontrol(commonProperties{:}, 'Style', 'edit', 'String', features(i).defaultValue, 'Tag', tag);
               handles.(tag) = h;
               if ~isempty(features(i).unit)
                    temp = uicontrol('Style', 'text', 'String', features(i).unit, 'Visible', 'off', 'FontSize', features(i).unitFontSize);
                    textWidth = temp.Extent(3);
                    delete(temp);
                    unitTag = sprintf('%s_%s%d',get(panelHandle, 'Tag'), 'unitText', i);
                    hUnit = uicontrol('Parent', panelHandle, ...
                                      'Style', 'text', ...
                                      'Position', [offset + features(i).width, ELEMENT_TOP - (i-1)*spacing, textWidth, 27], ...
                                      'FontSize', features(i).unitFontSize, ...
                                      'String', features(i).unit, ...
                                      'Tag', unitTag);
                    handles.(unitTag) = hUnit;
               end
            case 'popupmenu'
                h = uicontrol(commonProperties{:}, 'Style', 'popupmenu', 'String', features(i).items, 'Tag', tag);
                handles.(tag) = h;          
            case 'slider'
                h = uicontrol(commonProperties{:}, 'Style', 'slider', 'Min', features(i).range(1), 'Max', features(i).range(2), 'Tag', tag);
                handles.(tag) = h;           
            case 'radiobutton'
                h = uicontrol(commonProperties{:}, 'Style', 'radiobutton', 'String', features(i).defaultValue, 'Tag', tag);
                handles.(tag) = h;         
            case 'checkbox'
                h = uicontrol(commonProperties{:}, 'Style', 'checkbox', 'String', features(i).defaultValue, 'Tag', tag);
                handles.(tag) = h;           
            case 'text'
                h = uicontrol(commonProperties{:}, 'Style', 'text', 'String', features(i).defaultValue, 'Tag', tag);
                handles.(tag) = h;
        end
    end
% 提取块注释
function comments = extractComments(filename, tag)
    fid = fopen(filename, 'r');
    if fid == -1
        error(['Cannot open file: ', filename]);
    end
    comments = {};
    inCommentBlock = false;
    foundTag = false;
    tempComment = {};
    tline = fgetl(fid);
    while ischar(tline)
        if ~inCommentBlock && contains(tline, '%{')
            inCommentBlock = true;
        elseif inCommentBlock && contains(tline, tag) && ~foundTag
            foundTag = true;
            tagPosition = strfind(tline, tag) + length(tag);
            restOfLine = strtrim(tline(tagPosition:end));
            if ~isempty(restOfLine)
                tempComment{end+1} = restOfLine;
            end
        elseif inCommentBlock && ~contains(tline, '%}')
            tempComment{end+1} = strtrim(tline);
        elseif inCommentBlock && contains(tline, '%}')
            inCommentBlock = false;
            if foundTag
                comments{end+1} = strsplit(strjoin(tempComment, ' '), ' ');
                foundTag = false;
            end
            tempComment = {};
        end
        tline = fgetl(fid);
    end
    fclose(fid); 
% 从块注释生成数据结构
function dataStructure = generateDataStructure(filename, tag)
    comments = extractComments(filename, tag);
    if isempty(comments)
        error('No comments found with the specified tag.');
    end
    dataStructure = comments{1};
function capture_and_draw(tagForBox, drawBox, tagForArrow, parentTagForArrow, drawArrow, filename)
jFrame = get(handle(gcf), 'JavaFrame');
jAxis = jFrame.fHG2Client.getWindow;
output_folder = fullfile(pwd, 'snap_images');
if ~exist(output_folder, 'dir')
    mkdir(output_folder);
end
robot = java.awt.Robot;
position = jAxis.getLocationOnScreen;
size = jAxis.getSize;
offsetX = 7;  
offsetY = 0; 
widthOffset = 14; 
heightOffset = 7; 
rectangle = java.awt.Rectangle(position.x + offsetX, position.y + offsetY, ...
                               size.width - widthOffset, size.height - heightOffset);
capture = robot.createScreenCapture(rectangle);
rgb = typecast(capture.getRGB(0, 0, capture.getWidth, capture.getHeight, [], 0, capture.getWidth), 'uint8');
img = reshape(rgb, [4, capture.getWidth, capture.getHeight]);
img = img(3:-1:1, :, :); 
img = permute(img, [3 2 1]);
if drawBox
    hBox = findobj(gcf, 'Tag', tagForBox);  
    boxPos = getpixelposition(hBox);
    adjustedBoxPos = [boxPos(1) - 10, size.height - boxPos(2) - boxPos(4) - 10, boxPos(3) + 20, boxPos(4) + 20];
    img = insertShape(img, 'Rectangle', adjustedBoxPos, 'Color', 'red', 'LineWidth', 3);
end
if drawArrow
    hArrow = findobj(gcf, 'Tag', tagForArrow);
    hParent = findobj(gcf, 'Tag', parentTagForArrow);
    parentPos = getpixelposition(hParent);
    arrowPos = getpixelposition(hArrow);
    adjustedX = arrowPos(1) + parentPos(1);
    adjustedY = size.height - (arrowPos(2) + parentPos(2) - arrowPos(4) - 50);
    arrowLength = 90;
    arrowThickness = 5; 
    startPt = [adjustedX + arrowPos(3)/2, adjustedY - arrowLength];
    endPt = [adjustedX + arrowPos(3)/2, adjustedY];
    img = insertShape(img, 'Line', [startPt, endPt], 'Color', 'red', 'LineWidth', arrowThickness);
    headWidth = 25;
    headLength = 25;
    headPt1 = [startPt(1) - headWidth/2, startPt(2) + headLength];
    headPt2 = [startPt(1) + headWidth/2, startPt(2) + headLength];
    img = insertShape(img, 'Line', [startPt, headPt1], 'Color', 'red', 'LineWidth', arrowThickness);
    img = insertShape(img, 'Line', [startPt, headPt2], 'Color', 'red', 'LineWidth', arrowThickness);
end
if isempty(filename)
    filename = sprintf('screenshot_%s.png', datestr(now, 'yyyy-mm-dd_HH-MM-SS'));
end
output_filename = fullfile(output_folder, filename);
imwrite(img, output_filename); 
function capture_and_draw_msgbox(msgboxHandle, drawBox, tagForArrow, parentTagForArrow, drawArrow, filename)
jFrame = get(handle(gcf), 'JavaFrame');
jAxis = jFrame.fHG2Client.getWindow;
output_folder = fullfile(pwd, 'snap_images');
if ~exist(output_folder, 'dir')
    mkdir(output_folder);
end
robot = java.awt.Robot;
position = jAxis.getLocationOnScreen;
size = jAxis.getSize;
offsetX = 7;  
offsetY = 0; 
widthOffset = 14; 
heightOffset = 7; 
rectangle = java.awt.Rectangle(position.x + offsetX, position.y + offsetY, ...
                               size.width - widthOffset, size.height - heightOffset);
capture = robot.createScreenCapture(rectangle);
rgb = typecast(capture.getRGB(0, 0, capture.getWidth, capture.getHeight, [], 0, capture.getWidth), 'uint8');
img = reshape(rgb, [4, capture.getWidth, capture.getHeight]);
img = img(3:-1:1, :, :); 
img = permute(img, [3 2 1]);
if drawBox
    jMsgbox = get(msgboxHandle, 'JavaFrame');
    jMsgboxWindow = jMsgbox.fHG2Client.getWindow;
    msgboxPos = jMsgboxWindow.getLocationOnScreen;
    msgboxSize = jMsgboxWindow.getSize;
    adjustedBoxPos = [msgboxPos.x - position.x - 10, msgboxPos.y - position.y - 8, msgboxSize.width + 10 , msgboxSize.height + 10];
    img = insertShape(img, 'Rectangle', adjustedBoxPos, 'Color', 'red', 'LineWidth', 3);
end
if drawArrow
    hArrow = findobj(gcf, 'Tag', tagForArrow);
    hParent = findobj(gcf, 'Tag', parentTagForArrow);
    parentPos = getpixelposition(hParent);
    arrowPos = getpixelposition(hArrow);
    adjustedX = arrowPos(1) + parentPos(1);
    adjustedY = size.height - (arrowPos(2) + parentPos(2) - arrowPos(4) - 50);
    arrowLength = 90;
    arrowThickness = 5; 
    startPt = [adjustedX + arrowPos(3)/2, adjustedY - arrowLength];
    endPt = [adjustedX + arrowPos(3)/2, adjustedY];
    img = insertShape(img, 'Line', [startPt, endPt], 'Color', 'red', 'LineWidth', arrowThickness);
    headWidth = 25;
    headLength = 25;
    headPt1 = [startPt(1) - headWidth/2, startPt(2) + headLength];
    headPt2 = [startPt(1) + headWidth/2, startPt(2) + headLength];
    img = insertShape(img, 'Line', [startPt, headPt1], 'Color', 'red', 'LineWidth', arrowThickness);
    img = insertShape(img, 'Line', [startPt, headPt2], 'Color', 'red', 'LineWidth', arrowThickness);
end
% 保存截图
if isempty(filename)
    filename = sprintf('screenshot_%s.png', datestr(now, 'yyyy-mm-dd_HH-MM-SS'));
end
output_filename = fullfile(output_folder, filename);
imwrite(img, output_filename);
% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4



% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5



% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6



% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7



% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2



% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3



% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4



% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5



% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6



% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7



% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8



% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2



% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3



% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4



% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5



% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6



% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7



% --- Executes during object creation, after setting all properties.
function uipanel2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes during object creation, after setting all properties.
function text1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when uipanel3 is resized.
function uipanel3_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to uipanel3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
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
