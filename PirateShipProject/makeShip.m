function [xx yy zz] = makeShip(u,v,ang,axis)
th = linspace(0,ang,300);
[uu tth] = meshgrid(u,th);
[vv tth] = meshgrid(v,th);
rr = uu;
switch axis
    case 'x'
        xx = vv;
        yy = rr.*cos(tth);
        zz = rr.*sin(tth);
    case 'y'
        xx = rr.*cos(tth);
        yy = vv;
        zz = rr.*sin(tth);
    case 'z'
        xx = rr.*cos(tth);
        yy = rr.*sin(tth);
        zz = vv;
end

end