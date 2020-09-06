% Use Support Vector Machines to classify 2D data
% You can import your own 2D dataset. 
% However, I will provide an exmaple 2D dataset 
% to demonstate the implementation of the SVM. 

% This is meant for data separable by a linear boundary. 

% Load data
load('dataset1.mat');
figure; plotdata(X, y); 

% Train SVM using a linear kernel 
[mdl,FitInfo] = fitclinear(X,y)

% Plot data with boundary
x = linspace(0,6);
f = @(x) -(x*mdl.Beta(1) + mdl.Bias)/mdl.Beta(2);
boundary = f(x);
plotdata(X, y); hold on;
plot(x,boundary,'g--','LineWidth',2,'DisplayName','Boundary'); hold off;
