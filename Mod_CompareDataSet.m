for i = 1:20
    DB_Data_Sets(i).meanDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    DB_Data_Sets(i).entropyDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    DB_Data_Sets(i).contrastDiff    = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).meanFactor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).entropyFactor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).contrastFactor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).ASMFactor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).IDMFactor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).TF1Factor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxRow);
    Comparison_Factor(i).TF2Factor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).TF3Factor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).TF4Factor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).TF5Factor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).TF6Factor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).TF7Factor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).TF8Factor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).TF9Factor = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    
    Comparison_Factor(i).overallMeanFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallEntropyFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallContrastFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallASMFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallIDMFactor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallTF1Factor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallTF2Factor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallTF3Factor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallTF4Factor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallTF5Factor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallTF6Factor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallTF7Factor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallTF8Factor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    Comparison_Factor(i).overallTF9Factor   = zeros(CurrentImageJigsawMaxRow,CurrentImageJigsawMaxCol);
    
    Comparison_Factor(i).TotalImageMeanFactor   = double(0);
    Comparison_Factor(i).TotalImageEntropyFactor   = double(0);
    Comparison_Factor(i).TotalImageContrastFactor   = double(0);
    Comparison_Factor(i).TotalImageASMFactor   = double(0);
    Comparison_Factor(i).TotalImageIDMFactor   = double(0);
    Comparison_Factor(i).TotalImageTF1Factor   = double(0);
    Comparison_Factor(i).TotalImageTF2Factor   = double(0);
    Comparison_Factor(i).TotalImageTF3Factor   = double(0);
    Comparison_Factor(i).TotalImageTF4Factor   = double(0);
    Comparison_Factor(i).TotalImageTF5Factor   = double(0);
    Comparison_Factor(i).TotalImageTF6Factor   = double(0);
    Comparison_Factor(i).TotalImageTF7Factor   = double(0);
    Comparison_Factor(i).TotalImageTF8Factor   = double(0);
    Comparison_Factor(i).TotalImageTF9Factor   = double(0);
    
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
                
                DB_Data_Sets(i).TF1Diff(JigsawRow, JigsawCol) = double( Current_Image_Data_Set.TF1(JigsawRow,JigsawCol) - DB_Data_Sets(i).TF1(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).TF1Diff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).TF1Diff(JigsawRow,JigsawCol) );
                
                DB_Data_Sets(i).TF2Diff(JigsawRow, JigsawCol) = double( Current_Image_Data_Set.TF2(JigsawRow,JigsawCol) - DB_Data_Sets(i).TF2(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).TF2Diff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).TF2Diff(JigsawRow,JigsawCol) );
                
                DB_Data_Sets(i).TF3Diff(JigsawRow, JigsawCol) = double( Current_Image_Data_Set.TF3(JigsawRow,JigsawCol) - DB_Data_Sets(i).TF3(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).TF3Diff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).TF3Diff(JigsawRow,JigsawCol) );
                
                DB_Data_Sets(i).TF4Diff(JigsawRow, JigsawCol) = double( Current_Image_Data_Set.TF4(JigsawRow,JigsawCol) - DB_Data_Sets(i).TF4(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).TF4Diff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).TF4Diff(JigsawRow,JigsawCol) );
                
                DB_Data_Sets(i).TF5Diff(JigsawRow, JigsawCol) = double( Current_Image_Data_Set.TF5(JigsawRow,JigsawCol) - DB_Data_Sets(i).TF5(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).TF5Diff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).TF5Diff(JigsawRow,JigsawCol) );
                
                DB_Data_Sets(i).TF6Diff(JigsawRow, JigsawCol) = double( Current_Image_Data_Set.TF6(JigsawRow,JigsawCol) - DB_Data_Sets(i).TF6(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).TF6Diff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).TF6Diff(JigsawRow,JigsawCol) );
                
                DB_Data_Sets(i).TF7Diff(JigsawRow, JigsawCol) = double( Current_Image_Data_Set.TF7(JigsawRow,JigsawCol) - DB_Data_Sets(i).TF7(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).TF7Diff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).TF7Diff(JigsawRow,JigsawCol) );
                
                DB_Data_Sets(i).TF8Diff(JigsawRow, JigsawCol) = double( Current_Image_Data_Set.TF8(JigsawRow,JigsawCol) - DB_Data_Sets(i).TF8(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).TF8Diff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).TF8Diff(JigsawRow,JigsawCol) );
                
                DB_Data_Sets(i).TF9Diff(JigsawRow, JigsawCol) = double( Current_Image_Data_Set.TF9(JigsawRow,JigsawCol) - DB_Data_Sets(i).TF9(JigsawRow,JigsawCol) );
                DB_Data_Sets(i).TF9Diff(JigsawRow,JigsawCol) = abs( DB_Data_Sets(i).TF9Diff(JigsawRow,JigsawCol) );
                
            end
        
             %%%%%%%%%%%%%%%%%% Compute the Closeness Factors %%%%%%%%%%%%%%%%%%
            % Compute Closeness factor for Mean Diff Values
            SUM = double(0);
            E_SUM = double(0);
            contrast_SUM = double(0);
            ASM_SUM = double(0);
            IDM_SUM = double(0);
            TF1_SUM = double(0);
            TF2_SUM = double(0);
            TF3_SUM = double(0);
            TF4_SUM = double(0);
            TF5_SUM = double(0);
            TF6_SUM = double(0);
            TF7_SUM = double(0);
            TF8_SUM = double(0);
            TF9_SUM = double(0);
            for i = 1:20
                SUM = double(SUM + DB_Data_Sets(i).meanDiff(JigsawRow,JigsawCol));
                E_SUM = double(E_SUM + DB_Data_Sets(i).entropyDiff(JigsawRow,JigsawCol));
                contrast_SUM = double(contrast_SUM + DB_Data_Sets(i).contrastDiff(JigsawRow,JigsawCol));
                ASM_SUM = double(ASM_SUM + DB_Data_Sets(i).ASMDiff(JigsawRow,JigsawCol));
                IDM_SUM = double(IDM_SUM + DB_Data_Sets(i).IDMDiff(JigsawRow,JigsawCol));
                TF1_SUM = double(TF1_SUM + DB_Data_Sets(i).TF1Diff(JigsawRow, JigsawCol));
                TF2_SUM = double(TF2_SUM + DB_Data_Sets(i).TF1Diff(JigsawRow, JigsawCol));
                TF3_SUM = double(TF3_SUM + DB_Data_Sets(i).TF1Diff(JigsawRow, JigsawCol));
                TF4_SUM = double(TF4_SUM + DB_Data_Sets(i).TF1Diff(JigsawRow, JigsawCol));
                TF5_SUM = double(TF5_SUM + DB_Data_Sets(i).TF1Diff(JigsawRow, JigsawCol));
                TF6_SUM = double(TF6_SUM + DB_Data_Sets(i).TF1Diff(JigsawRow, JigsawCol));
                TF7_SUM = double(TF7_SUM + DB_Data_Sets(i).TF1Diff(JigsawRow, JigsawCol));
                TF8_SUM = double(TF8_SUM + DB_Data_Sets(i).TF1Diff(JigsawRow, JigsawCol));
                TF9_SUM = double(TF9_SUM + DB_Data_Sets(i).TF1Diff(JigsawRow, JigsawCol));
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
           
            
            if ( TF1_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).TF1Factor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).TF1Diff(JigsawRow,JigsawCol) / TF1_SUM );
                end
            end
            
            if ( TF2_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).TF2Factor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).TF2Diff(JigsawRow,JigsawCol) / TF2_SUM );
                end
            end
            
            if ( TF3_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).TF3Factor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).TF3Diff(JigsawRow,JigsawCol) / TF3_SUM );
                end
            end
            
            if ( TF4_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).TF4Factor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).TF4Diff(JigsawRow,JigsawCol) / TF4_SUM );
                end
            end
            
            if ( TF5_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).TF5Factor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).TF5Diff(JigsawRow,JigsawCol) / TF5_SUM );
                end
            end
            
            if ( TF6_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).TF6Factor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).TF6Diff(JigsawRow,JigsawCol) / TF6_SUM );
                end
            end
            
            if ( TF7_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).TF7Factor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).TF7Diff(JigsawRow,JigsawCol) / TF7_SUM );
                end
            end
            
            if ( TF8_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).TF8Factor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).TF8Diff(JigsawRow,JigsawCol) / TF8_SUM );
                end
            end
            
            if ( TF9_SUM ~= 0 )
                for i = 1:20
                    Comparison_Factor(i).TF9Factor(JigsawRow,JigsawCol)  = double ( DB_Data_Sets(i).TF9Diff(JigsawRow,JigsawCol) / TF9_SUM );
                end
            end
            
            for i = 1:20
                % Compute the Overall Closeness Factor over a range of params
                Comparison_Factor(i).overallMeanFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).meanFactor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallEntropyFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).entropyFactor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallContrastFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).contrastFactor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallASMFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).ASMFactor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallIDMFactor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).IDMFactor(JigsawRow,JigsawCol) );
                
                Comparison_Factor(i).overallTF1Factor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).TF1Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallTF2Factor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).TF2Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallTF3Factor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).TF3Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallTF4Factor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).TF4Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallTF5Factor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).TF5Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallTF6Factor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).TF6Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallTF7Factor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).TF7Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallTF8Factor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).TF8Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).overallTF9Factor(JigsawRow,JigsawCol)  = double ( Comparison_Factor(i).TF9Factor(JigsawRow,JigsawCol) );
                
                
                % Computing the complete factor over the entire image
                Comparison_Factor(i).TotalImageMeanFactor  = double( Comparison_Factor(i).TotalImageMeanFactor  + Comparison_Factor(i).overallMeanFactor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).TotalImageEntropyFactor  = double( Comparison_Factor(i).TotalImageEntropyFactor  + Comparison_Factor(i).overallEntropyFactor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).TotalImageContrastFactor  = double( Comparison_Factor(i).TotalImageContrastFactor  + Comparison_Factor(i).overallContrastFactor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).TotalImageASMFactor  = double( Comparison_Factor(i).TotalImageASMFactor  + Comparison_Factor(i).overallASMFactor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).TotalImageIDMFactor  = double( Comparison_Factor(i).TotalImageIDMFactor  + Comparison_Factor(i).overallIDMFactor(JigsawRow,JigsawCol) );
                
                Comparison_Factor(i).TotalImageTF1Factor  = double( Comparison_Factor(i).TotalImageTF1Factor  + Comparison_Factor(i).overallTF1Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).TotalImageTF2Factor  = double( Comparison_Factor(i).TotalImageTF2Factor  + Comparison_Factor(i).overallTF2Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).TotalImageTF3Factor  = double( Comparison_Factor(i).TotalImageTF3Factor  + Comparison_Factor(i).overallTF3Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).TotalImageTF4Factor  = double( Comparison_Factor(i).TotalImageTF4Factor  + Comparison_Factor(i).overallTF4Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).TotalImageTF5Factor  = double( Comparison_Factor(i).TotalImageTF5Factor  + Comparison_Factor(i).overallTF5Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).TotalImageTF6Factor  = double( Comparison_Factor(i).TotalImageTF6Factor  + Comparison_Factor(i).overallTF6Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).TotalImageTF7Factor  = double( Comparison_Factor(i).TotalImageTF7Factor  + Comparison_Factor(i).overallTF7Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).TotalImageTF8Factor  = double( Comparison_Factor(i).TotalImageTF8Factor  + Comparison_Factor(i).overallTF8Factor(JigsawRow,JigsawCol) );
                Comparison_Factor(i).TotalImageTF9Factor  = double( Comparison_Factor(i).TotalImageTF9Factor  + Comparison_Factor(i).overallTF9Factor(JigsawRow,JigsawCol) );
            end
        end
        
        JigsawCol = ( JigsawCol + 1 );
    end
    
    JigsawRow = (JigsawRow + 1 );
end   
          


for i = 1:20
    Comparison_Factor(i).TaDaFactor = double(Comparison_Factor(i).TotalImageMeanFactor + Comparison_Factor(i).TotalImageEntropyFactor + Comparison_Factor(i).TotalImageContrastFactor + Comparison_Factor(i).TotalImageASMFactor + Comparison_Factor(i).TotalImageIDMFactor + Comparison_Factor(i).TotalImageTF1Factor + Comparison_Factor(i).TotalImageTF2Factor + Comparison_Factor(i).TotalImageTF3Factor + Comparison_Factor(i).TotalImageTF4Factor + Comparison_Factor(i).TotalImageTF5Factor + Comparison_Factor(i).TotalImageTF6Factor + Comparison_Factor(i).TotalImageTF7Factor + Comparison_Factor(i).TotalImageTF8Factor + Comparison_Factor(i).TotalImageTF9Factor );
end