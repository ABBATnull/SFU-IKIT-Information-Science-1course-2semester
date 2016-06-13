function [redudancy] = alph_redundancy(P)
redudancy = 1 - alph_entropy(P) / log2(numel(P));
end