
[X,Y,Z] = cylinder(0.5);
h = 7;
Z = Z*h;
deg = pi/180;
eul=[0 90*deg 0]; %ZYX
rotm = eul2rotm(eul);
len=size(X);
for i=1:len(2)
    disp(i)
    disp(X(2,i))
    B=[X(1,i), Y(1,i), Z(1,i)]* rotm;
    C=[X(2,i), Y(2,i), Z(2,i)]* rotm;
    X(1,i)=B(1);
    Y(1,i)=B(2);
    Z(1,i)=B(3);
    
    X(2,i)=C(1);
    Y(2,i)=C(2);
    Z(2,i)=C(3);
end
surf(X,Y,Z);
xlim( [-10 10]);
ylim([-10 10]);
zlim( [-10 10]);