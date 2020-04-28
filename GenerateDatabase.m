
%for i = 1:3
%  prueba = strcat('DATA/DB/00', mat2str(i), '_1_1.bmp')
%  t(i) = cell (50,300)
%  t(i) = GenerateTemplate(strcat('DATA/DB/00', mat2str(i), '_1_1.bmp'));
%end


pkg load image

clear all
close all

files = dir('DATA/DB/')

t = cell(size(files,2))
j = 1

for i = 3:size(files,1)  
  t(j) = GenerateTemplate(strcat('DATA/DB/',files(i).name));
  j++;
end

save -binary DB.mat
