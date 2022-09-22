function [data]=read_file(filename)

f= fopen(filename);
data=fread(f,'float32');
fclose(f);