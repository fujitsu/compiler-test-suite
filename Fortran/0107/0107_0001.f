      PROGRAM MAIN
      REAL   A(10),B(10),C(10)                                          
                                                                        
      DATA X,A,B,C/0.0,10*1.0,10*2.0,10*3.0/                            
                                                                        
      I=10                                                              
 10   X=X+1.0                                                           
      A(1:I)=B(1:I)                                                     
      IF (X .GT. 1.0) THEN                                              
      C(1:I)=A(1:I)                                                     
      ENDIF                                                             
                                                                        
      DO 100 I=1,10                                                     
        IF (C(I) .NE. 3.0) THEN                                         
          WRITE(6,999)                                                  
          GOTO 200                                                      
        END IF                                                          
100   CONTINUE                                                          
      WRITE(6,998)                                                      
200   CONTINUE                                                          
998   FORMAT(1H ,'**** OK ****')                             
999   FORMAT(1H ,'**** NG ****')                             
      STOP                                                              
      END                                                               
