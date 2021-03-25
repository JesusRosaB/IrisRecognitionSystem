pkg load image

clear all
close all

FalseFiles = dir('DATA/APPLICANTS/FALSE/')

FalseFiles(1,:) = [];
FalseFiles(1,:) = [];

falses = cell(size(FalseFiles,2))

load -binary DB.mat

for i = 1:size(FalseFiles,1)  
  falses(i) = GenerateTemplate(strcat('DATA/APPLICANTS/FALSE/',FalseFiles(i).name));
  for z = 3:size(files(:),1)
    if(FalseFiles(i).name(1:3) == files(z).name(1:3))
      hd(i) = Hammingd(cell2mat(falses(1,i)), cell2mat(t(1,z-2)));
    end
  end
end

%load -binary DB.mat

%% Hamming distances between two templates
%for i = 1:size(falses(:),1)
%  for j = 1:size(t(:),1)
%   aux(i,j) = Hammingd(cell2mat(falses(1,i)), cell2mat(t(1,j)))
%  end
%  hd(i) = min(aux(i,:))
%end

for i = 1:size(hd(:),1)
  if (hd(i) > 0.465)
    results(i) = 0;
  end
  if (hd(i) <= 0.465)
    results(i) = 1;
  end
end

save -binary FalseResults.mat