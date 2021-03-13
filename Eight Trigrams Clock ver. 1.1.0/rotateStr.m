function nstr = rotateStr(loc,sStr)

% move the loc-th element to the first,
sStr = [sStr(loc:end),sStr(1:loc-1)];
nstr = [sStr(2:end),sStr(1)];
    
