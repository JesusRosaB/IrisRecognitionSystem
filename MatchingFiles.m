pkg load image

clear all
close all

TrueFiles = dir('DATA/APPLICANTS/TRUE/')
FalseFiles = dir('DATA/APPLICANTS/FALSE/')

falses = cell(size(FalseFiles,2))
j = 1

for i = 3:size(FalseFiles,1)  
  falses(j) = GenerateTemplate(strcat('DATA/APPLICANTS/FALSE/',FalseFiles(i).name));
  j++;
end

load -binary DB.mat
%load -binary TrueDB.mat
%load -binary FalseDB.mat

%% Hamming distances between two templates
%for i = 1:size(trues(:),1)
for i = 1:size(falses(:),1)
  for j = 1:size(t(:),1)
   %aux(i,j) = Hammingd(cell2mat(trues(1,j)), cell2mat(t(1,j)))
   aux(i,j) = Hammingd(cell2mat(falses(1,i)), cell2mat(t(1,j)))
  end
  hd(i) = min(aux(i,:))
end