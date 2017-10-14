function [ new_image ] = my_brightness( imagee,operator , x)
image =double(imagee);
[w h l]= size(image);
for i = 1: w
   for j = 1 : h
       if (x >0) 
       switch(operator)
           case '+'
               new_image(i , j)= image(i , j )+x;
               if (new_image (i , j) > 255)
                   new_image(i , j) = 255;
               end
           case '-'
               new_image(i , j)= image(i , j )-x;
               if(new_image(i ,j)<0)
                   new_image(i ,j)=0;
               end
           case '*'
               new_image(i , j)= image(i , j )*x;
               if (new_image(i , j)>255)
                   new_image(i ,j) = 255;
               end
           case '/'
               new_image(i , j)= image(i , j )/x;
               
       end
       else 
           error('enter positve number');
       end
   end
end

new_image= uint8(new_image);
imshow(new_image);
end

