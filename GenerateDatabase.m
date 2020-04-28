clear all
close all
%[t1]=GenerateTemplate('DATA/DB/001_1_1.bmp');
[t2]=GenerateTemplate('DATA/DB/002_1_1.bmp');
[t3]=GenerateTemplate('DATA/DB/003_1_1.bmp');

%save()

%% Hamming distances between two templates
%hd12 = Hammingd(t1, t2)
%hd13 = Hammingd(t1, t3)