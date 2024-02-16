      PROGRAM MAIN
      REAL A(10),B(10),C(10)                                            
                                                                        
      DATA B,C/10*1,10*2/                                               
                                                                        
        A=B+C                                                           
        A=A+B                                                           
                                                                        
        DO 100 I=1,10                                                   
          IF (A(I) .NE. 4.0) THEN                                       
            WRITE (6,999)                                               
            GOTO 200                                                    
          END IF                                                        
  100 CONTINUE                                                          
        WRITE (6,998)                                                   
  998 FORMAT(1H ,'**** OK ****')                                
  999 FORMAT(1H ,'**** NG ****')                                
  200 CONTINUE                                                          
        STOP                                                            
      END                                                               
