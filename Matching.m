pkg load image

clear all
close all

files = dir('DATA/APPLICANTS/TRUE/')

trues = cell(size(files,2))
j = 1

for i = 16:size(files,1)  
  trues(j) = GenerateTemplate(strcat('DATA/APPLICANTS/TRUE/',files(i).name));
  j++;
end

load -binary DB.mat

%% Hamming distances between two templates
for i = 1:size(files,1)
  for j = 1:size(1,t)
    aux[i j] = Hammingd(trues(i), t(j))
  end
  hd(i) = min(aux[i])
end