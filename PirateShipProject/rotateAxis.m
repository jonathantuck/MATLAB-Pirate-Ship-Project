function [xx yy zz] = rotateAxis(x,y,z,angle,axis)
th = angle;
[rows cols] = size(x);
x = reshape(x,1,cols*rows);
y = reshape(y,1,cols*rows);
z = reshape(z,1,cols*rows);
V = [x;y;z];
if strcmp(axis,'x')
    rotx = [1 0 0; 0 cos(th) -sin(th);...
        0 sin(th) cos(th)];
V = rotx * V;
xx = reshape(V(1,:),rows,cols);
yy = reshape(V(2,:),rows,cols);
zz = reshape(V(3,:),rows,cols);

elseif strcmp(axis,'y')
    roty = [cos(th) 0 -sin(th); 0 1 0;...
        sin(th) 0 cos(th)];
V = roty * V;
xx = reshape(V(1,:),rows,cols);
yy = reshape(V(2,:),rows,cols);
zz = reshape(V(3,:),rows,cols);
elseif strcmp(axis,'z')
    rotz = [cos(th) -sin(th) 0; sin(th) cos(th) 0;...
        0 0 1];
V = rotz * V;
xx = reshape(V(1,:),rows,cols);
yy = reshape(V(2,:),rows,cols);
zz = reshape(V(3,:),rows,cols);
end
end
    
    