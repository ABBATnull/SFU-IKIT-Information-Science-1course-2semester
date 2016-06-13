%% Задание 1
n = 28;
char = num2dig(n);
%% Задание 2
char = 'S';
n = dig2num(char);
%% Задание 3
n = 1506.2841;
s = print_num(n, 16, 4);
%% Задание 4
s = '1000100011';
n = read_num(s, 2);
%% Задание 5
P = 1000 * (2 * rand(1, 10) - 1);
arr_s = cell(3, 10);
for i = 1:10
    arr_s{1, i} = print_num(P(i), 2, 4);
    arr_s{2, i} = print_num(P(i), 3, 4);
    arr_s{3, i} = print_num(P(i), 16, 4);
end
arr_num = zeros(3, 10);

arr_error = zeros(3, 10);
for i = 1:10
    arr_num(1, i) = read_num(arr_s{1, i}, 2);
    arr_num(2, i) = read_num(arr_s{2, i}, 3);
    arr_num(3, i) = read_num(arr_s{3, i}, 16);
    arr_error(1, i) = arr_num(1, i) - P(i);
    arr_error(2, i) = arr_num(2, i) - P(i);
    arr_error(3, i) = arr_num(3, i) - P(i);
end