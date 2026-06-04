      PROGRAM CV5219                                                    
        type STR
           REAL*8 R10(10),R11(10),R12(10)                                    
           REAL*8 R20(10,10),R21(10,10),R22(10,10)                           
           REAL*8 R30(10,10,10),R31(10,10,10),R32(10,10,10),R33(10,10,10)    
           REAL*8 R40(10,10,10,10),R41(10,10,10,10),R42(10,10,10,10)         
           LOGICAL L10(10),L11(10),L20(10,10)                                
        end type STR
        TYPE(STR) STR_DATA
      DATA N/5/   X/1.0/,Y/1.5/                                         

      S1 = 0
                                                                       
      DO 1 I=1,10                                                       
        STR_DATA%L10(I) = 0.EQ.MOD(I,2)                                          
        STR_DATA%L11(I) = .NOT.STR_DATA%L10(I)                                            
        DO 1 J=1,10                                                     
          STR_DATA%L20(I,J) = 0.EQ.MOD(J,2)                                      
          DO 1 K=1,10                                                   
            DO 1 L=1,10                                                 
              STR_DATA%R10(I) = I                                                
              STR_DATA%R11(I) = I + I                                            
              STR_DATA%R12(I) = I + I + I                                        
              STR_DATA%R20(I,J) = I*J + 1                                        
              STR_DATA%R21(I,J) = I*J + 2                                        
              STR_DATA%R22(I,J) = I*J + 3                                        
              STR_DATA%R30(I,J,K) = K + I * J                                    
              STR_DATA%R31(I,J,K) = K + I - J                                    
              STR_DATA%R32(I,J,K) = K * I + J                                    
              STR_DATA%R33(I,J,K) = I * I + J                                    
              STR_DATA%R40(I,J,K,L) = K + I * J * L                              
              STR_DATA%R41(I,J,K,L) = K + I + J + L                              
              STR_DATA%R42(I,J,K,L) = K * I * J + L                              
  1   CONTINUE                                                          
                                                                       
      WRITE(6,*) '***** CVCT5219 *****'                                 
                                                                       
      WRITE(6,*) '----- TEST NO.1 ----- '                               
      S = 0.                                                            
      DO 10 I=1,10                                                      
        IF(I.GT.N) THEN                                                 
          DO 11 J=1,10                                                  
            STR_DATA%R20(I,J) = STR_DATA%R21(I,J)                                         
            S = STR_DATA%R20(I,J) * STR_DATA%R21(I,J)                                     
            IF(STR_DATA%L20(I,J)) THEN                                           
              DO 12 K=1,10                                              
   12           STR_DATA%R30(I,J,K) = STR_DATA%R20(I,J) + S                               
            ELSE                                                        
              DO 13 K=1,10                                              
   13           STR_DATA%R30(I,J,K) = STR_DATA%R20(I,J) - S                               
            ENDIF                                                       
   11     CONTINUE                                                      
        ELSE                                                            
          STR_DATA%R10(I) = STR_DATA%R11(I)*STR_DATA%R12(I)                                        
          IF(STR_DATA%L11(I)) S1 = S1 + STR_DATA%R10(I)                                   
          DO 14 K=1,10                                                  
            DO 14 L=1,10                                                
   14         STR_DATA%R31(K,I,L) = STR_DATA%R32(K,I,L)*2.0                               
        ENDIF                                                           
   10 CONTINUE                                                          
      WRITE(6,*) ' S  = ',S                                             
      WRITE(6,*) ' S1 = ',S1                                            
      WRITE(6,*) ' R10 = ',STR_DATA%R10                                          
      WRITE(6,*) ' R11 = ',STR_DATA%R11                                          
      WRITE(6,*) ' R20 = ',((STR_DATA%R20(I,J),I=1,2),J=4,6)                     
      WRITE(6,*) ' R21 = ',((STR_DATA%R21(I,J),I=2,6),J=1,3)                     
      WRITE(6,*) ' R30 = ',(((STR_DATA%R30(I,J,K),I=1,2),J=4,6),K=1,2)           
      WRITE(6,*) ' R31 = ',(((STR_DATA%R31(I,J,K),I=2,3),J=7,8),K=9,10)          
      WRITE(6,*) ' R40 = ',((((STR_DATA%R40(I,J,K,L),I=1,2),J=4,6),K=1,2),L=8,9) 
                                                                       
      WRITE(6,*) '----- TEST NO.2 ----- '                               
      S = 0.                                                            
      DO 20 I=1,10                                                      
        IF(X.GT.Y) THEN                                                 
          DO 21 J=1,10                                                  
            STR_DATA%R20(I,J) = STR_DATA%R21(I,J)                                         
            S = STR_DATA%R20(I,J) * STR_DATA%R21(I,J)                                     
            IF(STR_DATA%L20(5,5)) THEN                                           
              DO 22 K=1,10                                              
   22           STR_DATA%R30(I,J,K) = STR_DATA%R20(I,J) + S                               
            ELSE                                                        
              DO 23 K=1,10                                              
   23           STR_DATA%R30(I,J,K) = STR_DATA%R20(I,J) - S                               
            ENDIF                                                       
   21     CONTINUE                                                      
        ELSE                                                            
          STR_DATA%R10(I) = STR_DATA%R11(I)*STR_DATA%R12(I)                                        
          IF(STR_DATA%L11(I)) S1 = S1 + STR_DATA%R10(I)                                   
          DO 24 K=1,10                                                  
            DO 24 L=1,10                                                
   24         STR_DATA%R31(K,I,L) = STR_DATA%R32(K,I,L)*2.0                               
        ENDIF                                                           
   20 CONTINUE                                                          
      WRITE(6,*) ' S  = ',S                                             
      WRITE(6,*) ' S1 = ',S1                                            
      WRITE(6,*) ' R10 = ',STR_DATA%R10                                          
      WRITE(6,*) ' R11 = ',STR_DATA%R11                                          
      WRITE(6,*) ' R20 = ',((STR_DATA%R20(I,J),I=1,2),J=4,6)                     
      WRITE(6,*) ' R21 = ',((STR_DATA%R21(I,J),I=2,6),J=1,3)                     
      WRITE(6,*) ' R30 = ',(((STR_DATA%R30(I,J,K),I=1,2),J=4,6),K=1,2)           
      WRITE(6,*) ' R31 = ',(((STR_DATA%R31(I,J,K),I=2,3),J=7,8),K=9,10)          
      WRITE(6,*) ' R40 = ',((((STR_DATA%R40(I,J,K,L),I=1,2),J=4,6),K=1,2),L=8,9) 
                                                                       
      STOP                                                              
      END                                                               
