
%for i = 1:3
%  prueba = strcat('DATA/DB/00', mat2str(i), '_1_1.bmp')
%  t(i) = cell (50,300)
%  t(i) = GenerateTemplate(strcat('DATA/DB/00', mat2str(i), '_1_1.bmp'));
%end


pkg load image

clear all
close all

files = dir('DATA/DB/')

files(1,:) = []
files(1,:) = []

t = cell(size(files,2))

for i = 1:size(files,1)  
  t(i) = GenerateTemplate(strcat('DATA/DB/',files(i).name));
end

save -binary DB.mat
