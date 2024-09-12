      PROGRAM MAIN                                                   
      REAL    * 4  TW1(11),TW2(11,11),TW3(11,11,11)                     
      DATA         TW1,TW2,TW3/1463*1/, N/10/                           
      INTEGER      J/1/ ,L/1/                                           
      DO 10 J=1,N                                                       
        L= 1                                                            
        DO 20 K=1,N                                                     
          TW1(K) = TW1(L) * 2 + L                                       
          L = L+1                                                       
          TW2(L,K) = TW2(L,K) + J                                       
   20   CONTINUE                                                        
   10 CONTINUE                                                          
      WRITE(6,100) TW1,TW2,TW3                                          
  100 FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,200(5(F17.6,2X)/)),/,          
     +       1H ,'--- TW2 ---',/,1H ,(3X,200(5(F17.6,2X)/)),/,          
     +       1H ,'--- TW3 ---',/,1H ,(3X,200(5(F17.6,2X)/)))            
      END                                                               
