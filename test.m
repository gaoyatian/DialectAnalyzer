clc;clear;

% Developed by Shiwen Deng & Yatian Gao @ UOIT.

mfcc_train = MFCC();

mix = trainGMM(mfcc_train);
mix
saveGMM(mix,'E:\��Ƶʵ������\To Yatian\');

