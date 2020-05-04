pkg load image

clear all
close all

files = dir('DATA/APPLICANTS/FALSE/')

falses = cell(size(files,2))
j = 1

for i = 3:size(files,1)  
  falses(j) = GenerateTemplate(strcat('DATA/APPLICANTS/FALSE/',files(i).name));
  j++;
end

save -binary FalseDB.mat
