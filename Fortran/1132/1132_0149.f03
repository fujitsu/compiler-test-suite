      PROGRAM CV5218                                                    
        type STR
      REAL*8 R10(10),R11(10),R12(10)                                    
      REAL*8 R20(10,10),R21(10,10),R22(10,10)                           
      REAL*8 R30(10,10,10),R31(10,10,10),R32(10,10,10),R33(10,10,10)    
      REAL*8 R40(10,10,10,10),R41(10,10,10,10),S0,S1                    
   end type STR
   TYPE(STR) STR_DATA
      DO 1 I=1,10                                                       
        STR_DATA%R10(I) = I + 1                                                  
        STR_DATA%R11(I) = I + 2                                                  
        STR_DATA%R12(I) = I * I                                                  
        DO 1 J=1,10                                                     
          STR_DATA%R20(I,J) = I + 3                                              
          STR_DATA%R21(I,J) = I*J                                                
          STR_DATA%R22(I,J) = I*J*2                                              
          DO 1 K=1,10                                                   
            STR_DATA%R30(I,J,K) = K - I * J                                      
            STR_DATA%R31(I,J,K) = K + I + J                                      
            STR_DATA%R32(I,J,K) = K * I + J                                      
            STR_DATA%R33(I,J,K) = I * I + J                                      
            DO 1 L=1,10                                                 
              STR_DATA%R40(I,J,K,L) = K * I + J * L                              
  1           STR_DATA%R41(I,J,K,L) = K + I + J + L                              
                                                                        
                                                                       
      WRITE(6,*) '***** CVCT5218 *****'                                 
                                                                       
      WRITE(6,*) '----- TEST NO.1 ----- '                               
      DO 10 I=1,10                                                      
        STR_DATA%R10(I) = FLOAT(I)                                               
        DO 11 J=1,10                                                    
          STR_DATA%R20(I,J) = STR_DATA%R21(I,J)                                           
          DO 12 K=1,2                                                   
   12       STR_DATA%R30(I,J,K) = STR_DATA%R31(I,J,K) + STR_DATA%R20(I,J)                          
   11   CONTINUE                                                        
                                                                        
        IF(I.GT.5) THEN                                                 
          DO 13 L=1,10                                                  
            DO 14 M=1,10                                                
              DO 15 J=1,10                                              
                S0 = STR_DATA%R30(L,M,J)                                         
   15           STR_DATA%R30(L,M,J) = STR_DATA%R30(L,M,J)*STR_DATA%R20(L,M)                        
   14         STR_DATA%R20(L,M) = STR_DATA%R20(L,M) * L                                   
   13       STR_DATA%R21(I,L) = STR_DATA%R22(I,L) + J                                     
        ELSE                                                            
          DO 16 L=1,10                                                  
            STR_DATA%R10(L) = L                                                  
            DO 16 J=1,10                                                
              STR_DATA%R30(I,L,J) = STR_DATA%R10(L) + J                                   
              S1 = 0.0                                                  
              DO 16 M=1,10                                              
                S1 = S1 + STR_DATA%R30(I,L,J)                                    
   16           STR_DATA%R40(L,M,J,I) = STR_DATA%R32(L,J,M)*2.0                           
        ENDIF                                                           
   10 CONTINUE                                                          
      WRITE(6,*) ' S0 =  ',S0                                           
      WRITE(6,*) ' S1 =  ',S1                                           
      WRITE(6,*) ' R10 = ',STR_DATA%R10                                          
      WRITE(6,*) ' R20 = ',((STR_DATA%R20(I,J),I=1,2),J=4,6)                     
      WRITE(6,*) ' R30 = ',(((STR_DATA%R30(I,J,K),I=1,2),J=4,6),K=1,2)           
      WRITE(6,*) ' R40 = ',((((STR_DATA%R40(I,J,K,L),I=1,2),J=4,6),K=1,2),L=8,9) 
      WRITE(6,*) ' R21 = ',((STR_DATA%R21(I,J),I=2,6),J=1,3)                     
      WRITE(6,*) ' R11 = ',STR_DATA%R11                                          
      WRITE(6,*) ' R31 = ',(((STR_DATA%R31(I,J,K),I=5,6),J=7,8),K=1,2)           
                                                                       
      STOP                                                              
      END                                                               
