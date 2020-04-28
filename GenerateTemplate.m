function t=GenerateTemplate(filename)

A=imread(filename);

%% Segmentation
Pupil=PupilBoundary(A);  %Centroid and radius of the Pupil
Iris=IrisExtraction(A,Pupil); %Centroid and radius of the Iris

%% Normalization
[polar_array, noise_mask]=Normalization(double(A),50,150,Iris, Pupil);

%% Encoding
t = Encoding(polar_array, noise_mask);

endfunction