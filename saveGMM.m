function [ output_args ] = saveGMM( mix , path_name )
%UNTITLED6 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%save the matlab data struct to disk by using the xml toolbox
addpath 'E:\matlab\toolbox\xmltree';
tree = struct2xml(mix);
save(tree,[path_name,'gmm.xml']);

end

