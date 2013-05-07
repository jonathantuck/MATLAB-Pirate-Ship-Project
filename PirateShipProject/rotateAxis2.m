% Test Cases:
%  
%   clf
%   [x, y, z] =  makeCone;
%   z = z+3;
%   [xx, yy, zz] = rotateAxis2(x, y, z, 3*pi/2,'y');
%   mesh(xx, yy, zz)
%   view([-45,45])
%   axis([-5,5,-5,5,-5,5])
%   xlabel('x'); ylabel('y'); zlabel('z');
%       => should look something like rotated1.fig
%
%   clf
%   [x, y, z] = makeCone;
%   z = z-3;
%   [xx1, yy1, zz1] = rotateAxis2(x, y, z, 3*pi/4, 'x');
%   surf(xx1, yy1, zz1)
%   view([-45, 45])
%   axis([-5,5,-5,5,-5,5])
%   xlabel('x'); ylabel('y'); zlabel('z');
%      => should look something like rotated2.fig
%
%   clf
%   [x, y, z] = makeCone;
%   x = x-2;
%   y = y-2;
%   [xx2, yy2, zz2] = rotateAxis2(x,y,z,0,'z');
%   surf(xx2, yy2, zz2)
%   view([-45, 45])
%   axis([-5,5,-5,5,-5,5])
%   xlabel('x'); ylabel('y'); zlabel('z');
%      => should look something like rotated3.fig
%==========================================================================
% PART 3.  Anima

function [xx yy zz]=rotateAxis(x,y,z,angle,axis)
[rows cols] = size(x);
x = reshape(x,1,rows*cols);
y = reshape(y,1,rows*cols);
z = reshape(z,1,rows*cols);
xyz = [x;y;z];
switch axis
    case 'x'
        xyz = [1, 0, 0; 0, cos(angle), -sin(angle); 0, sin(angle), cos(angle)]*xyz;
        xx = xyz(1,:);
        yy = xyz(2,:);
        zz = xyz(3,:);
        
        
    case 'y'
        xyz=[cos(angle),0,-sin(angle);0,1,0;sin(angle),0,cos(angle)]*xyz;
        xx = xyz(1,:);
        yy = xyz(2,:);
        zz = xyz(3,:);

    case 'z'
        xyz=[cos(angle),-sin(angle),0;sin(angle),cos(angle),0;0,0,1]*xyz;
        xx = xyz(1,:);
        yy = xyz(2,:);
        zz = xyz(3,:);
end
xx = reshape(xx,rows,cols);
yy = reshape(yy,rows,cols);
zz = reshape(zz,rows,cols);
end