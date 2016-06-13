function[s] = num_round(s, radix)
    if s(end) >= fix(radix / 2)
    % Добавляем единицу предыдущему
        i = numel(s);
        if s(end - 1) == -1
            s(end - 2) = s(end - 2) + 1;
            i = i - 2;
        else
            s(end - 1) = s(end - 1) + 1;
            i = i - 1;
        end
    % Если разряд числа максимальный, добавляем единицу предыдущему
        while (s(i) == radix)
            if i == 1
                s = [0 s];
                i = 2;
            else
                s(i) = 0;
                if s(i - 1) == -1
                    s(i - 2) = s(i - 2) + 1;
                    i = i - 2;
                else
                    s(i - 1) = s(i - 1) + 1;
                    i = i - 1;
                end
            end
        end
    end
    s = s(1:end - 1);
end