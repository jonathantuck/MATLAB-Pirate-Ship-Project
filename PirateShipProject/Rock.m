clear
clc
close all
u = 0:0.1:4;
v = -(u.^4)+4;

th = linspace(0,2*pi);

[uu tth] = meshgrid(u,th);
[vv tth] = meshgrid(v,th);
rr = uu;
xx = rr.*sin(tth);
yy = rr.*cos(tth);
zz = vv;

axis off
surf(xx,yy,zz);
