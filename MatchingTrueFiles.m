pkg load image

clear all
close all

TrueFiles = dir('DATA/APPLICANTS/TRUE/')

trues = cell(size(TrueFiles,2))
j = 1

load -binary DB.mat

for i = 3:size(TrueFiles,1)  
  trues(j) = GenerateTemplate(strcat('DATA/APPLICANTS/TRUE/',TrueFiles(i).name));
  for z = 3:size(files(:),1)
    if(TrueFiles(i).name(1:3) == files(z).name(1:3))
      hd(j) = Hammingd(cell2mat(trues(1,j)), cell2mat(t(1,z-2)));
    end
  end
  j++;
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
  if (hd(i) > 0.435)
    results(i) = 0;
  end
  if (hd(i) <= 0.435)
    results(i) = 1;
  end
end

save -binary TrueResultsAfter.mat