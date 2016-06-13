function out = rle_compress(data)
out = {};
for i = 1:size(data, 1) %i ������
    prev = data(i, 1);
    rcount = 1;
    str = '';
    for j = 2:size(data, 2) %j �������
        % ���� �������� � ������ ������� ����
        if prev == data(i, j)%���� � ������� ��� � ������ ���� prev, �� rcount++
            rcount = rcount + 1;
        else
            str = [str make_codeword(rcount, prev)];
            rcount = 1;
        end
        prev = data(i, j);
    end
    if rcount > 0
        str = [str make_codeword(rcount, prev)];
    end
    out{end + 1} = str;
end

function cw = make_codeword(rcount, symbol)
if symbol == 1
    symbol = 'W';
else
    symbol = 'B';
end
cw = [int2str(rcount) symbol];