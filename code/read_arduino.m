baudrate= 9600;
if ~isempty(instrfind)
 fclose(instrfind);
  delete(instrfind);
end
s=serial('COM6', 'BaudRate', baudrate);
fopen(s);

i=3;
while i>0
 dados=fscanf(s);
 disp(dados)
 i=i-1;
end

fclose(s);