# Automatic-Image-Colorization-with-Deep-Learning
This work is based on the following models:

1. Autoencoder- this model follows the instructions given in the following tutorial: https://github.com/bnsreenu/python_for_microscopists/blob/master/092-autoencoder_colorize_transfer_learning_VGG16_V0.1.py
2. Instance Aware Image Colorization Model- this model is described in the following paper: https://github.com/ariG23498/instance-aware-colorization-TF/blob/master/%234LAB_Instance_aware_Image_Colorization.ipynb
3. Pix2Pix Model- described in the following paper: https://github.com/moein-shariatnia/Deep-Learning/blob/main/Image%20Colorization%20Tutorial/Image%20Colorization%20with%20U-Net%20and%20GAN%20Tutorial.ipynb

This project is submitted as part of a graduate digital image processing class offered at Ryerson University.It is a comparisson of 3 different models proposed in different papers and tutorials. 
The code is also dirrectly taken from these sources. There are a couple of experiments performed in order to understand the effect of changing model parameters. 
These experiments include changing the number of epochs, optimizers, and activation functions. Evaluation of the three models is based on quantitaive results, visual results, and run-time analysis. 
The quantitative results include computation of the PSNR (peak signal  to noise ratio), MSE (mean squared error), and SSIM (structural index similarity) scores. 
MATLAB was used to compute these scores and the best performance was achieved from the Pix2Pix model which achieved an average SSIM score of 87.50% and produced visual results that are also closer to the ground truth images.
After computing the scores, the average was taken. 

Here's the MATLAB code to compute the scores:

clc;

clear all;

close all;

%calculate psnr,ssim,mse

%image1

a=imread('C:\Users\sande\OneDrive\Pictures\org10.png');

aa=imread('C:\Users\sande\OneDrive\Pictures\result10.png');

peaksnr=psnr(a,aa);

mse=immse(a,aa);

ssimval=ssim(a,aa);

format short g

[peaksnr mse ssimval]

# DATASET

There are 2 datasets used for this project. The first one is taken from Kaggle and the second one is from PASCAL VOC 2007. The Kaggle dataset is called 'Google Scraped Image Dataset'. 

