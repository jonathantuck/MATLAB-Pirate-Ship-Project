function [X Y Z] = CylindArrs(L,R,axis)
X = [1 1 1 1];
Y = X;
Z = X;
y = 0;
th = linspace(0,2.*pi);
for th = th
    a = R .* cos(th);
    b = R .* sin(th);
    x  =[0 a a 0];
    y = [0 b b 0];
    z = [0 0 L L];
    X = [X; x];
    Y = [Y; y];
    Z = [Z; z];

end
    X = X(2:end,:);
    Y = Y(2:end,:);
    Z = Z(2:end,:);

switch axis
    case 'z'
        X = X;
        Y = Y;
        Z = Z;
    case 'x'
        a = X;
        b = Y;
        c = Z;
        X = c;
        Y = a;
        Z = b;
    case 'y'
        a = X;
        b = Y;
        c = Z;
        X = b;
        Y = c;
        Z = a;
end
end