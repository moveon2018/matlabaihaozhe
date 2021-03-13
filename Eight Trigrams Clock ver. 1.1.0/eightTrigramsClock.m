
%{
    Author: Ba Shan (巴山)
    Email:  moveon5@163.com
	WeChat Subscription ID: matlabaihaozhe (matlab爱好者)
	If you have WeChat account, welcome to subscribe matlabaihaozhe (WeChat).
    
    Note: This program uses eight trigrams to show Chinese time.
%}

clc;clear;close all;

figure('Position',[426.5 46 750  750],'Name','Eight Trigrams Clock —— Made by matlab爱好者','NumberTitle','off','Color','k','Menubar','none');

fontName = '楷体';  % Set font name (设置字体名称)
curColor = 'w';     % The color of the current time (当前时间颜色)
othColor = [1 1 0];     % Color of other labels (副颜色)

% theta
thetaM = linspace(0,2*pi,13);  % month (月)
thetaD = linspace(0,2*pi,32);  % day (日)
thetaW = linspace(0,2*pi,8);   % week (星期)
thetaH = linspace(0,2*pi,25);  % hour (小时)
thetaS = linspace(0,2*pi,61);  % Minutes, seconds (分，秒)


% Define the cell array of month, day, week, hour, minute, second (定义月、日、星期、小时、分钟、秒)
Mon = {'一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'};
Day = {'一日','二日','三日','四日','五日','六日','七日','八日','九日','十日','十一日','十二日',...
    '十三日','十四日','十五日','十六日','十七日','十八日','十九日','二十日','二十一日','二十二日','二十三日','二十四日',...
    '二十五日','二十六日','二十七日','二十八日','二十九日','三十日','三十一日'};
Week = {'星期日','星期一','星期二','星期三','星期四','星期五','星期六'};
Hour = {'一点','两点','三点','四点','五点','六点','七点','八点','九点','十点','十一点','十二点','十三点','十四点','十五点','十六点','十七点','十八点','十九点','二十点','二十一点','二十二点','二十三点','零点'};
Minute = {'一分','二分','三分','四分','五分','六分','七分','八分','九分','十分',...
    '十一分','十二分','十三分','十四分','十五分','十六分','十七分','十八分','十九分','二十分',...
    '二十一分','二十二分','二十三分','二十四分','二十五分','二十六分','二十七分','二十八分','二十九分','三十分',....
    '三十一分','三十二分','三十三分','三十四分','三十五分','三十六分','三十七分','三十八分','三十九分','四十分',....
    '四十一分','四十二分','四十三分','四十四分','四十五分','四十六分','四十七分','四十八分','四十九分','五十分',....
    '五十一分','五十二分','五十三分','五十四分','五十五分','五十六分','五十七分','五十八分','五十九分','零分'};
Second = {'一秒','二秒','三秒','四秒','五秒','六秒','七秒','八秒','九秒','十秒',...
    '十一秒','十二秒','十三秒','十四秒','十五秒','十六秒','十七秒','十八秒','十九秒','二十秒',...
    '二十一秒','二十二秒','二十三秒','二十四秒','二十五秒','二十六秒','二十七秒','二十八秒','二十九秒','三十秒',....
    '三十一秒','三十二秒','三十三秒','三十四秒','三十五秒','三十六秒','三十七秒','三十八秒','三十九秒','四十秒',....
    '四十一秒','四十二秒','四十三秒','四十四秒','四十五秒','四十六秒','四十七秒','四十八秒','四十九秒','五十秒',....
    '五十一秒','五十二秒','五十三秒','五十四秒','五十五秒','五十六秒','五十七秒','五十八秒','五十九秒','零秒'};
% Define radius (设置表盘半径)
Rm = 5;      % 月
Rd = 9;      % 日
Rw = 13.0;   % 星期
Rh = 17.0;   % 小时
Rmm = 21.5;  % 分钟
Rs = 26;     % 秒 
rio = 1.07;  % 比例

% Set the angle offset to better match the layout (设置角度偏移以更加符合布局)
dm = 7.2;    % 月
dd = 3.5;    % 日
dw = 2.5;    % 星期
dh = 2.0;    % 小时
dmm = 1.5;   % 分钟
ds = 1.2;    % 秒

