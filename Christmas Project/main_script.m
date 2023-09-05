%Omar Ahmed
%An animation that will show Isaac Newton's discovery of gravity

%sets a condition that will always be true to form a repeating loop
n=1;
while n==1
%SETTING THE SCENE
%CONSTRUCTING THE TREE

hold off

%fills the bark polygon with a brown colour
fill([0 10 20 30],[0 100 100 0],[0.48 0.06 0.1])
hold on

%fills the leaves polygon with a green colour
fill([-10 -15 -11 0 15 18 20 30 45 43 40],[100 110 130 140 135 139 136 138 125 108 100],[0 0.5 0])

%CONSTRUCTING ISAAC NEWTON
%plotting and colouring a cicle for Newton's head
circle(-5,30,8,[1 0.99 0.77])
axis equal

%plotting lines for Newton's body
xtorso = linspace(-8,-5,3);
ytorso = (22/3)*xtorso + 176/3;
plot(xtorso,ytorso,'k')

xleg = linspace(-17,-8,6);
yleg = (-11/6)*xleg - 44/3;
plot(xleg,yleg,'k')

xcalf = linspace(-25,-17,5);
ycalf = (33/16)*xcalf + 825/16;
plot(xcalf,ycalf, 'k')

xfoot = linspace(-27,-25,2);
yfoot = -(1/2)*xfoot - 25/2;
plot(xfoot,yfoot,'k')

arml = [-22 33/2; -13 33/2];
drawshape(arml,'k')

xarmu = linspace(-13,-119/22,4);
yarmu = (55/167)*xarmu + 6941/334;
plot(xarmu,yarmu,'k')

%CONSTRUCTING THE APPLE

%plotting a polygon for the apple
applex = [-1; -1; -5; -9; -9; -5; -1;];
appley = [92; 97; 99; 97; 92; 89; 92];
applematrix = [applex appley];
apple = polyshape(applematrix(:,1),applematrix(:,2));

%plotting a line for the apple stem
stemx = [-5 -5];
stemy = [100 99];
plot(stemx,stemy,'k')

%fills the apple polygon with a red colour
fill(applematrix(:,1),applematrix(:,2),[0.7,0,0],'LineStyle',"none")

%tells the user how to make the apple fall
txt1 = 'Left-click anywhere to see what happens to Isacc Newton!';
text(-60,150,txt1)

%animating the apple falling after you click on the screen
w = waitforbuttonpress;
for b = linspace(0,-51,53)
    h = translate(applematrix,0,b);
    apple = polyshape(h(:,1),h(:,2));
    fill(h(:,1),h(:,2)+1,[1,1,1],LineStyle="none")
    fill(h(:,1),h(:,2),[0.7,0,0],LineStyle="none")
    drawnow
    pause(0.005)
    
end

%displays text to reveal Isaac Newton's reaction
txt2 = '!';
text(-7.5,60,txt2,'FontSize',30)

%pauses so that the viewer can see the current animation frame
pause(2)

%clears the figure for the next animation frame
clf

%NOW THE SCENE MUST BE SET AGAIN
hold on
%fills the bark polygon with a brown colour
fill([0 10 20 30],[0 100 100 0],[0.48 0.06 0.1])

%fills the leaves polygon with a green colour
fill([-10 -15 -11 0 15 18 20 30 45 43 40],[100 110 130 140 135 139 136 138 125 108 100],[0 0.5 0])

%CONSTRUCTING ISAAC NEWTON STANDING UP
%plotting and colouring a cicle for Newton's head
circle(-5,55,8,[1 0.99 0.77])
axis equal

%plotting lines for Newton's body
torso = [-5 47; -5 23];
drawshape(torso,'k')

xlegr = linspace(-5,0,5);
ylegr = -(23/5)*xlegr;
plot(xlegr,ylegr, 'k')

xlegl = linspace(-10,-5,5);
ylegl = (23/5)*xlegl + 46;
plot(xlegl,ylegl, 'k')

xarml = linspace(-23,-5,5);
yarml = -(7/15)*xarml + 113/3;
plot(xarml,yarml, 'k')

xarmr = linspace(-5,-1,5);
yarmr = -(15/4)*xarmr + 85/4;
plot(xarmr,yarmr, 'k')

%displays the text expressing Newton's speech
txt3 = 'GRAVITY!';
text(-65,70,txt3,'FontSize',20)

%pauses the code to allow the viewer to see the final animation frame
pause(2.5)
end
%the while loop will repeat the code so that Newton sits down again and the
%animation can repeat


