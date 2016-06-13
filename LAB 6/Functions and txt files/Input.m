F = calc_freq('crime.txt'); % частота втречаемости символов в достоевском
[information, length] = calc_info('crime.txt', F); %количество информации в достоевском
freq = [F.freq];  %частота встречаемости символов в достоевском
entropy = alph_entropy(freq);
redudancy = alph_redundancy(freq);
sred_on_symb = (information/length)*8; %среднее количество информации, приходящееся на один символ
if (sred_on_symb > entropy)
    disp('<ДОСТОЕВСКИЙ>Среднее количество информации больше энтропии на '); abs (sred_on_symb - entropy)
end 
if (sred_on_symb < entropy)
    disp('<ДОСТОЕВСКИЙ>Среднее количество информации меньше энтропии на '); abs (sred_on_symb - entropy)
end
if (sred_on_symb == entropy)
    disp('<ДОСТОЕВСКИЙ>Среднее количество информации равно энтропии.');
end
if (information > length)
    disp('<ДОСТОЕВСКИЙ>количество информации больше объёма на '); abs (information - length)
end    
if (information < length)
    disp('<ДОСТОЕВСКИЙ>количество информации меньше объёма на '); abs (information - length)
end
if (information == length)
    disp('<ДОСТОЕВСКИЙ>количество информации равно объёму');
end
disp ('Количество информации в Достоевском: '); information
disp ('Длина текста в Достоевском: '); length
disp ('Средняя информация на символ в Достоевском '); sred_on_symb
disp ('Избыточность алфавита в Достоевском '); redudancy

%%
%gen_text('text.txt', 64, 64);
F1 = calc_freq('text.txt');
[information1, length1] = calc_info('text.txt', F1);
freq1 = [F1.freq];
entropy1= alph_entropy(freq1);
redundancy1 = alph_redundancy(freq1);
sred_on_symb1 = (information1/length1)*8;
if (sred_on_symb1 > entropy1)
    disp('<GENtext>Среднее количество информации больше энтропии на '); abs (sred_on_symb1 - entropy1)
end
if (sred_on_symb1 < entropy1)
    disp('<GENtext>Среднее количество информации меньше энтропии на '); abs (sred_on_symb1 - entropy1)
end
if (sred_on_symb1 == entropy1)
    disp('<GENtext>Среднее количество информации равно энтропии.');
end
if (information1 > length1)
    disp('<GENtext>количество информации больше объёма на '); abs (information1 - length1)
end    
if (information1 < length1)
    disp('<GENtext>количество информации меньше объёма на '); abs (information1 - length1)
end
if (information1 == length1)
    disp('<GENtext>количество информации равно объёму');
end
disp ('Количество информации в сгенерированном файле: '); information1
disp ('Длина текста в сгенерированном файле: '); length1
disp ('Средняя информация на символ в сгенерированом файле '); sred_on_symb1
disp ('Избыточность алфавита в сгенерированном файле '); redundancy1