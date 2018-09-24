
% Compute the differences between the values computed for the Current Image
% and the values computed for each DB Image

% Data Structures to store the abs( difference values )
DB1_Data_Set.meanDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB2_Data_Set.meanDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB3_Data_Set.meanDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB4_Data_Set.meanDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB5_Data_Set.meanDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB6_Data_Set.meanDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB7_Data_Set.meanDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB8_Data_Set.meanDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB9_Data_Set.meanDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB10_Data_Set.meanDiff   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB11_Data_Set.meanDiff   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB12_Data_Set.meanDiff   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB13_Data_Set.meanDiff   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB14_Data_Set.meanDiff   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB15_Data_Set.meanDiff   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB16_Data_Set.meanDiff   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB17_Data_Set.meanDiff   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB18_Data_Set.meanDiff   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB19_Data_Set.meanDiff   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
DB20_Data_Set.meanDiff   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);

% Data Structures to store the Closeness Factor after comparisons
Comparison_Factor.DB1.meanFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB2.meanFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB3.meanFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB4.meanFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB5.meanFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB6.meanFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB7.meanFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB8.meanFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB9.meanFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB10.meanFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB11.meanFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB12.meanFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB13.meanFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB14.meanFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB15.meanFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB16.meanFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB17.meanFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB18.meanFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB19.meanFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB20.meanFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);

% So On for other params .....

% Data Structure to store the overall closeness factor
Comparison_Factor.DB1.overallFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB2.overallFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB3.overallFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB4.overallFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB5.overallFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB6.overallFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB7.overallFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB8.overallFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB9.overallFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB10.overallFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB11.overallFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB12.overallFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB13.overallFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB14.overallFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB15.overallFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB16.overallFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB17.overallFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB18.overallFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB19.overallFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
Comparison_Factor.DB20.overallFactor  = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);

Comparison_Factor.DB1.TotalImageFactor   = double(0);
Comparison_Factor.DB2.TotalImageFactor   = double(0);
Comparison_Factor.DB3.TotalImageFactor   = double(0);
Comparison_Factor.DB4.TotalImageFactor   = double(0);
Comparison_Factor.DB5.TotalImageFactor   = double(0);
Comparison_Factor.DB6.TotalImageFactor   = double(0);
Comparison_Factor.DB7.TotalImageFactor   = double(0);
Comparison_Factor.DB8.TotalImageFactor   = double(0);
Comparison_Factor.DB9.TotalImageFactor   = double(0);
Comparison_Factor.DB10.TotalImageFactor  = double(0);
Comparison_Factor.DB11.TotalImageFactor  = double(0);
Comparison_Factor.DB12.TotalImageFactor  = double(0);
Comparison_Factor.DB13.TotalImageFactor  = double(0);
Comparison_Factor.DB14.TotalImageFactor  = double(0);
Comparison_Factor.DB15.TotalImageFactor  = double(0);
Comparison_Factor.DB16.TotalImageFactor  = double(0);
Comparison_Factor.DB17.TotalImageFactor  = double(0);
Comparison_Factor.DB18.TotalImageFactor  = double(0);
Comparison_Factor.DB19.TotalImageFactor  = double(0);
Comparison_Factor.DB20.TotalImageFactor  = double(0);

Comparison_Factor.DB1.ImgPath   = 'DB_1.gif';
Comparison_Factor.DB2.ImgPath   = 'DB_2.gif';
Comparison_Factor.DB3.ImgPath   = 'DB_3.gif';
Comparison_Factor.DB4.ImgPath   = 'DB_4.gif';
Comparison_Factor.DB5.ImgPath   = 'DB_5.gif';
Comparison_Factor.DB6.ImgPath   = 'DB_6.gif';
Comparison_Factor.DB7.ImgPath   = 'DB_7.gif';
Comparison_Factor.DB8.ImgPath   = 'DB_8.gif';
Comparison_Factor.DB9.ImgPath   = 'DB_9.gif';
Comparison_Factor.DB10.ImgPath  = 'DB_10.gif';
Comparison_Factor.DB11.ImgPath  = 'DB_11.gif';
Comparison_Factor.DB12.ImgPath  = 'DB_12.gif';
Comparison_Factor.DB13.ImgPath  = 'DB_13.gif';
Comparison_Factor.DB14.ImgPath  = 'DB_14.gif';
Comparison_Factor.DB15.ImgPath  = 'DB_15.gif';
Comparison_Factor.DB16.ImgPath  = 'DB_16.gif';
Comparison_Factor.DB17.ImgPath  = 'DB_17.gif';
Comparison_Factor.DB18.ImgPath  = 'DB_18.gif';
Comparison_Factor.DB19.ImgPath  = 'DB_19.gif';
Comparison_Factor.DB20.ImgPath  = 'DB_20.gif';

