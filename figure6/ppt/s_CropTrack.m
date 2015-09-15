% s_CropTrack.m
% This script is used to crop PDF images
%
%
% (c) Qiyuan Tian, McNab Lab, Stanford University
% Spetember 2014

clear, clc, close all
cd(fileparts(which('s_CropTrack.m')));

%%
files = dir('../*.png');
croppath = 'croppedimg';
mkdir(croppath);

for imgNum = 1 : length(files)
    thisFile = files(imgNum);
    imgName = thisFile.name;
    img = imread(fullfile('..', imgName));
%     figure, imshow(img);
    
    imgcrop = img(60 : 1825, 760 : 2340, :);
    imwrite(imgcrop, fullfile(croppath, ['crop_' imgName]));
end % end imgNum