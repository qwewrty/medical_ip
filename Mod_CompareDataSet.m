for i = 1:20
    DB_Data_Sets(i).meanDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    DB_Data_Sets(i).entropyDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    DB_Data_Sets(i).contrastDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).meanFactor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).entropyFactor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).contrastFactor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).ASMFactor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).IDMFactor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).TotalImageFactor   = double(0);
    Comparison_Factor(i).ImgPath   = strcat('DB_',int2str(i),'.gif');
    Comparison_Factor(i).ImgName   = strcat('DB-',int2str(i),' Image');
end

JigsawRow = 1;

while ( JigsawRow <= CurrentImageJigsawMaxRow )
    JigsawCol = 1;
    
    while ( JigsawCol <= CurrentImageJigsawMaxCol )
        
        if ( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) ~= 0 )
            
            for i = 1:20
                DB_Data_Sets(i).meanDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.mean(JigsawRow,JigsawCol) - DB_Data_Sets(i).mean(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).meanDiff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).meanDiff(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).entropyDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.entropy(JigsawRow,JigsawCol) - DB_Data_Sets(i).entropy(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).entropyDiff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).entropyDiff(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).contrastDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.contrast(JigsawRow,JigsawCol) - DB_Data_Sets(i).contrast(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).contrastDiff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).contrastDiff(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).ASMDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.ASM(JigsawRow,JigsawCol) - DB_Data_Sets(i).ASM(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).ASMDiff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).ASMDiff(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).IDMDiff(JigsawRow,JigsawCol) = double( Current_Image_Data_Set.IDM(JigsawRow,JigsawCol) - DB_Data_Sets(i).IDM(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).IDMDiff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).IDMDiff(JigsawRow,JigsawCol) );
            end
        
             %%%%%%%%%%%%%%%%%% Compute the Closeness Factors %%%%%%%%%%%%%%%%%%
            % Compute Closeness factor for Mean Diff Values
            SUM = double(0);
            E_SUM = double(0);
            contrast_SUM = double(0);
            ASM_SUM = double(0);
            IDM_SUM = double(0);
            for i = 1:20
                SUM = double(SUM + DB_Data_Sets(i).meanDiff(JigsawRow,JigsawCol));
                E_SUM = double(E_SUM + DB_Data_Sets(i).entropyDiff(JigsawRow,JigsawCol));
                contrast_SUM = double(contrast_SUM + DB_Data_Sets(i).contrastDiff(JigsawRow,JigsawCol));
                ASM_SUM = double(ASM_SUM + DB_Data_Sets(i).ASMDiff(JigsawRow,JigsawCol));
                IDM_SUM = double(IDM_SUM + DB_Data_Sets(i).IDMDiff(JigsawRow,JigsawCol));
            end
            %SUM = double ( DB_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB2_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB3_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB4_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB5_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB6_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB7_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB8_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB9_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB10_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB11_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB12_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB13_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB14_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB15_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB16_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB17_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB18_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB19_Data_Set.meanDiff(JigsawRow,JigsawCol) + DB20_Data_Set.meanDiff(JigsawRow,JigsawCol) );
            
            % Wouldn't want to divide by zero. Leading to NAN
            if ( SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).meanFactor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).meanDiff(JigsawRow,JigsawCol) / SUM );
                end
            end
            
            if ( E_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).entropyFactor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).entropyDiff(JigsawRow,JigsawCol) / E_SUM );
                end
            end
            
            if ( contrast_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).contrastFactor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).contrastDiff(JigsawRow,JigsawCol) / contrast_SUM );
                end
            end
            
            if ( ASM_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).ASMFactor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).ASMDiff(JigsawRow,JigsawCol) / ASM_SUM );
                end
            end
            
            if ( IDM_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).IDMFactor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).IDMDiff(JigsawRow,JigsawCol) / IDM_SUM );
                end
            end
            
            for i = 1:20
                % Compute the Overall Closeness Factor over a range of params
                % Comparison_Factor(i).overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).meanFactor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).entropyFactor(JigsawRow,JigsawCol) );
                % Comparison_Factor(i).overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).contrastFactor(JigsawRow,JigsawCol) );
                % Comparison_Factor(i).overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).ASMFactor(JigsawRow,JigsawCol) );
                % Comparison_Factor(i).overallFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).IDMFactor(JigsawRow,JigsawCol) );
                % Computing the complete factor over the entire image
                Comparison_Factor(i).TotalImageFactor  = double( Comparison_Factor(i).TotalImageFactor  + Comparison_Factor(i).overallFactor(JigsawRow,JigsawCol) );
            end
        end
        
        JigsawCol = ( JigsawCol + 1 );
    end
    
    JigsawRow = (JigsawRow + 1 );
end   
                    