%0.41 - grey 1 =0.75
%0.25 - 0.31 - grey 2 = 0.50
%0.25- 0.1 - black = 0.25

function preProcessedImage = preProcessImage(img)


[x,y] = size(img);
preProcessedImage = zeros(x,y,'uint8');
for i = 1:x
    for j = 1:y
        if img(i,j)>127
            preProcessedImage(i,j) = 191;
        elseif img(i,j)>63 && img(i,j)<128
            preProcessedImage(i,j) = 127;
        elseif img(i,j) ~= 0
            preProcessedImage(i,j) = 63;
        else
            preProcessedImage(i,j) = 0;
        end
    end
end
