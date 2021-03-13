function nstr = getChsDec(str)

% 转换金额的小数部分 Convert Decimal part
nstr = [];
lenS = length(str);
switch(lenS)
    case 1
        nstr = strcat(nstr, trans2chs(str(1)),'角');
    case 2
        if str2num(str(1)) ~= 0
            nstr = strcat(nstr, trans2chs(str(1)),'角');
        end
        if str2num(str(2)) ~= 0
            nstr = strcat(nstr, trans2chs(str(2)),'分');
        end
    case 3
        if str2num(str(1)) ~= 0
            nstr = strcat(nstr, trans2chs(str(1)),'角');
        end
        if str2num(str(2)) ~= 0
            nstr = strcat(nstr, trans2chs(str(2)),'分');
        end
        if str2num(str(3)) ~= 0
            nstr = strcat(nstr, trans2chs(str(3)),'厘');
        end
    case 4
        if str2num(str(1)) ~= 0
            nstr = strcat(nstr, trans2chs(str(1)),'角');
        end
        if str2num(str(2)) ~= 0
            nstr = strcat(nstr, trans2chs(str(2)),'分');
        end
        if str2num(str(3)) ~= 0
            nstr = strcat(nstr, trans2chs(str(3)),'厘');
        end
        if str2num(str(4)) ~= 0
            nstr = strcat(nstr, trans2chs(str(4)),'毫');
        end
end

