clear; 
close all; 
clc


% Read files from training spam folder.
files=dir('.\training\spam\*.txt');
Xtrain=[];
ytrain=[];
for file = files'
    text = readFile(strcat('.\training\spam\',file.name));
    processed_text  = processEmail(text);
    feature_vector = getVector(processed_text);%create a feature from email
    Xtrain=[Xtrain;transpose(feature_vector)];%append to data matrix
    ytrain=[ytrain;-1];%appened -1 to y vector to mark as spam
end

% Read files from training notspam folder.
files=dir('.\training\notspam\*.txt');
for file = files'
    text = readFile(strcat('.\training\notspam\',file.name));
    processed_text  = processEmail(text);
    feature_vector = getVector(processed_text);%create a feature from email
    Xtrain=[Xtrain;transpose(feature_vector)];%append to data matrix
    ytrain=[ytrain;1];%appened 1 to y vector to mark as spam
end

save('spamTrain.mat','Xtrain','ytrain');%save data frame
