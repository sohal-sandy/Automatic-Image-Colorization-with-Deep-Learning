clc;
clear all;
close all;
%calculate psnr,ssim,mse

%image1
a=imread('C:\Users\sande\OneDrive\Pictures\Screenshots\org10.png');
aa=imread('C:\Users\sande\OneDrive\Pictures\Screenshots\result10.png');
 peaksnr=psnr(a,aa);
 mse=immse(a,aa);
 ssimval=ssim(a,aa);
format short g
 [peaksnr mse ssimval]
