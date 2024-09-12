      PROGRAM MAIN                                                   
      REAL    * 4  TW1(10,10,10),TW2(10,10,10),TW3(10,10,10)            
      DATA         TW1,TW2,TW3/3000*1/, N/10/                           
      INTEGER      J/1/                                                 
      DO 10 I=1,N                                                       
       DO 10 J=1,N                                                      
        DO 10 K=1,J                                                     
          TW1(J,K,I) = TW1(J,K,I) * 2                                   
          TW2(J,K,I) = TW2(J,K,I)+J                                     
          TW3(J,K,I) = SQRT(FLOAT(MAX(I,J,K)))                          
   10 CONTINUE                                                          
      WRITE(6,100) TW1,TW2,TW3                                          
  100 FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,200(5(F17.6,2X)/)),/,          
     +       1H ,'--- TW2 ---',/,1H ,(3X,200(5(F17.6,2X)/)),/,          
     +       1H ,'--- TW3 ---',/,1H ,(3X,200(5(F17.6,2X)/)))            
      END                                                               
