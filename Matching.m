clear all
close all
[t1]=GenerateTemplate('file1.jpg');
[t2]=GenerateTemplate('file2.jpg');
[t3]=GenerateTemplate('file3.jpg');
%% Hamming distances between two templates
hd12 = Hammingd(t1, t2)
hd13 = Hammingd(t1, t3)