% Use Support Vector Machines to classify 2D data
% You can import your own 2D dataset. 
% However, I will provide an exmaple 2D dataset 
% to demonstate the implementation of the SVM. 

% This is meant for data which requires non-linear classification. 

% Load data
load('dataset2.mat');
plotdata(X,y) 

% Train SVM using a Gaussian kernel 
% You can set your loss value however you wish. 

lossval = 1; 
while lossval > 0.12
    [mdl,FitInfo] = fitckernel(X,y);
    lossval = loss(mdl,X,y)
end

% Plot data with boundary
visualizeBoundary(X,y,mdl)

