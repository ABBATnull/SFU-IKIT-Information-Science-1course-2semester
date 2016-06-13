function  lol = Files_inner (file) 

disp ('*****************') 
disp ('Работаем с файлом') 
disp (file)
data = imread(file);
 data1 = rle_compress(data);
 data2 = rle_decompress(data1);
 countAfterCompress = length([data1{:}]);
 countBeforeCompress = numel(data);
 lol = countAfterCompress / countBeforeCompress;
 disp('Коэфициент сжатия файла') 
 disp (countAfterCompress / countBeforeCompress)
 if data == data2
  disp('Данные восстановлены полностью');
 else
  disp('Данные восстановлены частично');
 end
end