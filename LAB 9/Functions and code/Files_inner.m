function  lol = Files_inner (file) 

disp ('*****************') 
disp ('�������� � ������') 
disp (file)
data = imread(file);
 data1 = rle_compress(data);
 data2 = rle_decompress(data1);
 countAfterCompress = length([data1{:}]);
 countBeforeCompress = numel(data);
 lol = countAfterCompress / countBeforeCompress;
 disp('���������� ������ �����') 
 disp (countAfterCompress / countBeforeCompress)
 if data == data2
  disp('������ ������������� ���������');
 else
  disp('������ ������������� ��������');
 end
end