Comparison_Factor.DB1.ImgName   = 'DB-1 Image';
Comparison_Factor.DB2.ImgName   = 'DB-2 Image';
Comparison_Factor.DB3.ImgName   = 'DB-3 Image';
Comparison_Factor.DB4.ImgName   = 'DB-4 Image';
Comparison_Factor.DB5.ImgName   = 'DB-5 Image';
Comparison_Factor.DB6.ImgName   = 'DB-6 Image';
Comparison_Factor.DB7.ImgName   = 'DB-7 Image';
Comparison_Factor.DB8.ImgName   = 'DB-8 Image';
Comparison_Factor.DB9.ImgName   = 'DB-9 Image';
Comparison_Factor.DB10.ImgName  = 'DB-10 Image';
Comparison_Factor.DB11.ImgName  = 'DB-11 Image';
Comparison_Factor.DB12.ImgName  = 'DB-12 Image';
Comparison_Factor.DB13.ImgName  = 'DB-13 Image';
Comparison_Factor.DB14.ImgName  = 'DB-14 Image';
Comparison_Factor.DB15.ImgName  = 'DB-15 Image';
Comparison_Factor.DB16.ImgName  = 'DB-16 Image';
Comparison_Factor.DB17.ImgName  = 'DB-17 Image';
Comparison_Factor.DB18.ImgName  = 'DB-18 Image';
Comparison_Factor.DB19.ImgName  = 'DB-19 Image';
Comparison_Factor.DB20.ImgName  = 'DB-20 Image';


JigsawRow = 1;

