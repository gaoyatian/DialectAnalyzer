function [ mfcc_train ] = MFCC( input_args )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

%����ToolBox
addpath('E:\matlab\toolbox\AuditoryToolbox');
%path_name����wav�ļ��ĸ�Ŀ¼��
path_name = 'J:\����õ�����\����-48\Ĭ�Ϸָ���\';
%��ָ��Ŀ¼�¶�ȡ�����ļ�files.
files = dir([path_name,'*.wav']);
n = length(files);
mfcc_train = [];
for i = 1:n
     fprintf('Getting the wav file NO:');
     fprintf([num2str(i),'\n']);
     waveFile =[path_name,files(i).name];
     [x, fs]=audioread(waveFile);
     [ceps] = mfcc(x, fs);
     if sum(sum(isnan(ceps)))>0  %remove the columns that includes NaN data from ceps
         [r,c] = find(isnan(ceps)>0);
         c = unique(c);
         ceps(:,c) = [];
     end
     mfcc_train = [mfcc_train, ceps(2:13,:)];
end
     mfcc_train = mfcc_train';
end

