      PROGRAM MAIN                                                    
      REAL    R10(10),R11(10),R12(10,10,3),R13(10,10,3),R14(10),R15(10) 
      DO 1 I=1,10                                                       
       DO 1 J=1,10                                                      
        DO 1 K=1,3                                                      
          R11(I) = I                                                    
          R12(I,J,K) = I                                                
          R13(J,I,K) = I                                                
  1       R15(J) = J                                                    
      WRITE(6,*) '----- TEST NO.1 ----- '                               
      DO 10 I=1,10                                                      
        DO 10 J=1,3                                                     
          R10(I) = I                                                    
          RS1 = R11(I) + R10(I)                                         
          DO 11 K=1,10                                                  
            R12(K,I,J) = RS1 + R10(I)                                   
            R13(K,I,J) = RS1 + R12(K,I,J)                               
   11     CONTINUE                                                      
          R14(I) = R10(I) + RS1                                         
          R15(I) = R15(I) + R14(I)                                      
   10 CONTINUE                                                          
      WRITE(6,*) ' R10 = ',R10                                          
      WRITE(6,*) ' R13 = ',R13                                          
      WRITE(6,*) ' R14 = ',R14                                          
      WRITE(6,*) ' R15 = ',R15                                          
      STOP                                                              
      END                                                               
