close all; clear;
%% set 'win=1' if windows
win=1;
%% input files
x   =sprintf('%s/../data/%s',pwd,'parasaurolophus_view003.txt');
y   =sprintf('%s/../data/%s',pwd,'parasaurolophus_view004.txt');
fnm =sprintf('%s/../bcpd',                pwd);
fnw =sprintf('%s/../win/bcpd.exe',        pwd);
if(win==1) bcpd=fnw; else bcpd=fnm; end;
%% parameters
omg ='0.1';
bet ='2.0';
lmd ='1e9';
gma ='.10';
K   ='70';
J   ='300';
f   ='0.3';
c   ='1e-6';
n   ='500';
nrm ='xd';
dwn ='b,5000,0.02';
%% execution
prm1=sprintf('-w%s -b%s -l%s -g%s',omg,bet,lmd,gma);
prm2=sprintf('-J%s -K%s -p -f%s -u%s -D%s',J,K,f,nrm,dwn);
prm3=sprintf('-c%s -n%s -h -r1',c,n);
cmd =sprintf('%s -x%s -y%s %s %s %s -sY',bcpd,x,y,prm1,prm2,prm3);
system(cmd); optpath3;

