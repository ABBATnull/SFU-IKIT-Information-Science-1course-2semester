function [information, kolvo] = calc_info(fname, F)
fid = fopen(fname, 'r');
 
if fid == -1
    error('Файл не был открыт!');
end
 
kolvo = 0;
information = 0;
 
string = fgetl(fid);
while ischar(string)
    kolvo = kolvo + numel(string);
    for i = 1:numel(string)
        information = information - log2(F(strfind([F.c], string(i))).freq);
    end
    string = fgetl(fid);
end
fclose(fid);
information = information/8;
end