function out = rle_decompress(data)
out = [];
for i = 1:length(data)
    s = sscanf(data{i}, '%d%c');
    row = [];
    for j = 1:2:length(s)
        row = [row parse_codeword(s(j:j+1))];
    end
    out = [out; row];
end

function r = parse_codeword(cw)
if cw(2) == 'B'
    symbol = logical(0);
else
    symbol = logical(1);
end
r = [];
for t = 1:cw(1)
    r(t) = symbol;
end
