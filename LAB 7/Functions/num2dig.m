function[char] = num2dig(num)
    symb_arr = ['0':'9' 'A':'Z'];
    char = symb_arr(num + 1);
end