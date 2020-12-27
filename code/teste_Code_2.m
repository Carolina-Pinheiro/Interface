acel = fopen('./data/acel.txt','r');
formatSpec= '%f, %f \n';
sizeA=[2 inf];
acel_data = fscanf(acel,formatSpec, sizeA);
fclose(acel);
disp(acel_data(:, 2));  
test=acel_data(:,2);
test(1) 
test(2) 


