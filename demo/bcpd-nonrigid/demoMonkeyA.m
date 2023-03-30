close all; clear;
addpath('..');
%% input files
y   =sprintf('%s/../../data/monkey-x.txt',pwd);
x   =sprintf('%s/../../data/monkey-y.txt',pwd);
fnm =sprintf('%s/../../bcpd',            pwd);
fnw =sprintf('%s/../../win/bcpd.exe',    pwd);
if(ispc) bcpd=fnw; else bcpd=fnm; end;
%% parameters
omg ='0.1';
bet ='2.0';
lmd ='200';
gma ='10';
K   ='70';
J   ='300';
c   ='1e-6';
n   ='500';
%% execution
prm1=sprintf('-w%s -b%s -l%s -g%s',omg,bet,lmd,gma);
prm2=sprintf('-J%s -K%s -p',J,K);
prm3=sprintf('-c%s -n%s -h -r1',c,n);
cmd =sprintf('%s -x%s -y%s %s %s %s -sA',bcpd,x,y,prm1,prm2,prm3);
system(cmd); 
#optpath3;


