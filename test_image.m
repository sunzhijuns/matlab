%%
clear all;
close all;
RGB=imread('brick0.png','png');
imwrite(RGB,'myfootball.png','png');
%%
%将图片的索引转换为灰度图像
clear all;
close all;
[X,map]=imread('trees.tif','tif');
figure;
imshow(X,map);
newmap=rgb2gray(map);
figure;
imshow(X,newmap);
%%
%将灰度图像转换为索引图像
clear all;close all;
clc;
X =imread('rice.png');
Y=grayslice(X,16);
figure;
imshow(Y,jet(16));
% imwrite(Y,jet(16),'myslicerice.png')

%%
%将索引图象转换为灰度图像
clear;
clc;
[X,map]=imread('trees.tif','tif');
I=ind2gray(X,map);
figure;
imshow(I);
%%
%将rgb图像转换为二值图像
clear;
clc;
for i=0
    RGB=imread(['tank_blue_run' num2str(i) '.png']);
    bw=im2bw(RGB,0.1);
    figure;
    imshow(bw);
%     imwrite(bw,['tank_blue_run' num2str(i) '.png'])
end

%%
%索引图像->rgb图像
clear all;
close all;
[X,map]=imread('trees.tif','tif');
RGB=ind2rgb(X,map);
figure;
imshow(RGB);
set(gcf,'position',[200,200,500,500]);

%%
%rgb图像->索引图像
clear all;
close all;
RGB=imread('peppers.png');
figure;
imshow(RGB);
[X,map]=rgb2ind(RGB,255);
figure;
imshow(X,map);
% imwrite(X,map,'myclown.png')
%%
% rgb图像->灰度图像
clear all;
close all;
RGB=imread('peppers.png','png');
I=rgb2gray(RGB);
figure;
imshow(I);
% imwrite(I,'peppersgray.png')
%%
clear all;



