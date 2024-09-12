      PROGRAM MAIN                                                    
      DIMENSION SOL(144),SOLO2(22),SOLO3(144),SOLH2O(14),SOLN2O(37)     
     2,ABO2(144),ABO3(144),ABH2O(144),ABN2O(144),ABN2O5(144)            
      DO 10 I=1,144                                                     
        SOL(I) = FLOAT(I)                                               
        ABO3(I) = I+1                                                   
        ABO2(I) = I-1                                                   
        ABH2O(I)=I*2                                                    
        ABN2O(I)=I+3                                                    
        ABN2O5(I)=I*3                                                   
10    CONTINUE                                                          
      DO 6 M=1,144                                                      
        SOLO3(M)=SOL(M)*ABO3(M)                                         
        IF(M.GT.22) GO TO 611                                           
          SOLO2(M)=SOL(M)*ABO2(M)                                       
  611   IF(M.GT.14) GO TO 612                                           
          SOLH2O(M)=SOL(M)*ABH2O(M)                                     
  612   IF(M.GT.37) GO TO 613                                           
          SOLN2O(M)=SOL(M)*ABN2O(M)                                     
  613   IF(M.GT.50) GO TO 6                                             
    6 CONTINUE                                                          
      WRITE(6,*) SOLO2                                                  
      STOP                                                              
      END                                                               
