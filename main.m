%% Contact:
% Written By:  Yacine Bouali - Ph.D in Renewable Energy.
% email: yacinebouali26@gmail.com
% Linkedin: https://www.linkedin.com/in/yacinebouali3538/
% Facebook: https://web.facebook.com/yacinebouali3538/

%%
% This MATLAB code is designed to facilitate the creation of high-quality 
% figures by providing a structured workflow divided into five main steps.
% Whether you are visualizing scientific data, engineering results, or any
% other dataset, this code aims to streamline the process of generating 
% publication-ready figures for paper and Thesis.
%%
clc;clear   % If your data is already loaded, please delete this line of code
%% 01- Load Data
% Load your dataset into MATLAB Workspace. This step ensures that your data
% is ready for visualization.

% load('myDataFile.mat')  % Use this code to load the data from a .mat file
% Or use any code to calculate your data
% ********* Perform the data calculation here *********
T=0.02;
t=0:T/100:T;
f1=50;f3=3*f1;f5=5*f1;f7=7*f1;
A1=280;A3=50;A5=40;A7=30;
H1=A1*sin(2*pi*f1*t);
H3=A3*sin(2*pi*f3*t);
H5=A5*sin(2*pi*f5*t);
H7=A7*sin(2*pi*f7*t);
H=H1+H3+H5+H7; 
% ********* End the data calculation here *********

