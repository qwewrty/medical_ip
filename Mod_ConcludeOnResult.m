% Find the Image in DB with the lowest comparison factor

MIN_VALUE = double(0);
IMG_PATH  = '';
IMG_NAME  = '';
ip1 = '';
in1 = '';
ip2 = '';
in2 = '';
ip3 = '';
in3 = '';
ip4 = '';
in4 = '';
ip5 = '';
in5 = '';
min1 = double(99999);
min2 = double(99999);
min3 = double(99999);
min4 = double(99999);
min5 = double(99999);

% Assume that the first Image is the closest
MIN_VALUE = double(Comparison_Factor(1).TaDaFactor);
IMG_PATH  = Comparison_Factor(1).ImgPath;
IMG_NAME  = Comparison_Factor(1).ImgName;

for i = 2:20
    if ( Comparison_Factor(i).TaDaFactor < min1 )
        
        min5 = min4;
        in5 = in4;
        ip5 = ip4;
        
        min4 = min3;
        in4 = in3;
        ip4 = ip3;
        
        min3 = min2;
        in3 = in2;
        ip3 = ip2;
        
        min2 = min1;
        in2 = in1;
        ip2 = ip1;
   
        min1 = Comparison_Factor(i).TaDaFactor;
        in1 = Comparison_Factor(i).ImgName;
        ip1 = Comparison_Factor(i).ImgPath;
        
    elseif( Comparison_Factor(i).TaDaFactor < min2 )
        
        min5 = min4;
        in5 = in4;
        ip5 = ip4;
        
        min4 = min3;
        in4 = in3;
        ip4 = ip3;
        
        min3 = min2;
        in3 = in2;
        ip3 = ip2;
   
        min2 = Comparison_Factor(i).TaDaFactor;
        in2 = Comparison_Factor(i).ImgName;
        ip2 = Comparison_Factor(i).ImgPath;
        
    elseif( Comparison_Factor(i).TaDaFactor < min3 )
        
        min5 = min4;
        in5 = in4;
        ip5 = ip4;
        
        min4 = min3;
        in4 = in3;
        ip4 = ip3;
   
        min3 = Comparison_Factor(i).TaDaFactor;
        in3 = Comparison_Factor(i).ImgName;
        ip3 = Comparison_Factor(i).ImgPath;
        
    elseif( Comparison_Factor(i).TaDaFactor < min4 )
        
        min5 = min4;
        in5 = in4;
        ip5 = ip4;
   
        min4 = Comparison_Factor(i).TaDaFactor;
        in4 = Comparison_Factor(i).ImgName;
        ip4 = Comparison_Factor(i).ImgPath;
        
    elseif( Comparison_Factor(i).TaDaFactor < min5 )
   
        min5 = Comparison_Factor(i).TaDaFactor;
        in5 = Comparison_Factor(i).ImgName;
        ip5 = Comparison_Factor(i).ImgPath;
    end
    
end

disp('RESULT : ');
disp('Image Closest to Current Image is : ');
disp(ip1);
disp(' ');

subplot(3,3,1); imshow(CURRENT_IMAGE); mt(1) = title('Current Image');
subplot(3,3,2); imshow(ip1); mt(2) = title(in1);
subplot(3,3,3); imshow(ip2); mt(3) = title(in2);
subplot(3,3,4); imshow(ip3); mt(4) = title(in3);
subplot(3,3,5); imshow(ip4); mt(5) = title(in4);
subplot(3,3,6); imshow(ip5); mt(6) = title(in5);
set(mt,'Position',[90 220],'VerticalAlignment','top','Color',[1 0 0]);
