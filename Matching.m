pkg load image

clear all
close all

files = dir('DATA/APPLICANTS/TRUE/')

trues = cell(size(files,2))
j = 1

%for i = 3:size(files,1)  
for i = 3:3  
  file=strcat('DATA/APPLICANTS/TRUE/',files(i).name)
  trues(j) = GenerateTemplate(strcat('DATA/APPLICANTS/TRUE/',files(i).name));
  j++;
end

load -binary DB.mat

%% Hamming distances between two templates
for i = 1:1
  for j = 1:size(t(:),1)
   aux(i,j) = Hammingd(cell2mat(trues(i,1)), cell2mat(t(1,j)))
  end
  hd(i) = min(aux(i,:))
end