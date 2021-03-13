clc;clear;close all;
%% 创建界面
scr = get(groot,'ScreenSize');
pict=figure('position',[scr(3)/2-200,scr(4)/2-100, 500,250],'NumberTitle','off','menubar','none','toolbar','none',...
    'Resize','off');
text01=uicontrol(pict,'style','text','position',[0 235 500 10],'string','******************************************************************************************','FontSize',10,'ForegroundColor','b');
text02=uicontrol(pict,'style','text','position',[70 195 390 40],'string','人民币金额大写转换工具 v1.0','FontSize',20,'ForegroundColor','r');
text03=uicontrol(pict,'style','text','position',[0 192 500 10],'string','******************************************************************************************','FontSize',10,'ForegroundColor','b');
text1 = uicontrol(pict,'style','text','position',[0 153 100 30],'string','人民币金额:','FontSize',12,'ForegroundColor','b');
con1 = uicontrol(pict,'style','edit','position',[95 157 400 30],'string','20200713.52','FontSize',12,'ForegroundColor','r');
text4=uicontrol(pict,'style','text','position',[0 125 500 20],'string','++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++','FontSize',10,'ForegroundColor','r');
text3 = uicontrol(pict,'style','text','position',[0 88 90 30],'string','当前密码:','FontSize',14,'ForegroundColor','r');
con2 = uicontrol(pict,'style','edit','position',[90 92 400 30],'string','','FontSize',12,'ForegroundColor','b');
text04=uicontrol(pict,'style','text','position',[0 65 500 20],'string','++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++','FontSize',10,'ForegroundColor','r');
%% 执行程序
uicontrol(pict,'style','pushbutton','position',[20 20 150 30],'string','执行转换','FontSize',14,'ForegroundColor','b','CallBack',...
    'getChineseYuan(con1,con2);');
uicontrol(pict,'style','pushbutton','position',[180 20 150 30],'string','保存结果','FontSize',14,'ForegroundColor','b','CallBack',...
    'saveData(con1,con2);');
uicontrol(pict,'style','pushbutton','position',[340 20 150 30],'string','退出程序','FontSize',14,'ForegroundColor','r','CallBack','delete(pict);');


