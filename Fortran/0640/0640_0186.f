      PROGRAM MAIN                                                    
      REAL    R10(10),R11(10),R12(10),R13(10,10),R14(10,10)             
      REAL    R15(10),R16(10,10),R17(10,10,10),R18(10,10,10)            
      REAL    R19(10),R20(10),R21(10)                                   

      R10 = 0
      R19 = 0
      DO 1 K=1,10                                                       
      DO 1 I=1,10                                                       
       DO 1 J=1,10                                                      
         R11(I) = I                                                     
         R12(I) = I - J                                                 
         R15(I) = I - J                                                 
         R13(I,J) = I + J                                               
         R16(I,J) = -I                                                  
         R18(I,J,K) = J + K                                             
         R20(I) = I                                                     
         R21(I) = I*I                                                   
  1   CONTINUE                                                          
      WRITE(6,*) ' ----- TEST NO.1 ----- '                              
      S1 = 0.                                                           
      DO 10 I=1,10                                                      
        R10(I) = - R11(I)                                               
        IF(R12(I).GE.0) R11(I) = SQRT(R12(I))                           
        S1 = S1 + R10(I)                                                
        DO 11 J=1,10                                                    
          R14(I,J) = SIN(R13(I,J))                                      
          R16(I,J) = R12(J)*R10(J)                                      
          DO 12 K=1,10                                                  
            R17(I,J,K) = R18(I,J,K) + R16(I,K)                          
   12     CONTINUE                                                      
          R15(J) = R15(J) + R10(I) + R17(1,I,J)                         
          R20(J) = R15(J)*R20(J)                                        
   11   CONTINUE                                                        
        IF(R15(I).LT.0) R19(I) = R15(I)                                 
        R21(I) = R21(I) - R10(I)                                        
   10 CONTINUE                                                          
      WRITE(6,*) ' R10 = ',R10                                          
      WRITE(6,*) ' R11 = ',R11                                          
      WRITE(6,*) ' R14 = ',((R14(I,J),I=1,10),J=1,2)                    
      WRITE(6,*) ' R15 = ',R15                                          
      WRITE(6,*) ' R14 = ',((R16(I,J),I=1,10),J=7,9)                    
      WRITE(6,*) ' R17 = ',(((R17(I,J,K),I=1,10),J=1,2),K=4,5)          
      WRITE(6,*) ' R19 = ',R19                                          
      WRITE(6,*) ' R20 = ',R20                                          
      WRITE(6,*) ' R21 = ',R21                                          
      STOP                                                              
      END                                                               
