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
for i=0:7
    RGB=imread(['tank_blue_run' num2str(i) '.png']);
    bw=im2bw(RGB,0.1);
    figure;
    imshow(bw);
    imwrite(bw,['tank_blue_run' num2str(i) '.png'])
end

%%
clear all;
close all;
[X,map]=imread('trees.tif','tif');
RGB=ind2rgb(X,map);
figure;
imshow(RGB);
set(gcf,'position',[200,200,500,500]);

%%
clear all;
close all;
RGB=imread('peppers.png');
[X,map]=rgb2ind(RGB,16);
figure;
imshow(X,map);
imwrite(X,map,'myclown.png')
%%
clear all;
close all;
RGB=imread('peppers.png','png');
I=rgb2gray(RGB);
figure;
imshow(I);
imwrite(I,'peppersgray.png')
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
RGB=imread('myfootball.png');
I=rgb2gray(RGB);
figure;
imshow(I);





%%
clear all;
close all;
RGB = imread('mlhdlc_cameraman.tif','tif');
imshow(RGB)
% imwrite(RGB,'myfootball.png','png');

%%
clear all;
close all;
RGB = imread('brick0.png');
[X,map] = rgb2ind(RGB,16);
figure;
imshow(X,map);