% Define the location of month label 定义月标签位置
mxm = Rm*cos(thetaM-dm*pi/180);
mym = Rm*sin(thetaM-dm*pi/180);
% Define the location of day label 定义日标签位置
mxd = Rd*cos(thetaD-dd*pi/180);
myd = Rd*sin(thetaD-dd*pi/180);
% Define the location of week label 定义星期标签位置
mxw = Rw*cos(thetaW-dw*pi/180);
myw = Rw*sin(thetaW-dw*pi/180);
% Define the location of hour label 定义小时标签位置
mxh = Rh*cos(thetaH-dh*pi/180);
myh = Rh*sin(thetaH-dh*pi/180);
% Define the location of minute label 定义分钟标签位置
mxmm = Rmm*cos(thetaS-dmm*pi/180);
mymm = Rmm*sin(thetaS-dmm*pi/180);
% Define the location of second label 定义秒标签位置
mxs = Rs*cos(thetaS-ds*pi/180);
mys = Rs*sin(thetaS-ds*pi/180);
% Limit axis range 限定坐标轴范围
xlim([-Rs*rio Rs*rio]);
ylim([-Rs*rio Rs*rio]);

% expand axes to fill figure 使坐标轴填充整个figure
ax = gca;
oPos = ax.OuterPosition;
loc = ax.TightInset;
left = oPos(1) + loc(1);
bottom = oPos(2) + loc(2);
axWidth = oPos(3) - loc(1) - loc(3);
axHeight = oPos(4) - loc(2) - loc(4);
ax.Position = [left-0.016 bottom-0.016 axWidth axHeight];

% Set axis properties 设置坐标轴属性
axis off;
axis equal;

% get local computer time 取本地电脑时间 
tn = round(clock);
% get week corresponding to the current date 取当前日期对应的星期
wn = weekday(now,'local')-1;

% Drawing year 绘制年
tY =  text(-0.1,-0.8,trans2chs(tn(1)),...
    'HorizontalAlignment','center',...
    'VerticalAlignment','bottom',...
    'BackgroundColor','none',...
    'FontName',fontName,...
    'FontSize',12.5,...
    'Color',curColor);

% Drawing month 绘制月
if tn(2) ~= 0
    tMon = [Mon(tn(2):end),Mon(1:tn(2)-1)];
    tMon = [tMon(2:end),tMon(1)];
else
    tMon = [Mon(2:end),Mon(1)];
end
tM = zeros(1,12);
for k = 1:12
    if k == 1
        tM(k) =  text(mxm(k),mym(k),tMon{13-k},...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom',...
            'BackgroundColor','none',...
            'Rotation',thetaM(k)*180/pi,...
            'FontName',fontName,...
            'FontWeight','bold',...
            'Color',curColor);
    else
        tM(k) =  text(mxm(k),mym(k),tMon{13-k},...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom',...
            'BackgroundColor','none',...
            'Rotation',thetaM(k)*180/pi,...
            'FontName',fontName,...
            'Color',othColor);
    end
end

% Drawing day 绘制日
if tn(3) ~= 0
    tDay = [Day(tn(3):end),Day(1:tn(3)-1)];
    tDay = [tDay(2:end),tDay(1)];
else
    tDay = [Day(2:end),Day(1)];
end
tD = zeros(1,31);
for k = 1:31
    if k == 1
        tD(k) = text(mxd(k),myd(k),tDay{32-k},...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom',...
            'BackgroundColor','none',...
            'Rotation',thetaD(k)*180/pi,...
            'FontName',fontName,...
            'FontWeight','bold',...
            'Color',curColor);
    else
        tD(k) = text(mxd(k),myd(k),tDay{32-k},...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom',...
            'BackgroundColor','none',...
            'Rotation',thetaD(k)*180/pi,...
            'FontName',fontName,...
            'Color',othColor);
    end
end

% Drawing week 绘制星期
if wn ~= 0
    tWeek = [Week(wn:end),Week(1:wn-1)];
    tWeek = [tWeek(2:end),tWeek(1)];
else
    tWeek = [Week(2:end),Week(1)];
end
tW = zeros(1,7);
for k = 1:7
    if k == 1
        tW(k) = text(mxw(k),myw(k),tWeek{8-k},...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom',...
            'BackgroundColor','none',...
            'Rotation',thetaW(k)*180/pi,...
            'FontName',fontName,...
            'FontWeight','bold',...
            'Color',curColor);
    else
        tW(k) = text(mxw(k),myw(k),tWeek{8-k},...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom',...
            'BackgroundColor','none',...
            'Rotation',thetaW(k)*180/pi,...
            'FontName',fontName,...
            'FontWeight','bold',...
            'Color',othColor);
    end
end

% Drawing hour 绘制小时
if tn(4) ~= 0
    tHour = [Hour(tn(4):end),Hour(1:tn(4)-1)];
    tHour = [tHour(2:end),tHour(1)];
else
    tHour = [Hour(2:end),Hour(1)];