%%
clear;clc;
str = 'my name is robin.';
disp(str);
str_size = size(str)
str(1:7)
str2=str(end:-1:1)
str_ascii=double(str)
char(str_ascii)
str3='大家好！'
str3_ascii=double(str3)
char(str3_ascii)
%%
clc;clear all;
str1='my name is';
str2=' robin';
s1=[str1 str2]
s2=strcat(str1,str2)
s3=strvcat(str1,str2)
%%
clc
clear all;
str1='windows';
str2='wIrd';
n = strcmp(str1,str2)
n1=strncmp(str1,str2,2)
n2=strncmpi(str1,str2,2)
%%
clc;
clear all;
str = 'ss ddff.png'
n1=strfind(str,'.png')
n2=strfind(str,' ')
%%
clc;
clear all;
str=' ss dd .png'
s1=strrep(str,'.png','.tif')
str2={'c\run','c\ddn'}
str3=strrep(str2,'\\','c:\')
%%
%调整图片大小
clear;clc;
ss=ls;
ss
[m,n] =size(ss)
for i=1:m
   str=ss(i,:);
   index = strfind(str,'.png');
   if index 
       str1=str(1:index+3)
       imageData=imread(str1);
       J = imresize(imageData, 0.5);
       imwrite(J,str1);
   end
end
%%
%将数据矩阵转换为灰度图像
clear all;
close all;
clc;
A=rand(200,200);
I=mat2gray(A);
figure;
imshow(I);
J = imresize(I, 0.5);
figure;
imshow(J);
%%
%抖动
clear all;
close all;
clc;
I=imread('cameraman.tif');
BW=dither(I);
subplot(121);
imshow(I);
subplot(122);
imshow(BW);

%%
RGB=imread('myfootball.png');
I=rgb2gray(RGB);
figure;
imshow(I);

%%
% 读取一帧
clear;
clc;
I1=imread('mri.tif',1);
I20=imread('mri.tif',20);
figure;
subplot(121);
imshow(I1);
subplot(122);
imshow(I20);
%%
%显示多帧图像
clear;
clc;
mri=uint8(zeros(128,128,1,27));
for i=1:27
    [mri(:,:,:,i),map]=imread('mri.tif',i);
end
montage(mri,map);
%%
%生成动画
clear;
clc
mri=uint8(zeros(128,128,1,27));
for i=1:27
    [mri(:,:,:,i),map]=imread('mri.tif',i);
end
mov=immovie(mri,map);
implay(mov);
% movie(mov);
%%
%图像浏览器
imtool('myslicerice.png')





%%
%图像的读写
clear all;
close all;
[RGB,map ]= imread('mlhdlc_cameraman.tif','tif');
imshow(RGB)
imfinfo('mlhdlc_cameraman.tif')
% imwrite(RGB,'myfootball.png','png');

%%
clear all;
close all;
RGB = imread('brick0.png');
[X,map] = rgb2ind(RGB,16);
figure;
imshow(X,map);

%%
%图像相加
clear all;
close all;
I=imread('rice.png');
J=imread('cameraman.tif');
K=imadd(I,J,'uint16');
imshow(K,[]);
%%
%图像相减
clear all;
close all;
I=imread('rice.png');
J=imsubtract(I,60);
figure;
subplot(121);
imshow(I);
subplot(122);
imshow(J);
%%
%图像相乘
clear all;
close all;
I=imread('moon.tif','tif');
J=immultiply(I,0.9);
figure;
subplot(121);
imshow(I);
subplot(122);
imshow(J);
%%
%图像相除
clear all;
close all;
X=uint8([255 10 75; 44 255 100]);
Y=uint8([50 20 50; 50 50 50]);
Z=imdivide(X,Y)
figure;
subplot(131);
imshow(X);
subplot(132);
imshow(Y);
subplot(133);
imshow(Z);
%%
%两幅图像的绝对差异
clear all;
close all;
I=imread('cameraman.tif');
J=uint8(filter2(fspecial('gaussian'),I));
K=imabsdiff(I,J);
figure;
subplot(131);
imshow(I);
subplot(132);
imshow(J);
subplot(133);
imshow(K,[]);
%%
%绘制图像的直方图
clear all;
close all;
I=imread('pout.tif');
J=histeq(I);
subplot(121);
imshow(I);
subplot(122);
imshow(J);

%%
%对比度增强
clear all;
close all;
I=imread('pout.tif');
J=imadjust(I,[0.3 0.7],[]);
subplot(121)
subimage(I);
subplot(122);
subimage(J);


%%
%对比度增强
clear all;
close all;
RGB = imread('football.jpg');

RGB2 = imadjust(RGB,[.2 .3 0; .6 .7 1],[]);
subplot(121)
subimage(RGB);
subplot(122);
subimage(RGB2);
%%
%图像的插值
clear all;
close all;
[X,map]=imread('trees.tif','tif');
[Y,newmap]=imresize(X,map,0.5);
figure;
subplot(121)
subimage(X,map);
subplot(122);
subimage(Y,newmap);
%%
%图像旋转
clear all;
close all;
A=imread('football.jpg','jpg');
B=imrotate(A,-20,'nearest');
figure;
subplot(121);
imshow(A);
subplot(122);
imshow(B);
%%
%添加噪声
clear all;
close all;
I=imread('eight.tif','tif');
J1=imnoise(I,'gaussian',0.1);
J2=imnoise(I,'poisson');
J3=imnoise(I,'salt & pepper',0.1);
figure;
subplot(221),imshow(I),title('原图像')
subplot(222),imshow(J1),title('Gaussian')
subplot(223),imshow(J2),title('Possion')
subplot(224),imshow(J3),title('salt & pepper')
%%
%图像的剪切
clear all;
close all;
I=imread('football.jpg','jpg');
J=imcrop(I,[100,0,150,150]);
figure;
imshow(I);
figure;
imshow(J);

%%
%图像的傅里叶变换
clear all;
close all;
I=imread('cameraman.tif','tif');
J=fft2(I,256,256);
K1=fftshift(J);
K2=log(abs(K1));
figure;
subplot(121);
imshow(I);
subplot(122);
imshow(K2,[]);

%%
%傅里叶反变换
clear all;
close all;
I=imread('cameraman.tif','tif');
J=fft2(I,256,256);
K=ifft2(J,256,256);
figure;
subplot(121);
imshow(I);
subplot(122);
imshow(K,[]);

%%
clear all;
close all;