while ( JigsawRow <= CurrentImageJigsawMaxRow )
    JigsawCol = 1;
    
    while ( JigsawCol <= CurrentImageJigsawMaxCol )
        
        if ( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) ~= 0 )
            
            % Compute the differences between Current Image & DB-1
            DB1_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB1_Data_Set.mean(JigsawRow,JigsawCol) );
            DB1_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB1_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-2
            DB2_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB2_Data_Set.mean(JigsawRow,JigsawCol) );
            DB2_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB2_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-3
            DB3_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB3_Data_Set.mean(JigsawRow,JigsawCol) );
            DB3_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB3_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-4
            DB4_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB4_Data_Set.mean(JigsawRow,JigsawCol) );
            DB4_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB4_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-5
            DB5_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB5_Data_Set.mean(JigsawRow,JigsawCol) );
            DB5_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB5_Data_Set.meanDiff(JigsawRow,JigsawCol) );
            
            % Compute the differences between Current Image & DB-6
            DB6_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB6_Data_Set.mean(JigsawRow,JigsawCol) );
            DB6_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB6_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-7
            DB7_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB7_Data_Set.mean(JigsawRow,JigsawCol) );
            DB7_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB7_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-8
            DB8_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB8_Data_Set.mean(JigsawRow,JigsawCol) );
            DB8_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB8_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-9
            DB9_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB9_Data_Set.mean(JigsawRow,JigsawCol) );
            DB9_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB9_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-10
            DB10_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB10_Data_Set.mean(JigsawRow,JigsawCol) );
            DB10_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB10_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-11
            DB11_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB11_Data_Set.mean(JigsawRow,JigsawCol) );
            DB11_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB11_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-12
            DB12_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB12_Data_Set.mean(JigsawRow,JigsawCol) );
            DB12_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB12_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-13
            DB13_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB13_Data_Set.mean(JigsawRow,JigsawCol) );
            DB13_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB13_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-14
            DB14_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB14_Data_Set.mean(JigsawRow,JigsawCol) );
            DB14_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB14_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-15
            DB15_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB15_Data_Set.mean(JigsawRow,JigsawCol) );
            DB15_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB15_Data_Set.meanDiff(JigsawRow,JigsawCol) );
            
            % Compute the differences between Current Image & DB-16
            DB16_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB16_Data_Set.mean(JigsawRow,JigsawCol) );
            DB16_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB16_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-17
            DB17_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB17_Data_Set.mean(JigsawRow,JigsawCol) );
            DB17_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB17_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-18
            DB18_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB18_Data_Set.mean(JigsawRow,JigsawCol) );
            DB18_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB18_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-19
            DB19_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB19_Data_Set.mean(JigsawRow,JigsawCol) );
            DB19_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB19_Data_Set.meanDiff(JigsawRow,JigsawCol) );
        
            % Compute the differences between Current Image & DB-20
            DB20_Data_Set.meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB20_Data_Set.mean(JigsawRow,JigsawCol) );
            DB20_Data_Set.meanDiff(JigsawRow,JigsawCol) = abs( DB20_Data_Set.meanDiff(JigsawRow,JigsawCol) );
            
            
            
        
            %%%%%%%%%%%%%%%%%% Compute the Closeness Factors %%%%%%%%%%%%%%%%%%
            % Compute Closeness factor for Mean Diff Values
            SUM = double(0);
            SUM = double ( DB1_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB2_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB3_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB4_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB5_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB6_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB7_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB8_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB9_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB10_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB11_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB12_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB13_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB14_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB15_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB16_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB17_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB18_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB19_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB20_Data_Set.meanDiff(JigsawRow,JigsawCol) );
            
            % Wouldn't want to divide by zero. Leading to NAN
            if ( SUM ~= 0 )
                Comparison_Factor.DB1.meanFactor(JigsawRow,JigsawCol)  = double ( DB1_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB2.meanFactor(JigsawRow,JigsawCol)  = double ( DB2_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB3.meanFactor(JigsawRow,JigsawCol)  = double ( DB3_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB4.meanFactor(JigsawRow,JigsawCol)  = double ( DB4_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB5.meanFactor(JigsawRow,JigsawCol)  = double ( DB5_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB6.meanFactor(JigsawRow,JigsawCol)  = double ( DB6_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB7.meanFactor(JigsawRow,JigsawCol)  = double ( DB7_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB8.meanFactor(JigsawRow,JigsawCol)  = double ( DB8_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB9.meanFactor(JigsawRow,JigsawCol)  = double ( DB9_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB10.meanFactor(JigsawRow,JigsawCol) = double ( DB10_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB11.meanFactor(JigsawRow,JigsawCol) = double ( DB11_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB12.meanFactor(JigsawRow,JigsawCol) = double ( DB12_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB13.meanFactor(JigsawRow,JigsawCol) = double ( DB13_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB14.meanFactor(JigsawRow,JigsawCol) = double ( DB14_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB15.meanFactor(JigsawRow,JigsawCol) = double ( DB15_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB16.meanFactor(JigsawRow,JigsawCol) = double ( DB16_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB17.meanFactor(JigsawRow,JigsawCol) = double ( DB17_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB18.meanFactor(JigsawRow,JigsawCol) = double ( DB18_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB19.meanFactor(JigsawRow,JigsawCol) = double ( DB19_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
                Comparison_Factor.DB20.meanFactor(JigsawRow,JigsawCol) = double ( DB20_Data_Set.meanDiff(JigsawRow,JigsawCol) / SUM );
            end
            
            % Compute the Overall Closeness Factor over a range of params
            Comparison_Factor.DB1.overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor.DB1.meanFactor(JigsawRow,JigsawCol) ); % Do + other factors here
            Comparison_Factor.DB2.overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor.DB2.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB3.overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor.DB3.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB4.overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor.DB4.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB5.overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor.DB5.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB6.overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor.DB6.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB7.overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor.DB7.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB8.overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor.DB8.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB9.overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor.DB9.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB10.overallFactor(JigsawRow,JigsawCol) = double ( Comparison_Factor.DB10.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB11.overallFactor(JigsawRow,JigsawCol) = double ( Comparison_Factor.DB11.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB12.overallFactor(JigsawRow,JigsawCol) = double ( Comparison_Factor.DB12.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB13.overallFactor(JigsawRow,JigsawCol) = double ( Comparison_Factor.DB13.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB14.overallFactor(JigsawRow,JigsawCol) = double ( Comparison_Factor.DB14.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB15.overallFactor(JigsawRow,JigsawCol) = double ( Comparison_Factor.DB15.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB16.overallFactor(JigsawRow,JigsawCol) = double ( Comparison_Factor.DB16.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB17.overallFactor(JigsawRow,JigsawCol) = double ( Comparison_Factor.DB17.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB18.overallFactor(JigsawRow,JigsawCol) = double ( Comparison_Factor.DB18.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB19.overallFactor(JigsawRow,JigsawCol) = double ( Comparison_Factor.DB19.meanFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB20.overallFactor(JigsawRow,JigsawCol) = double ( Comparison_Factor.DB20.meanFactor(JigsawRow,JigsawCol) );
            
            % Computing the complete factor over the entire image
            Comparison_Factor.DB1.TotalImageFactor  = double( Comparison_Factor.DB1.TotalImageFactor  + Comparison_Factor.DB1.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB2.TotalImageFactor  = double( Comparison_Factor.DB2.TotalImageFactor  + Comparison_Factor.DB2.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB3.TotalImageFactor  = double( Comparison_Factor.DB3.TotalImageFactor  + Comparison_Factor.DB3.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB4.TotalImageFactor  = double( Comparison_Factor.DB4.TotalImageFactor  + Comparison_Factor.DB4.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB5.TotalImageFactor  = double( Comparison_Factor.DB5.TotalImageFactor  + Comparison_Factor.DB5.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB6.TotalImageFactor  = double( Comparison_Factor.DB6.TotalImageFactor  + Comparison_Factor.DB6.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB7.TotalImageFactor  = double( Comparison_Factor.DB7.TotalImageFactor  + Comparison_Factor.DB7.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB8.TotalImageFactor  = double( Comparison_Factor.DB8.TotalImageFactor  + Comparison_Factor.DB8.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB9.TotalImageFactor  = double( Comparison_Factor.DB9.TotalImageFactor  + Comparison_Factor.DB9.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB10.TotalImageFactor = double( Comparison_Factor.DB10.TotalImageFactor + Comparison_Factor.DB10.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB11.TotalImageFactor = double( Comparison_Factor.DB11.TotalImageFactor + Comparison_Factor.DB11.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB12.TotalImageFactor = double( Comparison_Factor.DB12.TotalImageFactor + Comparison_Factor.DB12.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB13.TotalImageFactor = double( Comparison_Factor.DB13.TotalImageFactor + Comparison_Factor.DB13.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB14.TotalImageFactor = double( Comparison_Factor.DB14.TotalImageFactor + Comparison_Factor.DB14.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB15.TotalImageFactor = double( Comparison_Factor.DB15.TotalImageFactor + Comparison_Factor.DB15.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB16.TotalImageFactor = double( Comparison_Factor.DB16.TotalImageFactor + Comparison_Factor.DB16.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB17.TotalImageFactor = double( Comparison_Factor.DB17.TotalImageFactor + Comparison_Factor.DB17.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB18.TotalImageFactor = double( Comparison_Factor.DB18.TotalImageFactor + Comparison_Factor.DB18.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB19.TotalImageFactor = double( Comparison_Factor.DB19.TotalImageFactor + Comparison_Factor.DB19.overallFactor(JigsawRow,JigsawCol) );
            Comparison_Factor.DB20.TotalImageFactor = double( Comparison_Factor.DB20.TotalImageFactor + Comparison_Factor.DB20.overallFactor(JigsawRow,JigsawCol) );
            
        end
        
        JigsawCol = ( JigsawCol + 1 );
    end
    
    JigsawRow = (JigsawRow + 1 );
end