end
th = zeros(24);
for k = 1:24
    if k == 1
    th(k) = text(mxh(k),myh(k),tHour{25-k},...
        'HorizontalAlignment','center',...
        'VerticalAlignment','bottom',...
        'BackgroundColor','none',...
        'Rotation',thetaH(k)*180/pi,...
        'FontName',fontName,...
        'FontWeight','bold',...
        'Color',curColor);
    else
        th(k) = text(mxh(k),myh(k),tHour{25-k},...
        'HorizontalAlignment','center',...
        'VerticalAlignment','bottom',...
        'BackgroundColor','none',...
        'Rotation',thetaH(k)*180/pi,...
        'FontName',fontName,...
        'Color',othColor);
    end
end

% Drawing minute 绘制分钟
if tn(5) ~= 0
    tMinute = [Minute(tn(5):end),Minute(1:tn(5)-1)];
    tMinute = [tMinute(2:end),tMinute(1)];
else
    tMinute = [Minute(2:end),Minute(1)];
end
tmm = zeros(1,60);
for k = 1:60
    if k == 1
    tmm(k) = text(mxmm(k),mymm(k),tMinute{61-k},...
        'HorizontalAlignment','center',...
        'VerticalAlignment','bottom',...
        'BackgroundColor','none',...
        'Rotation',thetaS(k)*180/pi,...
        'FontName',fontName,...
        'FontWeight','bold',...
        'Color',curColor);
    else
        tmm(k) = text(mxmm(k),mymm(k),tMinute{61-k},...
        'HorizontalAlignment','center',...
        'VerticalAlignment','bottom',...
        'BackgroundColor','none',...
        'Rotation',thetaS(k)*180/pi,...
        'FontName',fontName,...
        'Color',othColor);
    end
    
end

% Drawing second 绘制秒
if tn(6) ~= 0
    tSecond = [Second(tn(6):end),Second(1:tn(6)-1)];
    tSecond = [tSecond(2:end),tSecond(1)];
else
    tSecond = [Second(2:end),Second(1)];
end
ts = zeros(1,60);
for k = 1:60
    if k == 1
    ts(k) = text(mxs(k),mys(k),tSecond{61-k},...
        'HorizontalAlignment','center',...
        'VerticalAlignment','bottom',...
        'BackgroundColor','none',...
        'Rotation',thetaS(k)*180/pi,...
        'FontName',fontName,...
        'FontWeight','bold',...
        'Color',curColor);
    else
        ts(k) = text(mxs(k),mys(k),tSecond{61-k},...
        'HorizontalAlignment','center',...
        'VerticalAlignment','bottom',...
        'BackgroundColor','none',...
        'Rotation',thetaS(k)*180/pi,...
        'FontName',fontName,...
        'Color',othColor);
    end
end

% update using Cycle 循环更新
tm = round(clock);
wm = weekday(now,'local')-1;
tk = 0;
while true
    tn = round(clock);
    wn = weekday(now,'local')-1;
    % 判断年、月、日、星期、小时、分钟、秒
    diffY = (tn(1)-tm(1) > 0);
    diffM = (tn(2)-tm(2) > 0);
    diffD = (tn(3)-tm(3) > 0);
    diffW = (wn-wm > 0);
    diffs = (tn(6)-tm(6) > 0);
    tm = tn;
    wm = wn;
    %% 年
    if diffY
        set(tY,'string',trans2chs(tn(1)))
    end
    
    %% 月
    if diffM
        tMon = [Mon(tn(2):end),Mon(1:tn(2)-1)];
        tMon = [tMon(2:end),tMon(1)];
        for k = 1:12
            set(tM(k),'string',tMon{13-k});
        end
    end
    %% 日
    if diffD
        tDay = [Day(tn(3):end),Day(1:tn(3)-1)];
        tDay = [tDay(2:end),tDay(1)];
        for k = 1:31
            set(tD(k),'string',tDay{32-k});
        end
    end
    %% 星期
    if diffW
        tWeek = [Week(wn:end),Week(1:wn-1)];
        tWeek = [tWeek(2:end),tWeek(1)];
        for k = 1:7
            set(tD(k),'string',tWeek{8-k});
        end
    end
    
    %% 小时
    if tn(5) == 0
        tHou = [Hour(tn(4):end),Hour(1:tn(4)-1)];
        tHou = [tHou(2:end),tHou(1)];
        for k = 1:24
            set(th(k),'string',tHou{25-k});
        end
    end
    
    %% 分钟
    if tn(6) == 0
        tMin = [Minute(tn(5):end),Minute(1:tn(5)-1)];
        tMin = [tMin(2:end),tMin(1)];
        for k = 1:60
            set(tmm(k),'string',tMin{61-k});
        end
    end
    %% 秒
    if diffs
        tSec = [Second(tn(6):end),Second(1:tn(6)-1)];
        tSec = [tSec(2:end),tSec(1)];
        for k = 1:60
            set(ts(k),'string',tSec{61-k});
        end
    end
    tk = tk+1;
    pause(0.000000001);
end