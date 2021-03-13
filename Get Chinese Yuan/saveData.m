function saveData(con1,con2)
inputD = get(con1,'string');
outputD = get(con2,'string');
[fname,pname,fi]=uiputfile('*.txt','保存密码文件');
if fi == 1
   filename = [pname,fname];
   fid = fopen(filename,'wt');
   fprintf(fid,'%s\r',['输入金额:',inputD]); 
   fprintf(fid,'%s\r',['转换结果:',outputD]); 
   fprintf(fid,'%s',['保存时间:',datestr(now())]); 
   fclose(fid);
   msgbox('数据保存成功！') 
else
   msgbox('已取消保存！') 
end