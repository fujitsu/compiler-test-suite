      PROGRAM MAIN                                                   
      REAL    * 4  TW1(100),TW2(100),TW3(100)                           
      DATA         TW1,TW2,TW3/300*1/                                   
      INTEGER      J/1/,N/100/                                          
      DO 10 I=1,N                                                       
        TW1(I) = TW1(I) * 2                                             
        TW2(I)=TW2(I)+J                                                 
        TW3(J)=SQRT(FLOAT(J))                                           
        J=J+1                                                           
   10 CONTINUE                                                          
      WRITE(6,100) TW1,TW2,TW3                                          
  100 FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,           
     +       1H ,'--- TW2 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,           
     +       1H ,'--- TW3 ---',/,1H ,(3X,20(5(F17.6,2X)/)))             
      END                                                               