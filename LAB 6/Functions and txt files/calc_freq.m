function[F] = calc_freq(fname)
fid = fopen(fname, 'r');
 
if fid == -1
    error('Файл не был открыт!');
end
 
kolvo = 0;
string = fgetl(fid);
F(1).c = string(1);
F(1).freq = 0;
while ischar(string)
    kolvo = kolvo + numel(string);
    for i = 1:numel(string)
        charPos = strfind([F.c], string(i));
        if isempty(charPos) 
            add_new.c = string(i);
            add_new.freq = 1;
            F(end + 1) = add_new;
        elseif isempty(charPos) == false
            F(charPos).freq = F(charPos).freq + 1;
        end
    end
    string = fgetl(fid);
end
 
for i = 1:numel(F)
    F(i).freq = F(i).freq / kolvo;
end
 
fclose(fid);
end