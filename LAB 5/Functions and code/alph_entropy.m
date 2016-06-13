%Вычисляет энтропию алфавита


function [H] = alph_entropy (P)

H=0;

    for i=1:length (P)
    H=H-P(i)*(log2(P(i)));
    end;
    
    
%Вычисляет энтропию алфавитов, выраженных векторами вероятностей, которые
%были инициализированы ранее

%Вызов функции для вычисления энтропии разных алфавитов:
%COIN_entropy = alph_entropy (COIN)
%CRIME_entropy = alph_entropy (CRIME)
%UNFAIR_entropy = alph_entropy (UNFAIR)
%VENTSEL_entropy = alph_entropy (VENTSEL)