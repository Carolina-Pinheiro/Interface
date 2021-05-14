file = fopen('datafile_1.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f';
C=textscan(file, formatSpec,'HeaderLines', 1 );
fclose(file);

disp("done");