      PROGRAM CV5215          
        type STR
           REAL    R10(10),R11(10),R12(10),R13(10,10),R14(10,10)             
           REAL    R15(10),R16(10,10),R17(10,10,10),R18(10,10,10)            
           REAL    R19(10),R20(10),R21(10)                                   
        end type STR
        TYPE(STR) STR_DATA
     
      STR_DATA%R10 = 0
      STR_DATA%R19 = 0
                                                                       
      DO 1 K=1,10                                                       
      DO 1 I=1,10                                                       
       DO 1 J=1,10                                                      
         STR_DATA%R11(I) = I                                                     
         STR_DATA%R12(I) = I - J                                                 
         STR_DATA%R15(I) = I - J                                                 
         STR_DATA%R13(I,J) = I + J                                               
         STR_DATA%R16(I,J) = -I                                                  
         STR_DATA%R18(I,J,K) = J + K                                             
         STR_DATA%R20(I) = I                                                     
         STR_DATA%R21(I) = I*I                                                   
  1   CONTINUE                                                          
                                                                       
      WRITE(6,*) ' ----- TEST NO.1 ----- '                              
      S1 = 0.                                                           
      DO 10 I=1,10                                                      
        STR_DATA%R10(I) = - STR_DATA%R11(I)                                               
        IF(STR_DATA%R12(I).GE.0) STR_DATA%R11(I) = SQRT(STR_DATA%R12(I))                           
        S1 = S1 + STR_DATA%R10(I)                                                
        DO 11 J=1,10                                                    
          STR_DATA%R14(I,J) = SIN(STR_DATA%R13(I,J))                                      
          STR_DATA%R16(I,J) = STR_DATA%R12(J)*STR_DATA%R10(J)                                      
          DO 12 K=1,10                                                  
            STR_DATA%R17(I,J,K) = STR_DATA%R18(I,J,K) + STR_DATA%R16(I,K)                          
   12     CONTINUE                                                      
          STR_DATA%R15(J) = STR_DATA%R15(J) + STR_DATA%R10(I) + STR_DATA%R17(1,I,J)                         
          STR_DATA%R20(J) = STR_DATA%R15(J)*STR_DATA%R20(J)                                        
   11   CONTINUE                                                        
        IF(STR_DATA%R15(I).LT.0) STR_DATA%R19(I) = STR_DATA%R15(I)                                 
        STR_DATA%R21(I) = STR_DATA%R21(I) - STR_DATA%R10(I)                                        
   10 CONTINUE                                                          
                                                                       
      WRITE(6,*) ' R10 = ',STR_DATA%R10                                          
      WRITE(6,*) ' R11 = ',STR_DATA%R11                                          
      WRITE(6,*) ' R14 = ',((STR_DATA%R14(I,J),I=1,10),J=1,2)                    
      WRITE(6,*) ' R15 = ',STR_DATA%R15                                          
      WRITE(6,*) ' R14 = ',((STR_DATA%R16(I,J),I=1,10),J=7,9)                    
      WRITE(6,*) ' R17 = ',(((STR_DATA%R17(I,J,K),I=1,10),J=1,2),K=4,5)          
      WRITE(6,*) ' R19 = ',STR_DATA%R19                                          
      WRITE(6,*) ' R20 = ',STR_DATA%R20                                          
      WRITE(6,*) ' R21 = ',STR_DATA%R21                                          
                                                                       
      STOP                                                              
      END                                                               
