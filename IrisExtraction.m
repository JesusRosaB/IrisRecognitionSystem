function Iris=IrisExtraction(A,Pupil)%% step 3: Iris Edge Extraction%% 1. SmoothingM=medfilt2(A, [12 12]);figure, imshow(A), title("Original Image")figure, imshow(M), title("Smoothed Image")%% 2. Edge Detectionedge_map = edge(M,'canny');figure, imshow(edge_map), title(' Edge Detection by Canny');%%% Center and Radius% circular hough transform[M,N] = size(edge_map);[Y,X] = find (edge_map >0);% possible centers (within the pupil)delta=5;a = (Pupil.Cx - Pupil.R) : delta : (Pupil.Cx + Pupil.R);b = (Pupil.Cy - Pupil.R) : delta : (Pupil.Cy + Pupil.R);% possible radiimaxR = Pupil.R + 150;%maxR = Pupil.R +40;R = Pupil.R+20 : delta : maxR;Accum = zeros(length(a),length(b),length(R));for f = 1 : length(X)    x = X(f);    y = Y(f);    for i = 1:length(a)        for j = 1:length(b)            r = round(sqrt((x-a(i))^2+(y-b(j))^2));%%euclidean distance            fr = find(R == r);             if(~isempty(fr))                 Accum(i,j,fr(1)) = Accum(i,j,fr(1)) + 1;              end        end    endend[Iris]=findMaxi(Accum,a,b,R);endfunction