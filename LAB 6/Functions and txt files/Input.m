F = calc_freq('crime.txt'); % ������� ������������ �������� � �����������
[information, length] = calc_info('crime.txt', F); %���������� ���������� � �����������
freq = [F.freq];  %������� ������������� �������� � �����������
entropy = alph_entropy(freq);
redudancy = alph_redundancy(freq);
sred_on_symb = (information/length)*8; %������� ���������� ����������, ������������ �� ���� ������
if (sred_on_symb > entropy)
    disp('<�����������>������� ���������� ���������� ������ �������� �� '); abs (sred_on_symb - entropy)
end 
if (sred_on_symb < entropy)
    disp('<�����������>������� ���������� ���������� ������ �������� �� '); abs (sred_on_symb - entropy)
end
if (sred_on_symb == entropy)
    disp('<�����������>������� ���������� ���������� ����� ��������.');
end
if (information > length)
    disp('<�����������>���������� ���������� ������ ������ �� '); abs (information - length)
end    
if (information < length)
    disp('<�����������>���������� ���������� ������ ������ �� '); abs (information - length)
end
if (information == length)
    disp('<�����������>���������� ���������� ����� ������');
end
disp ('���������� ���������� � �����������: '); information
disp ('����� ������ � �����������: '); length
disp ('������� ���������� �� ������ � ����������� '); sred_on_symb
disp ('������������ �������� � ����������� '); redudancy

%%
%gen_text('text.txt', 64, 64);
F1 = calc_freq('text.txt');
[information1, length1] = calc_info('text.txt', F1);
freq1 = [F1.freq];
entropy1= alph_entropy(freq1);
redundancy1 = alph_redundancy(freq1);
sred_on_symb1 = (information1/length1)*8;
if (sred_on_symb1 > entropy1)
    disp('<GENtext>������� ���������� ���������� ������ �������� �� '); abs (sred_on_symb1 - entropy1)
end
if (sred_on_symb1 < entropy1)
    disp('<GENtext>������� ���������� ���������� ������ �������� �� '); abs (sred_on_symb1 - entropy1)
end
if (sred_on_symb1 == entropy1)
    disp('<GENtext>������� ���������� ���������� ����� ��������.');
end
if (information1 > length1)
    disp('<GENtext>���������� ���������� ������ ������ �� '); abs (information1 - length1)
end    
if (information1 < length1)
    disp('<GENtext>���������� ���������� ������ ������ �� '); abs (information1 - length1)
end
if (information1 == length1)
    disp('<GENtext>���������� ���������� ����� ������');
end
disp ('���������� ���������� � ��������������� �����: '); information1
disp ('����� ������ � ��������������� �����: '); length1
disp ('������� ���������� �� ������ � �������������� ����� '); sred_on_symb1
disp ('������������ �������� � ��������������� ����� '); redundancy1