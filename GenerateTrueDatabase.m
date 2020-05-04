pkg load image

clear all
close all

files = dir('DATA/APPLICANTS/TRUE/')

trues = cell(size(files,2))
j = 1

for i = 3:size(files,1)  
  trues(j) = GenerateTemplate(strcat('DATA/APPLICANTS/TRUE/',files(i).name));
  j++;
end

save -binary TrueDB.mat
