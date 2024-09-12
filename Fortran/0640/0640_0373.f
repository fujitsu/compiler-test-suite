      PROGRAM MAIN                                                   
      INTEGER      I(3)/3,9,60/,N/5/                                    
      REAL    * 4  TW1(3),TW2(3),TW3(3)                                 
      REAL    * 4  TW4(9),TW5(9),TW6(9)                                 
      REAL    * 4  TW7(60),TW8(60),TW9(60)                              
      DATA         TW1,TW2,TW3/9*1/                                     
      DATA         TW4,TW5,TW6/27*1/                                    
      DATA         TW7,TW8,TW9/180*1/                                   

      DO 10 J=1,N                                                       
        DO 10 K=1,I(1)                                                  
          TW1(K) = TW1(K) * 2                                           
          TW2(K) = TW2(K)+J                                             
          TW3(K) = SQRT(FLOAT(MAX(I(2),J,K)))                           
   10 CONTINUE                                                          
      WRITE(6,100) TW1,TW2,TW3                                          

      DO 20 J=1,N                                                       
        DO 20 K=1,I(2)                                                  
          TW4(K) = TW4(K) * 2                                           
          TW5(K) = TW5(K)+J                                             
          TW6(K) = SQRT(FLOAT(MAX(I(3),J,K)))                           
   20 CONTINUE                                                          
      WRITE(6,100) TW4,TW5,TW6                                          

      DO 30 J=1,N                                                       
        DO 30 K=1,I(3)                                                  
          TW7(K) = TW7(K) * 2                                           
          TW8(K) = TW8(K)+J                                             
          TW9(K) = SQRT(FLOAT(MAX(I(1),J,K)))                           
   30 CONTINUE                                                          
      WRITE(6,100) TW7,TW8,TW9                                          

      DO 40 J=1,N                                                       
        DO 40 K=1,I(1)                                                  
          TW1(K) = TW1(K) * 2                                           
          TW2(K) = TW2(K)+J                                             
          TW3(K) = SQRT(FLOAT(MAX(I(2),J,K)))                           
   40 CONTINUE                                                          
      WRITE(6,100) TW1,TW2,TW3                                          

      DO 50 J=1,N                                                       
        DO 50 K=1,I(1)                                                  
          TW1(K) = TW1(K) * 2                                           
          TW2(K) = TW2(K)+J                                             
          TW3(K) = SQRT(FLOAT(MAX(I(2),J,K)))                           
   50 CONTINUE                                                          
      WRITE(6,100) TW1,TW2,TW3                                          

      DO 60 J=1,N                                                       
        DO 60 K=1,I(3)                                                  
          TW7(K) = TW7(K) * 2                                           
          TW8(K) = TW8(K)+J                                             
          TW9(K) = SQRT(FLOAT(MAX(I(1),J,K)))                           
   60 CONTINUE                                                          
      WRITE(6,100) TW7,TW8,TW9                                          
  100 FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,           
     +       1H ,'--- TW2 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,           
     +       1H ,'--- TW3 ---',/,1H ,(3X,20(5(F17.6,2X)/)))             
      END                                                               
