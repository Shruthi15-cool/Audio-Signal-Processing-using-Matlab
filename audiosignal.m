clc;
close all;
clear all;
 
f=0.8;
n=6;
a=fir1(n,f,'high'); %fir high pass filter
b=fir1(n,f,'low');  %fir low pass filter
 
[y,fs] = audioread('Audio signal.ogg');
o=filter(a,1,y);
p=filter(b,1,o);
fvtool(p,1);
subplot(2,1,1);
plot(y);
subplot(2,1,2);
plot(p);
