      PROGRAM MAIN                                                   
      PARAMETER    (N=40)                                               
      REAL    * 4  TW1(100,N),TW2(100),TW3(100)                         
      DATA         TW2,TW3/200*1/                                       
      INTEGER      J/1/                                                 
      CALL DATA(TW1,N)                                                  
      DO 10 K = 1, N                                                    
        J = 1                                                           
        DO 10 I=1,100                                                   
          IF(I.GT.N) THEN                                               
            TW1(I,K)=TW1(I,K)*2                                         
            TW2(I)=TW3(J) + J                                           
            J=J+1                                                       
            TW3(J)=I                                                    
          ENDIF                                                         
   10 CONTINUE                                                          
      WRITE(6,100) TW1,TW2,TW3                                          
  100 FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,           
     +       1H ,'--- TW2 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,           
     +       1H ,'--- TW3 ---',/,1H ,(3X,20(5(F17.6,2X)/)))             
      END                                                               
      SUBROUTINE DATA(X,N)                                              
      REAL  X(100,N)                                                    
      DO  10 I=1,N                                                      
       DO 10 J=1,100                                                    
         X(J,I) = 1                                                     
   10 CONTINUE                                                          
      END                                                               
