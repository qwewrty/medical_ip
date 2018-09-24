
% Compute the data set for DB_1
DB1_Img         = imread('DB_1.gif');
[Db1Row,Db1Col] = size(DB1_Img);

JigsawMaxRowCount      = ceil(Db1Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db1Col/JigsawColSize);
DB1_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB1_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db1Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db1Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db1Row && col <= Db1Col
                    sum = uint32( sum + uint32(DB1_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB1_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB1_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_2
DB2_Img = imread('DB_2.gif');
[Db2Row,Db2Col] = size(DB2_Img);

JigsawMaxRowCount      = ceil(Db2Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db2Col/JigsawColSize);
DB2_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB2_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db2Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db2Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db2Row && col <= Db2Col
                    sum = uint32( sum + uint32(DB2_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB2_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB2_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_3
DB3_Img = imread('DB_3.gif');
[Db3Row,Db3Col] = size(DB3_Img);

JigsawMaxRowCount      = ceil(Db3Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db3Col/JigsawColSize);
DB3_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB3_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db3Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db3Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db3Row && col <= Db3Col
                    sum = uint32( sum + uint32(DB3_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB3_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB3_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_4
DB4_Img = imread('DB_4.gif');
[Db4Row,Db4Col] = size(DB4_Img);

JigsawMaxRowCount      = ceil(Db4Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db4Col/JigsawColSize);
DB4_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB4_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db4Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db4Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db4Row && col <= Db4Col
                    sum = uint32( sum + uint32(DB4_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB4_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB4_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_5
DB5_Img = imread('DB_5.gif');
[Db5Row,Db5Col] = size(DB5_Img);

JigsawMaxRowCount      = ceil(Db5Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db5Col/JigsawColSize);
DB5_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB5_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db5Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db5Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db5Row && col <= Db5Col
                    sum = uint32( sum + uint32(DB5_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB5_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB5_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_6
DB6_Img         = imread('DB_6.gif');
[Db6Row,Db6Col] = size(DB6_Img);

JigsawMaxRowCount      = ceil(Db6Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db6Col/JigsawColSize);
DB6_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB6_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db6Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db6Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db6Row && col <= Db6Col
                    sum = uint32( sum + uint32(DB6_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB6_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB6_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_7
DB7_Img         = imread('DB_7.gif');
[Db7Row,Db7Col] = size(DB7_Img);

JigsawMaxRowCount      = ceil(Db7Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db7Col/JigsawColSize);
DB7_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB7_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db7Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db7Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db7Row && col <= Db7Col
                    sum = uint32( sum + uint32(DB7_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB7_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB7_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_8
DB8_Img         = imread('DB_8.gif');
[Db8Row,Db8Col] = size(DB8_Img);

JigsawMaxRowCount      = ceil(Db8Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db8Col/JigsawColSize);
DB8_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB8_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db8Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db8Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db8Row && col <= Db8Col
                    sum = uint32( sum + uint32(DB8_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB8_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB8_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_9
DB9_Img         = imread('DB_9.gif');
[Db9Row,Db9Col] = size(DB9_Img);

JigsawMaxRowCount      = ceil(Db9Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db9Col/JigsawColSize);
DB9_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB9_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db9Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db9Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db9Row && col <= Db9Col
                    sum = uint32( sum + uint32(DB9_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB9_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB9_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_10
DB10_Img         = imread('DB_10.gif');
[Db10Row,Db10Col] = size(DB10_Img);

JigsawMaxRowCount      = ceil(Db10Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db10Col/JigsawColSize);
DB10_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB10_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db10Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db10Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db10Row && col <= Db10Col
                    sum = uint32( sum + uint32(DB10_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB10_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB10_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_11
DB11_Img         = imread('DB_11.gif');
[Db11Row,Db11Col] = size(DB11_Img);

JigsawMaxRowCount      = ceil(Db11Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db11Col/JigsawColSize);
DB11_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB11_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db11Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db11Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db11Row && col <= Db11Col
                    sum = uint32( sum + uint32(DB11_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB11_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB11_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end



% Compute the data set for DB_12
DB12_Img         = imread('DB_12.gif');
[Db12Row,Db12Col] = size(DB12_Img);

JigsawMaxRowCount      = ceil(Db12Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db12Col/JigsawColSize);
DB12_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB12_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db12Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db12Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db12Row && col <= Db12Col
                    sum = uint32( sum + uint32(DB12_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB12_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB12_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end



% Compute the data set for DB_13
DB13_Img         = imread('DB_13.gif');
[Db13Row,Db13Col] = size(DB13_Img);

JigsawMaxRowCount      = ceil(Db13Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db13Col/JigsawColSize);
DB13_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB13_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db13Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db13Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db13Row && col <= Db13Col
                    sum = uint32( sum + uint32(DB13_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB13_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB13_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_14
DB14_Img         = imread('DB_14.gif');
[Db14Row,Db14Col] = size(DB14_Img);

JigsawMaxRowCount      = ceil(Db14Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db14Col/JigsawColSize);
DB14_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB14_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db14Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db14Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db14Row && col <= Db14Col
                    sum = uint32( sum + uint32(DB14_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB14_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB14_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_15
DB15_Img         = imread('DB_15.gif');
[Db15Row,Db15Col] = size(DB15_Img);

JigsawMaxRowCount      = ceil(Db15Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db15Col/JigsawColSize);
DB15_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB15_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db15Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db15Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db15Row && col <= Db15Col
                    sum = uint32( sum + uint32(DB15_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB15_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB15_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_16
DB16_Img         = imread('DB_16.gif');
[Db16Row,Db16Col] = size(DB16_Img);

JigsawMaxRowCount      = ceil(Db16Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db16Col/JigsawColSize);
DB16_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB16_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db16Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db16Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db16Row && col <= Db16Col
                    sum = uint32( sum + uint32(DB16_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB16_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB16_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_17
DB17_Img         = imread('DB_17.gif');
[Db17Row,Db17Col] = size(DB17_Img);

JigsawMaxRowCount      = ceil(Db17Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db17Col/JigsawColSize);
DB17_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB17_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db17Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db17Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db17Row && col <= Db17Col
                    sum = uint32( sum + uint32(DB17_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB17_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB17_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_18
DB18_Img         = imread('DB_18.gif');
[Db18Row,Db18Col] = size(DB18_Img);

JigsawMaxRowCount      = ceil(Db18Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db18Col/JigsawColSize);
DB18_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB18_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db18Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db18Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db18Row && col <= Db18Col
                    sum = uint32( sum + uint32(DB18_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB18_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB18_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_19
DB19_Img         = imread('DB_19.gif');
[Db19Row,Db19Col] = size(DB19_Img);

JigsawMaxRowCount      = ceil(Db19Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db19Col/JigsawColSize);
DB19_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB19_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db19Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db19Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db19Row && col <= Db19Col
                    sum = uint32( sum + uint32(DB19_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB19_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB19_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end


% Compute the data set for DB_20
DB20_Img         = imread('DB_20.gif');
[Db20Row,Db20Col] = size(DB20_Img);

JigsawMaxRowCount      = ceil(Db20Row/JigsawRowSize);
JigsawMaxColCount      = ceil(Db20Col/JigsawColSize);
DB20_Data_Set.mean      = zeros(JigsawMaxRowCount,JigsawMaxColCount);
DB20_Data_Set.numPixels = zeros(JigsawMaxRowCount,JigsawMaxColCount);

ImgRow = 1;
JigsawRowCount = 1;
while ( ImgRow <= Db20Row )
    ImgCol = 1;
    JigsawColCount = 1;
    
    while ( ImgCol <= Db20Col )
        % Common Code to Compute the Parameters [ RMS, SD, etc ..]
        % Per Jigsaw basis
        mean = double(0);
        sum = uint32(0);
        NumPixels = 0;
        
        row = ImgRow;
        while ( row < ( ImgRow + JigsawRowSize ) )
            col = ImgCol;
            while ( col < ( ImgCol + JigsawColSize ) )
                
                if row <= Db20Row && col <= Db20Col
                    sum = uint32( sum + uint32(DB20_Img(row,col)) );
                    NumPixels = ( NumPixels + 1 );
                end
                
                col = ( col + 1 );
            end
            row = ( row + 1 );
        end
        
        mean = double(double(sum)/NumPixels);
        DB20_Data_Set.mean(JigsawRowCount,JigsawColCount) = mean;
        DB20_Data_Set.numPixels(JigsawRowCount,JigsawColCount) = NumPixels;
        
        ImgCol = ( ImgCol + JigsawColSize );
        JigsawColCount = ( JigsawColCount + 1 );
    end
    
    ImgRow = ( ImgRow + JigsawRowSize );
    JigsawRowCount = ( JigsawRowCount + 1 );
end