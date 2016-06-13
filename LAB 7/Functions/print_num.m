function[s_str] = print_num(n, radix, prec)
% �������� �� ���������������
    if n < 0
        sign = '-';
        n = abs(n);
    else
        sign = '';
    end
    n_int = fix(n);
    n_div = n - n_int;
% �������� ����� �����
    if n_int == 0
        s(1) = 0;
    else
        s = [];
    end
% ������� ����� �����
    while n_int > 0
        s = [mod(n_int, radix), s];
        n_int = fix(n_int / radix);
    end
% ������� ������� �����
    if n_div > 0
        s(end + 1) = -1;
        for i = 1:(prec + 1)
            n_div = n_div * radix;
            s = [s fix(n_div)];
            n_div = n_div - fix(n_div);
        end
    end
% ����������
s = num_round(s, radix);
% �������������� � ������
    s_str = '';
    for i = 1:numel(s)
        if s(i) == -1
            s_str(end + 1) = '.';
        else
            s_str(end + 1) = num2dig(s(i));
        end
    end
    s_str = [sign, s_str];
end