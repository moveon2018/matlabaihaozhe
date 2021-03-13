function rstr = trans2chs(num)
str = num2str(num);
try
    str = strrep(str,'0','〇');
catch
end
try
    str = strrep(str,'1','一');
end
try
    str = strrep(str,'2','二');
catch
end
try
    str = strrep(str,'3','三');
catch
end
try
    str = strrep(str,'4','四');
end
try
    str = strrep(str,'5','五');
catch
end
try
    str = strrep(str,'6','六');
catch
end
try
    str = strrep(str,'7','七');
catch
end
try
    str = strrep(str,'8','八');
catch
end
try
    str = strrep(str,'9','九');
catch
end
rstr = strcat(str,'年');