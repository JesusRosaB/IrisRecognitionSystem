function result=MatchingOne(filename)
  
pkg load image

TryAccess = GenerateTemplate(filename);

load -binary DB.mat

%splitresult = strsplit(filename,"/")

%for i = 1:size(splitresult(:),1)
%  if (strfind(splitresult(1,i), "00", "overlaps", false) == 1)
%    fileId = splitresult(1,i) 
%  end
%end

for i = 1:size(files(:),1)
  if(filename(1:3) == files(i).name(1:3))
    hd = Hammingd(TryAccess, cell2mat(t(1,i)))
  end
end

if (hd <= 0.435)
    result = strcat("User ",filename(1:3)," Access Granted")
end
if (hd > 0.435)
    result = strcat("User ",filename(1:3)," Access Denied")
end

endfunction
