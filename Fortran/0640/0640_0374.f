      PROGRAM MAIN                                                   
      INTEGER      I(3)/3,9,60/,N/5/                                    
      REAL    * 4  TW1(3),TW2(3)                                        
      REAL    * 4  TW4(9),TW5(9)                                        
      REAL    * 4  TW7(60),TW8(60)                                      
      DATA         TW1,TW2/6*1/                                         
      DATA         TW4,TW5/18*1/                                        
      DATA         TW7,TW8/120*1/                                       

      TW3 = 0
      TW6 = 0
      TW9 = 0

      DO 10 J=1,N                                                       
        DO 10 K=1,I(1)                                                  
          TW1(K) = TW1(K) * 2                                           
          TW2(K) = TW2(K)+J                                             
   10 CONTINUE                                                          
      WRITE(6,100) TW1,TW2,TW3                                          

      DO 20 J=1,N                                                       
        DO 20 K=1,I(2)                                                  
          TW4(K) = TW4(K) * 2                                           
          TW5(K) = TW5(K)+J                                             
   20 CONTINUE                                                          
      WRITE(6,100) TW4,TW5,TW6                                          

      DO 30 J=1,N                                                       
        DO 30 K=1,I(3)                                                  
          TW7(K) = TW7(K) * 2                                           
          TW8(K) = TW8(K)+J                                             
   30 CONTINUE                                                          
      WRITE(6,100) TW7,TW8,TW9                                          

      DO 40 J=1,N                                                       
        DO 40 K=1,I(1)                                                  
          TW1(K) = TW1(K) * 2                                           
          TW2(K) = TW2(K)+J                                             
   40 CONTINUE                                                          
      WRITE(6,100) TW1,TW2,TW3                                          

      DO 50 J=1,N                                                       
        DO 50 K=1,I(1)                                                  
          TW1(K) = TW1(K) * 2                                           
          TW2(K) = TW2(K)+J                                             
   50 CONTINUE                                                          
      WRITE(6,100) TW1,TW2,TW3                                          

      DO 60 J=1,N                                                       
        DO 60 K=1,I(3)                                                  
          TW7(K) = TW7(K) * 2                                           
          TW8(K) = TW8(K)+J                                             
   60 CONTINUE                                                          
      WRITE(6,100) TW7,TW8,TW9                                          
  100 FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,           
     +       1H ,'--- TW2 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,           
     +       1H ,'--- TW3 ---',/,1H ,(3X,20(5(F17.6,2X)/)))             
      END                                                               