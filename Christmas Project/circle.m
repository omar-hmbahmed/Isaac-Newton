%Omar Ahmed
%Here, I will create a function that will create a circle

%define circle function
function y = circle(xc,yc,r,c)

%defines what the function will do
t = 0:pi/50:2*pi;
x = r*cos(t) + xc;
y = r*sin(t) + yc;
patch(x,y,c);