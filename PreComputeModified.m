% Compute the data set for DB_1
%DB_Data_Set;

L = [ 1 4 6 4 1 ];
E = [ -1 -2 0 2 1 ];
S = [ -1 0 2 0 -1 ];
R = [ 1 -4 6 -4 1 ]; 

F1 = L'*E;
F2 = L'*R;
F3 = E'*S;
F4 = S'*S;
F5 = S'*R;
F6 = R'*R;
F7 = L'*S;
F8 = E'*E;
F9 = E'*R;

for i = 1:DB_IMAGE_COUNT
    
    DB_Img = imread(strcat('DB_',int2str(i),'.gif'));
    DB_Img = preProcessImage(DB_Img);
    [DbRow,DbCol] = size(DB_Img);

    JigsawMaxRowCount     = ceil(DbRow/JigsawRowSize);
    JigsawMaxColCount     = ceil(DbCol/JigsawColSize);
    DB_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
    DB_Data_Set.entropy   = zeros(JigsawMaxRowCount,JigsawMaxColCount);
    DB_Data_Set.contrast  = zeros(JigsawMaxRowCount,JigsawMaxColCount);
    DB_Data_Set.ASM       = zeros(JigsawMaxRowCount,JigsawMaxColCount);
    DB_Data_Set.IDM       = zeros(JigsawMaxRowCount,JigsawMaxColCount);
    DB_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

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
    while ( ImgRow <= DbRow )
        ImgCol = 1;
        JigsawColCount = 1;

        while ( ImgCol <= DbCol )
            % Common Code to Compute the Parameters [ RMS, SD, etc ..]
            % Per Jigsaw basis
            mean = double(0);
            entropy = double(0);
            contrast = double(0);
            ASM = double(0);
            IDM = double(0);
            sum = uint32(0);
            NumPixels = 0;
            
            row = ImgRow;
            while ( row < ( ImgRow + JigsawRowSize ) )
                col = ImgCol;
                while ( col < ( ImgCol + JigsawColSize ) )

                    if row <= DbRow && col <= DbCol
                        contrast = double(contrast + double(((row-col)^2) * DB_Img(row, col)));
                        entropy = double(entropy + (double(DB_Img(row,col)) * log(double(DB_Img(row,col)))));
                        ASM = double(ASM + double((DB_Img(row,col)^2)));
                        IDM = double((1/double(1+((row-col)^2)))*double(DB_Img(row, col)));
                        sum = uint32( sum + uint32(DB_Img(row,col)) );
                        modRow = mod(row,5);
                        modCol= mod(col,5);
                        if modRow == 0
                            modRow=5;
                        end
                        if modCol == 0
                            modCol=5;
                        end
                        if row == 56 && col == 100
                            row
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

            mean = double(double(sum)/NumPixels);
            if(isnan(entropy))
                entropy = 0;
            end
            
            %subMatrix = DB_Img(ImgRow: ImgRow+JigsawRowSize, ImgCol : ImgCol+JigsawColSize);
            
            
            DB_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
            DB_Data_Set.entropy(JigsawRowCount,JigsawColCount) = entropy;
            DB_Data_Set.contrast(JigsawRowCount,JigsawColCount) = contrast;
            DB_Data_Set.ASM(JigsawRowCount,JigsawColCount) = ASM;
            DB_Data_Set.IDM(JigsawRowCount,JigsawColCount) = IDM;
            DB_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;

            ImgCol = ( ImgCol + JigsawColSize );
            JigsawColCount = ( JigsawColCount + 1 );
        end

        ImgRow = ( ImgRow + JigsawRowSize );
        JigsawRowCount = ( JigsawRowCount + 1 );
    end
    DB_Data_Sets(i) = DB_Data_Set; 
end