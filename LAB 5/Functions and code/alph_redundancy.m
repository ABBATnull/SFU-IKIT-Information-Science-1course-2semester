%Вычисляет избыточность алфавита на основе данных, полученных из функции 

% x - выходной параметр
%entropy - получена после выполнения ф- ии aplh_entropy.m (энтропия алфавита)
%P - вектор вероятностей, взятый из таблицы в курсах


function [x] = alph_redundancy (entropy, P)
x=1-(entropy/log2(length (P)));
end


%Вызов функции для вычисления избыточности разных алфавитов:
%COIN_redundancy = alph_redundancy (COIN_entropy, COIN)
%CRIME_redundancy = alph_redundancy (CRIME_entropy, CRIME)
%UNFAIR_redundancy = alph_redundancy (COIN_entropy, UNFAIR)
%VENTSEL_redundancy = alph_redundancy (COIN_entropy, VENTSEL)