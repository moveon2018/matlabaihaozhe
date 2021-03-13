function rstr = trans2chs(str)

try
    str = strrep(str,'0','Áã');
catch
end
try
    str = strrep(str,'1','Ò¼');
catch
end
try
    str = strrep(str,'2','·¡');
catch
end
try
    str = strrep(str,'3','Èş');
catch
end
try
    str = strrep(str,'4','ËÁ');
end
try
    str = strrep(str,'5','Îé');
catch
end
try
    str = strrep(str,'6','Â½'); % ·±Ìå×ÖÎª£ºê‘
catch
end
try
    str = strrep(str,'7','Æâ');
catch
end
try
    str = strrep(str,'8','°Æ');
catch
end
try
    str = strrep(str,'9','¾Á');
catch
end
rstr = strcat(str);