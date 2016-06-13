function[n] = read_num(s, radix)
% Убираем знак, если есть
    if s(1) == '-'
        sign = -1;
        s = s(2:end);
    else
        sign = 1;
    end
% Ищем начало дробной части
    dp = strfind(s, '.');
    if ~isempty(dp)
        s_int = s(1:(dp - 1));
        s_div = s((dp + 1):end);
    else
        s_int = s;
        s_div = '';
    end
% Переводим целую часть в СС
    n_int = double(0);
    for i = 1:numel(s_int)
        n_int = n_int + dig2num(s_int(i)) * radix.^(numel(s_int) - i);
    end
% Переводим дробную часть в СС
    n_div = double(0);
    for i = 1:numel(s_div)
        n_div = n_div + dig2num(s_div(i)) * radix.^(-i);
    end
% Получаем конечный результат
    n = (n_int + n_div) * sign;
end