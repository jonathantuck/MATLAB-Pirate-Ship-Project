function [xx yy zz] = cannonBall(r)

a=linspace(0,2*pi,100);
b=linspace(0,pi,100);
[a,b]=meshgrid(a,b);
xx=r.*sin(b).*cos(a);
yy=r.*sin(b).*sin(a);
zz=r.*cos(b);
%Converting spherical coordinates to cartesian coordinates.

end
