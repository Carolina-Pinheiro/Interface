clear
clc
s=serialport('COM6', 9600);
i=0;
while 1
i=i+1;
new_data=readline(s);
controlPanelData=char(new_data);
disp(controlPanelData)
controlPanelData(end)=[];

switch true
    case (strcmp('STANDBY MODE',controlPanelData)==1)
        disp("std")
    case (strcmp('LAUNCH MODE',controlPanelData)==1)
        disp("launch")
    case (strcmp('FLIGHT MODE',controlPanelData)==1)
        disp("flg")
end

if (i==5)
    writeline(s,"RED");
    disp("mandei");
end

end
