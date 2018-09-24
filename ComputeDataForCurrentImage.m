
% Compute the data set for Current
Current_Img     = imread(CURRENT_IMAGE);
Current_Img     = preProcessImage(Current_Img);
[CurRow,CurCol] = size(Current_Img);

CurrentImageJigsawMaxRow         = ceil(CurRow/JigsawRowSize);
CurrentImageJigsawMaxCol         = ceil(CurCol/JigsawColSize);
Current_Image_Data_Set.entropy   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Current_Image_Data_Set.contrast  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Current_Image_Data_Set.ASM       = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Current_Image_Data_Set.IDM       = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Current_Image_Data_Set.mean      = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Current_Image_Data_Set.numPixels = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= CurRow )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= CurCol )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        entropy = double(0);
        contrast = double(0);
        ASM = double(0);
        IDM = double(0);
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= CurRow && col <= CurCol
                    contrast = double(contrast + double(((row-col)^2) * Current_Img(row, col)));
                    entropy = double(entropy + (double(Current_Img(row,col)) * log(double(Current_Img(row,col)))));
                    ASM = double(ASM + double((Current_Img(row,col)^2)));
                    IDM = double((1/double(1+((row-col)^2)))*double(Current_Img(row, col)));
                    sum = uint32( sum + uint32(Current_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        if(isnan(entropy))
            entropy = 0;
        end
        
        Current_Image_Data_Set.IDM(JigsawRowCount,JigsawColCount) = IDM;
        Current_Image_Data_Set.ASM(JigsawRowCount,JigsawColCount) = ASM;
        Current_Image_Data_Set.contrast(JigsawRowCount,JigsawColCount) = contrast;
        Current_Image_Data_Set.entropy(JigsawRowCount,JigsawColCount) = entropy;
        mean = double(double(sum)/NumPixels);
        Current_Image_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        Current_Image_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end