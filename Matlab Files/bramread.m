function [pic] = bramread(infile, rows, cols)

pic = zeros(rows,cols);

fid = fopen(infile);

for r = 1 : rows
   for c = 1 : (cols / 4) + 1
       tline = char(fgets(fid));       
       if mod(c,64) == 0          
          for p = 1 : 2             
            pixel = tline((2*p-1):(2*p));
            pic(r,4*(c-1)+p) = hex2dec(pixel);             
          end
       else
           for p = 1 : 4
            pixel = tline((2*p-1):(2*p));
            pic(r,4*(c-1)+p) = hex2dec(pixel); 
          end
       end       
   end
end
figure(3);
imshow(uint8(pic * 16));

fclose(fid);
