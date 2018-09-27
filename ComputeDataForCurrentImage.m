
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
Current_Image_Data_Set.TF1 = zeros(JigsawMaxRowCount,JigsawMaxColCount);
Current_Image_Data_Set.TF2 = zeros(JigsawMaxRowCount,JigsawMaxColCount);
Current_Image_Data_Set.TF3 = zeros(JigsawMaxRowCount,JigsawMaxColCount);
Current_Image_Data_Set.TF4 = zeros(JigsawMaxRowCount,JigsawMaxColCount);
Current_Image_Data_Set.TF5 = zeros(JigsawMaxRowCount,JigsawMaxColCount);
Current_Image_Data_Set.TF6 = zeros(JigsawMaxRowCount,JigsawMaxColCount);
Current_Image_Data_Set.TF7 = zeros(JigsawMaxRowCount,JigsawMaxColCount);
Current_Image_Data_Set.TF8 = zeros(JigsawMaxRowCount,JigsawMaxColCount);
Current_Image_Data_Set.TF9 = zeros(JigsawMaxRowCount,JigsawMaxColCount);

TF1 = double(0);
TF2 = double(0);
TF3 = double(0);
TF4 = double(0);
TF5 = double(0);
TF6 = double(0);
TF7 = double(0);
TF8 = double(0);
TF9 = double(0);

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
                    modRow = mod(row,5);
                    modCol= mod(col,5);
                    if modRow == 0
                        modRow=5;
                    end
                    if modCol == 0
                        modCol=5;
                    end

                    TF1 = double(TF1 + double(DB_Img(row, col)* F1(modRow,modCol)));
                    TF2 = double(TF2 + double(DB_Img(row, col)* F2(modRow,modCol)));
                    TF3 = double(TF3 + double(DB_Img(row, col)* F3(modRow,modCol)));
                    TF4 = double(TF4 + double(DB_Img(row, col)* F4(modRow,modCol)));
                    TF5 = double(TF5 + double(DB_Img(row, col)* F5(modRow,modCol)));
                    TF6 = double(TF6 + double(DB_Img(row, col)* F6(modRow,modCol)));
                    TF7 = double(TF7 + double(DB_Img(row, col)* F7(modRow,modCol)));
                    TF8 = double(TF8 + double(DB_Img(row, col)* F8(modRow,modCol)));
                    TF9 = double(TF9 + double(DB_Img(row, col)* F9(modRow,modCol)));
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
        Current_Image_Data_Set.TF1(JigsawRowCount,JigsawColCount) = TF1;
        Current_Image_Data_Set.TF2(JigsawRowCount,JigsawColCount) = TF2;
        Current_Image_Data_Set.TF3(JigsawRowCount,JigsawColCount) = TF3;
        Current_Image_Data_Set.TF4(JigsawRowCount,JigsawColCount) = TF4;
        Current_Image_Data_Set.TF5(JigsawRowCount,JigsawColCount) = TF5;
        Current_Image_Data_Set.TF6(JigsawRowCount,JigsawColCount) = TF6;
        Current_Image_Data_Set.TF7(JigsawRowCount,JigsawColCount) = TF7;
        Current_Image_Data_Set.TF8(JigsawRowCount,JigsawColCount) = TF8;
        Current_Image_Data_Set.TF9(JigsawRowCount,JigsawColCount) = TF9;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end