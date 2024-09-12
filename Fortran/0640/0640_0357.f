      PROGRAM MAIN                                                   
      REAL    * 4  TW1(100),TW2(100),TW3(100)                           
      DATA         TW1,TW2,TW3/300*1/,N/60/                             
      INTEGER      J/1/                                                 
      DO 10 I=1,100                                                     
        IF(I.GT.N) THEN                                                 
          TW1(I)=TW1(I)*2                                               
          TW2(I)=TW3(J)                                                 
          TW3(J)=I                                                      
          J=J+1                                                         
        ENDIF                                                           
   10 CONTINUE                                                          
      WRITE(6,100) TW1,TW2,TW3                                          
  100 FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,           
     +       1H ,'--- TW2 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,           
     +       1H ,'--- TW3 ---',/,1H ,(3X,20(5(F17.6,2X)/)))             
      END                                                               
