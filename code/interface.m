%Interface Rocket
%v 2.0
%Carolina Pinheiro, RED 2020/21
%carolina.p.pinheiro@tecnico.ulisboa.pt

%--------------------------------------------------------------------
%Receive initial coordinates (this will be the center coordinates of the
%map)
initial_coordinates=[38.736789 -9.137551 ];
alt=5;
map_size= 1;
%Create map
figpos = [50 0 800 500];
uif = uifigure("Position",figpos, 'Name', 'Interface v2.0');
ug = uigridlayout(uif,[2,2]);

%To fix panels to a certain size
%ug.ColumnWidth = {300,'1x'};
%ug.RowHeight = {300,'1x'};

p1 = uipanel(ug);
p2 = uipanel(ug);
p3 = uitable(ug);
p4 = uiswitch(ug,'toggle',...
    'Items',{'Go','Stop'},...    
    'Position',[165 160 20 45],...
    'ValueChangedFcn',@switchMoved);
gx = geoaxes(p1,"Basemap","satellite"); 
gg = geoglobe(p2);  %only availabe in MatLab2020a
gx.InnerPosition = gx.OuterPosition;
gg.Position = [0 0 1 1];

    %Center map
gx.MapCenter = initial_coordinates;
gx.ZoomLevel = 16;

%-----------------------------------------------
%Prepare table with coordinates
d = {initial_coordinates(1), initial_coordinates(2), alt};
p3.Data = d;
p3.ColumnName = {'Latitude','Longitude','Altitude'};

%Plot trajectory on map
t=0;
x=[0 0];
coords=initial_coordinates;
pause(10) %wait for the map and tables to load
y=0;
while y==0
%disp(p4.Value)
%Feed random trajectories
%if p4.Value ~= 'Stop'
    disp('Going')
    while t<=50
       pause(1)
       x=[0.0001 0.0001];

       %Update trajectory
       hold(gx,"on")
       geoplot(gx,[coords(1)+x(1) coords(1)], [coords(2)+x(2) coords(2)], 'Color','b', 'LineWidth', 2);
       coords(1)= coords(1)+ x(1);
       coords(2)= coords(2)+ x(2); 
       t=t+1; %disp(t);

       %Add new data to the table
       oldData = get(p3,'Data');
       newRow={coords(1), coords(2), alt};
       newData = [oldData; newRow];
       set(p3,'Data',newData)
    end
    y=1;
end
%end

%Close window
close all hidden

function lampswitch
fig = uifigure('Position',[100 100 370 280]);


lmp = uilamp(fig,...
    'Position',[165 75 20 20],...
    'Color','green');


sw = uiswitch(fig,'toggle',...
    'Items',{'Go','Stop'},...    
    'Position',[165 160 20 45],...
    'ValueChangedFcn',@switchMoved); 

% ValueChangedFcn callback

function switchMoved(src,event)  
    switch src.Value
        case 'Go'
            lmp.Color = 'green';
            disp('Go')
        case 'Stop'
            lmp.Color = 'red';
            disp('Start')
        end
    end
end
%------------------------------------------------------------------
% while x(1)~=100 %just a dumb condition to close the program
%     x(1)=input('Latitude deslocação ');
%     x(2)=input('Longitude deslocação ');
%     disp(x)
%     hold(gx,"on")
%     if x(1)~=100
%         geoplot(gx,[coords(1)+x(1) coords(1)], [coords(2)+x(2) coords(2)], 'Color','b', 'LineWidth', 2);
%         coords(1)=coords(1)+x(1);
%         coords(2)= x(2) + coords(2);
%     end
%  end