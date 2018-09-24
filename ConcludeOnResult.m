
% Find the Image in DB with the lowest comparison factor

MIN_VALUE = double(0);
IMG_PATH  = '';
IMG_NAME  = '';

% Assume that the first Image is the closest
MIN_VALUE = double(Comparison_Factor.DB1.TotalImageFactor);
IMG_PATH  = Comparison_Factor.DB1.ImgPath;
IMG_NAME  = Comparison_Factor.DB1.ImgName;

if ( Comparison_Factor.DB2.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB2.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB2.ImgPath;
    IMG_NAME  = Comparison_Factor.DB2.ImgName;
end

if ( Comparison_Factor.DB3.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB3.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB3.ImgPath;
    IMG_NAME  = Comparison_Factor.DB3.ImgName;
end

if ( Comparison_Factor.DB4.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB4.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB4.ImgPath;
    IMG_NAME  = Comparison_Factor.DB4.ImgName;
end

if ( Comparison_Factor.DB5.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB5.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB5.ImgPath;
    IMG_NAME  = Comparison_Factor.DB5.ImgName;
end

if ( Comparison_Factor.DB6.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB6.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB6.ImgPath;
    IMG_NAME  = Comparison_Factor.DB6.ImgName;
end

if ( Comparison_Factor.DB7.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB7.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB7.ImgPath;
    IMG_NAME  = Comparison_Factor.DB7.ImgName;
end

if ( Comparison_Factor.DB8.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB8.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB8.ImgPath;
    IMG_NAME  = Comparison_Factor.DB8.ImgName;
end

if ( Comparison_Factor.DB9.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB9.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB9.ImgPath;
    IMG_NAME  = Comparison_Factor.DB9.ImgName;
end

if ( Comparison_Factor.DB10.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB10.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB10.ImgPath;
    IMG_NAME  = Comparison_Factor.DB10.ImgName;
end

if ( Comparison_Factor.DB11.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB11.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB11.ImgPath;
    IMG_NAME  = Comparison_Factor.DB11.ImgName;
end

if ( Comparison_Factor.DB12.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB12.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB12.ImgPath;
    IMG_NAME  = Comparison_Factor.DB12.ImgName;
end

if ( Comparison_Factor.DB13.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB13.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB13.ImgPath;
    IMG_NAME  = Comparison_Factor.DB13.ImgName;
end

if ( Comparison_Factor.DB14.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB14.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB14.ImgPath;
    IMG_NAME  = Comparison_Factor.DB14.ImgName;
end

if ( Comparison_Factor.DB15.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB15.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB15.ImgPath;
    IMG_NAME  = Comparison_Factor.DB15.ImgName;
end

if ( Comparison_Factor.DB16.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB16.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB16.ImgPath;
    IMG_NAME  = Comparison_Factor.DB16.ImgName;
end

if ( Comparison_Factor.DB17.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB17.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB17.ImgPath;
    IMG_NAME  = Comparison_Factor.DB17.ImgName;
end

if ( Comparison_Factor.DB18.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB18.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB18.ImgPath;
    IMG_NAME  = Comparison_Factor.DB18.ImgName;
end

if ( Comparison_Factor.DB19.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB19.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB19.ImgPath;
    IMG_NAME  = Comparison_Factor.DB19.ImgName;
end

if ( Comparison_Factor.DB20.TotalImageFactor < MIN_VALUE )
    MIN_VALUE = Comparison_Factor.DB20.TotalImageFactor;
    IMG_PATH  = Comparison_Factor.DB20.ImgPath;
    IMG_NAME  = Comparison_Factor.DB20.ImgName;
end

disp('RESULT : ');
disp('Image Closest to Current Image is : ');
disp(IMG_PATH);
disp(' ');

subplot(1,2,1); imshow(CURRENT_IMAGE); mt(1) = title('Current Image');
subplot(1,2,2); imshow(IMG_PATH); mt(2) = title(IMG_NAME);
set(mt,'Position',[90 220],'VerticalAlignment','top','Color',[1 0 0]);

