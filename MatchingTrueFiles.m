pkg load image

clear all
close all

TrueFiles = dir('DATA/APPLICANTS/TRUE/')

TrueFiles(1,:) = [];
TrueFiles(1,:) = [];

trues = cell(size(TrueFiles,2))

load -binary DB.mat

for i = 1:size(TrueFiles,1)  
  trues(i) = GenerateTemplate(strcat('DATA/APPLICANTS/TRUE/',TrueFiles(i).name));
  for z = 3:size(files(:),1)
    if(TrueFiles(i).name(1:3) == files(z).name(1:3))
      hd(i) = Hammingd(cell2mat(trues(1,i)), cell2mat(t(1,z-2)));
    end
  end
end

%load -binary TrueDB.mat

%splitresult = strsplit(filename,"/")

%for i = 1:size(splitresult(:),1)
%  if rindex(splitresult(1,i), "00") != 0
%    fileId = splitresult(1,i) 
%  end
%end

%% Hamming distances between two templates
%for i = 1:size(trues(:),1)
%  for j = 1:size(t(:),1)
%   aux(i,j) = Hammingd(cell2mat(trues(1,i)), cell2mat(t(1,j)))
%  end
%  hd(i) = min(aux(i,:))
%end

for i = 1:size(hd(:),1)
  if (hd(i) > 0.462)
    results(i) = 0;
  end
  if (hd(i) <= 0.462)
    results(i) = 1;
  end
end

%save -binary TrueResultsAfter4part.mat