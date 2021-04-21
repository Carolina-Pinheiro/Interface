clc
clear
%Teste blindagem

%Receive a string input
prompt = 'Send the received string \n ';
data_string = input(prompt,'s');

%Given key
key='aceX aceY aceZ';
key=split(key);

%Check if it has only numbers
while 1
    data_num=str2num(data_string);
    if ~isnan(data_num)
       if size(data_num,2) == size(key,1)
            break;
       end 
    end
    prompt = 'Send the received string \n ';
    data_string = input(prompt,'s');
end

fileID = fopen('exp.txt ','a');
fprintf(fileID,'%.4f ',data_num);
fprintf(fileID,'\n');
fclose(fileID);

type('exp.txt');

    %if not assume the values not present are zero