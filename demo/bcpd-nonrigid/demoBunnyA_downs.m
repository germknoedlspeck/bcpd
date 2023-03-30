# Not yet included:
# Normalisation(!), Downsampling (BCPD++), Nystrom, KDTree

close all; clear;
addpath('..');
%% input files
y   =sprintf('%s/../../data/bunny-y-red.txt',pwd);
x   =sprintf('%s/../../data/bunny-x-red.txt',pwd);
zeta=sprintf('%s/../../data/bunny-zeta-first100.txt',pwd); # zeta^2 values: 100 leftmost points (i.e. the bunny ears) habe high zeta
#zeta=sprintf('%s/../../data/bunny-zeta-mid100.txt',pwd); # zeta^2 values: 100 points near y-z-plane have high zeta
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
c   ='1e-7';
n   ='120';
%% execution
prm1=sprintf('-w%s -b%s -l%s -g%s',omg,bet,lmd,gma);
prm2=sprintf('-K%s',K);
prm3=sprintf('-c%s -n%s -h -r1',c,n);
cmd =sprintf('%s -x%s -y%s -Z%s %s %s %s -sA -a',bcpd,x,y,zeta,prm1,prm2,prm3);
system(cmd);
optpath;

