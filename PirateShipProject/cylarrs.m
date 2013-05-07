function [xx yy zz] = cylarrs(l,r,axis)
u = [0 r r 0 0];
v = [0 0 l l 0];
th = linspace(0,2.*pi);


[uu tth] = meshgrid(u, th);
[vv tth] = meshgrid(v, th);

switch axis
    case 'x'
        rr = uu;
        xx = vv;
        yy = rr .* sin(tth);
        zz = rr .* cos(tth);
    case 'y'
        rr = uu;
        xx = rr.*sin(tth);
        yy = vv;
        zz = rr.*cos(tth);
    case 'z'
        rr = vv;
        xx = rr.*sin(tth);
        yy = rr.*cos(tth);
        zz = uu;
end
end