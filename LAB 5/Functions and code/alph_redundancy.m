%��������� ������������ �������� �� ������ ������, ���������� �� ������� 

% x - �������� ��������
%entropy - �������� ����� ���������� �- �� aplh_entropy.m (�������� ��������)
%P - ������ ������������, ������ �� ������� � ������


function [x] = alph_redundancy (entropy, P)
x=1-(entropy/log2(length (P)));
end


%����� ������� ��� ���������� ������������ ������ ���������:
%COIN_redundancy = alph_redundancy (COIN_entropy, COIN)
%CRIME_redundancy = alph_redundancy (CRIME_entropy, CRIME)
%UNFAIR_redundancy = alph_redundancy (COIN_entropy, UNFAIR)
%VENTSEL_redundancy = alph_redundancy (COIN_entropy, VENTSEL)