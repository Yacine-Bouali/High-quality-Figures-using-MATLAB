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

% Tested in MATLAB R2021a. For older versions, please verify the availability
% of some pre-defined functions used in this code to avoid errors.
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
f1=50;f3=3*f1; A1=280;A3=50;
H1=A1*sin(2*pi*f1*t);
H3=A3*sin(2*pi*f3*t);
% ********* End the data calculation here *********

%% 02- Plot Data
% In this section, plot the data, customize the plot line color and width,
% and set labels along with specifying axis limits 
plot(t,H1,'Color','#2ec27e','LineWidth',1.5)
hold on
plot(t,H3,'--','Color','#342ec2','LineWidth',1.5)
title('')
xlabel('$t$(s)')
ylabel('$V$ $(V)$')
xlim([0 0.02])
ylim([-310 310])
%%
% Add and customize legends for better figure interpretation
leg=legend('Fundamental','$3^{rd}$ Harmonic');
legend boxoff 
%leg.Location= 'northwest'

%% 03- Figure Property
% Customize the size and position of the current figure according to document requirements
fig = gcf; % Get the handle of the current figure
%set(fig,'Units','centimeters','Position',[3 3 8.5 8])   % Double-Column
set(fig,'Units','centimeters','Position',[3 3 17.4 8])  % Single-Column

%% 04- Axes Property
% Customize the axes properties, including font, font size, LaTeX interpreter,
% and adjust the size and location of the axes.
ax = gca; % Get the handle of the current axes
set(get(ax,'ylabel'),'rotation',90)
% Change the font of the axes to 'CMU Serif'. Uncomment the line below and
% set it to 'Times' if the 'CMU Serif' font is not available.
set(ax,'FontName','CMU Serif')
%set(ax,'FontName','Times')
set(ax,'FontSize',12)
% The Interpreter must be set to LaTeX to handle the math and symbols used
set(findall(fig,'-property','Interpreter'),'Interpreter','latex')
set(ax,'TickLabelInterpreter','latex')
set(ax,'LineWidth',1.5)
box off
set(ax, 'Position', get(ax, 'OuterPosition') - ...
    get(ax, 'TightInset') * [-1 0 1 0; 0 -1 0 1; 0 0 1 0; 0 0 0 1]);
%% 
% Set x and y values for the plot using an alternative method
xticks([0:0.02/4:0.02]);
set(gca,'XTickLabel',{'0';'$\pi/2$';'$\pi$';'$3\pi/2$';'$2\pi$'});
yticks([-280 -100 0 100 280])
%set(gca,'YTickLabel',{'0';'$\pi$';'$2\pi$';'$3\pi/2$'});
%%
% This section handles the grid property for the figure
set(ax,'XGrid','off');
set(ax,'YGrid','on');
set(ax,'GridLineStyle','--');

%% 05- Save Figure
% Set the filename and save the figure in different formats (fig, EPS, PNG)
fig_name_save='high_Quality_Figure';
saveas(ax,[fig_name_save,'.fig'])
exportgraphics(ax, [fig_name_save,'.eps'], 'ContentType', 'vector');
% Change the resolution 600 according to the data size and the desired quality for PNG file
exportgraphics(ax,[fig_name_save,'.png'],'Resolution',600) 
