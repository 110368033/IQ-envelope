close all;

namelist = dir('*ch4.dat');

all_IQ=[];
for i=1:size(namelist,1)
    data=read_file(namelist(i,1).name);
    absIQ=IQ_process(data);
%     figure;plot(absIQ);ylim([0 0.02]);
    all_IQ=[all_IQ absIQ];
end

[dist_mid,ssim_mid,dist_all,ssim_all]=data_preprocessing_for_envelope(all_IQ);
