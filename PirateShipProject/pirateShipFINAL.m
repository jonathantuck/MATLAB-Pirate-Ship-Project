function pirateShip()
clf

whitebg('b');


u1 = linspace(0,-10);
v1 = linspace(-10,0);
u2 = [-10, -10, 0];
v2 = [0, 40, 40];
ang1= pi;
count = 0;
th = pi/100;

% Use the makeShip() function
[xxS1 yyS1 zzS1] = makeShip(u1,v1,ang1,'y');
[xxS2 yyS2 zzS2] = makeShip(u2,v2,ang1,'y');
% Make a cannon
[xxC yyC zzC] = CylindArrs(10,3,'z');
[xxC yyC zzC] = rotateAxis(xxC,yyC,zzC,pi./3.4,'y');
% Make a cannonball
[xxCB yyCB zzCB] = cannonBall(3);
% Make a Mast
[xxM yyM zzM] = CylindArrs(40,1,'z');

%Make a Rock
[xxR yyR zzR] = Rock();

% Use a loop and surface plots to make the animation.
xxS1 = xxS1+100;
xxS2 = xxS2+100;
xxCB = xxCB+100;
xxC = xxC+100;
xxM = xxM+100;
yyM = yyM+30;
zzR = zzR+25;
%Positions the stuff how I want it to be:

% Use  a condition to control the number of frames your animation has
while count < 103
    % Turn hold on
    % Plot the ship and cannonball. 
    surf(xxS1,yyS1,zzS1);
    hold on
    surf(xxS2,yyS2,zzS2);
    surf(xxCB,yyCB,zzCB);
    surf(xxC,yyC,zzC);
    surf(xxM,yyM,zzM);
    surf(xxR,yyR,zzR);
    
colormap bone
shading interp
%Shading and coloring


%Text Title
    text(100,30,160,'Captain Jack Sparrow Needs a Lesson in Firing Cannons.')
        
    %Axis
    axis([-130, 130, -130, 130, -30, 130]);
    axis off;
    
    view(-170,20);
    
    [xxC yyC zzC] = rotateAxis(xxC,yyC,zzC,-th,'z');
    [xxS1 yyS1 zzS1] = rotateAxis(xxS1,yyS1,zzS1,-th,'z');
    [xxS2 yyS2 zzS2] = rotateAxis(xxS2,yyS2,zzS2,-th,'z');
    [xxCB yyCB zzCB] = rotateAxis(xxCB,yyCB,zzCB,th,'y');
    [xxM yyM zzM] = rotateAxis(xxM,yyM,zzM,-th,'z');
    count = count + 1;
    grid off
    
    pause(.01);
    
    hold off
end

end


function [xx yy zz] = Rock()
u = 0:0.1:6;
v = -(u.^2);

th = linspace(0,2*pi);

[uu tth] = meshgrid(u,th);
[vv tth] = meshgrid(v,th);
rr = uu;
xx = rr.*sin(tth);
yy = rr.*cos(tth);
zz = vv;
end
