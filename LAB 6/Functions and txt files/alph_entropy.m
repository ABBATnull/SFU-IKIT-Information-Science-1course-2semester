function [entropy] = alph_entropy(P)
entropy = -sum(P(P > 0).*log2(P(P > 0)));
end