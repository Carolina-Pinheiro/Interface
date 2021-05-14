
%Body
[X,Y,Z] = cylinder(0.5);
h = 7;
Z = Z*h;

%Nose cone
R = 0.5; %// radius
H =2 ; %// height
N = 100; %// number of points to define the circumference

[x, y, z] = cylinder([0 R], N);
z=-z;
z=z*H;
height = max(abs(z), [], 'all');
z=z+h+height;


%Fins
height_fins=3;
length_fins=1.5;

fin_1=[0 -length_fins 0;
    0 length_fins 0;
    0 0 height_fins];
fin_2=[ length_fins 0 0;
        -length_fins 0 0;
        0 0 height_fins];
X=cat(2,X,x);
Y=cat(2,Y,y);
Z=cat(2,Z,z);


%Rotating matrix
deg = pi/180;
eul=[0*deg 90*deg 0*deg]; %ZYX
rotm = eul2rotm(eul);
len=size(X);

for i=1:len(2)
    B=[X(1,i), Y(1,i), Z(1,i)]* rotm;
    C=[X(2,i), Y(2,i), Z(2,i)]* rotm;
    X(1,i)=B(1);
    Y(1,i)=B(2);
    Z(1,i)=B(3);
    
    X(2,i)=C(1);
    Y(2,i)=C(2);
    Z(2,i)=C(3);
end

fin_1=fin_1*rotm;
fin_2=fin_2*rotm;

%Plot rocket
hold on
surf(X,Y,Z,'edgecolor', 'k');
p=patch(fin_1(:,1), fin_1(:,2), fin_1(:,3), "k");
p=patch(fin_2(:,1), fin_2(:,2), fin_2(:,3), "k");

xlim( [-10 10]);
ylim([-10 10]);
zlim( [-10 10]);
view(45,45)
hold off
 
 
 % % Make colors be red above 27, and cyan below 27.
% redChannel = Z < 27;
% greenChannel = Z > 27;
% blueChannel = greenChannel;
% % Make the RGB image.
% colors = double(cat(3, redChannel, greenChannel, blueChannel));
% % Plot the surface with those colors.

% %x=linspace(0,50);
% y=linspace(0,50);
% 
% z=sqrt((x.^2 + y.^2)/(r^2));
% 

% x_vector=[triangle_x(:,1), triangle_x(:,2)];
% y_vector=[triangle_y(:,1), triangle_y(:,2)];
% z_vector=[triangle_z(:,1), triangle_z(:,2)];
% 
% fins_matrix=[x_vector , y_vector , z_vector];
% fins_matrix=transpose(fins_matrix)*rotm;
% 
% % fins_matrix_x=[transpose(fins_matrix(1:2,1));
% %                 transpose(fins_matrix(3:4,1));
% %                 transpose(fins_matrix(5:6,1))];
% fins_matrix_x=[transpose(fins_matrix(1,:));
%                 transpose(fins_matrix(2,:))];
%             
%                        
% fins_matrix_y=[transpose(fins_matrix(3,:));
%                 transpose(fins_matrix(4,:))];
%             
% fins_matrix_z=[transpose(fins_matrix(5,:));
%                 transpose(fins_matrix(6,:))];
% 
% %            
% % fins_matrix_y=[transpose(fins_matrix(1:2,2));
% %                 transpose(fins_matrix(3:4,2));
% %                 transpose(fins_matrix(5:6,2))];
% %             
% % fins_matrix_z=[transpose(fins_matrix(1:2,3));
% %                 transpose(fins_matrix(3:4,3));
% %                 transpose(fins_matrix(5:6,3))];
