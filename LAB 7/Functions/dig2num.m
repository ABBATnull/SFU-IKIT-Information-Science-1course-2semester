function[num] = dig2num(char)
    symb_arr = ['0':'9' 'A':'Z'];
    num = strfind(symb_arr, char) - 1;
end