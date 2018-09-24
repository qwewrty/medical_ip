% Find the Image in DB with the lowest comparison factor

MIN_VALUE = double(0);
IMG_PATH  = '';
IMG_NAME  = '';

% Assume that the first Image is the closest
MIN_VALUE = double(Comparison_Factor(1).TotalImageFactor);
IMG_PATH  = Comparison_Factor(1).ImgPath;
IMG_NAME  = Comparison_Factor(1).ImgName;

for i = 2:20
    if ( Comparison_Factor(i).TotalImageFactor < MIN_VALUE )
        MIN_VALUE = Comparison_Factor(i).TotalImageFactor;
        IMG_PATH  = Comparison_Factor(i).ImgPath;
        IMG_NAME  = Comparison_Factor(i).ImgName;
    end
end

disp('RESULT : ');
disp('Image Closest to Current Image is : ');
disp(IMG_PATH);
disp(' ');

subplot(1,2,1); imshow(CURRENT_IMAGE); mt(1) = title('Current Image');
subplot(1,2,2); imshow(IMG_PATH); mt(2) = title(IMG_NAME);
set(mt,'Position',[90 220],'VerticalAlignment','top','Color',[1 0 0]);