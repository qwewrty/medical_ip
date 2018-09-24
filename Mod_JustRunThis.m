% Clear All Existing Data & Clear the Console
clear;
clc;

% Start Timer to calculate the time taken by Program to Pre-Compute data
tic;

% Number of IMAGES in DB to be considered
DB_IMAGE_COUNT = 20;

% Fix upon the Jigsaw row & column size to be used across the whole program
JigsawRowSize = 5;
JigsawColSize = 5;

% Image Path/Name which has to be compared against DB
CURRENT_IMAGE='Current_Image2.gif';

% Run the script to Pre-Compute the DB Data Sets
PreComputeModified;

% Stop Timer & display the time taken
disp('Time Taken to Pre-Compute Data for Existing Images');
toc;
disp(' ');

% Start Timer to calculate the time taken by Program to match & retrieve
tic;

% Run the script to Compute the required Data Set for the current Image
% in question
ComputeDataForCurrentImage;

% Run the script to Compare the current data set against those already
% computed DB Data Sets & generate the closeness comparisons
Mod_CompareDataSet;

% Having obtained all the stats. Just conclude mate!
Mod_ConcludeOnResult;

% Stop Timer & display the time taken
disp('Time Taken to match & retrieve the most relevant Image to Current Image');
toc;