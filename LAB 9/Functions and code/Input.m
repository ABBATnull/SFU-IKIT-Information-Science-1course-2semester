%%TASK 3
comp_files = [];
comp_files (1)= Files_inner ('cdio.pbm');
comp_files (2)=Files_inner ('img.pbm');
comp_files (3)=Files_inner ('rrep0.990.pbm');
comp_files (4)=Files_inner ('rrep0.998.pbm');
comp_files (5)=Files_inner ('rrep0.999.pbm');
comp_files (6)=Files_inner ('sierpinski.pbm');
comp_files (7)=Files_inner ('u.pbm');
disp ('-------------------');
disp ('—редн€€ компресси€ по данным на курсах файлах:')
disp (mean (comp_files))
%% TASK 4
array =[];
rng ('shuffle');
for i = 1:100
 data = randi([0 1],500, 500); %геренируем логическую матрицу размерностью 500х500
 data1 = rle_compress(data); %
 countAfterCompress = length([data1{:}]);
 countBeforeCompress = numel(data);
 array(i, 1) = countAfterCompress / countBeforeCompress;
 disp(i);
end
disp ('-------------------');
disp ('—редний коэфициент сжати€ сгенерированных файлов:')
disp(mean(array));
