      PROGRAM MAIN
      REAL   A(10),B(10),C(10,10),D(10,10)                              
                                                                        
      DATA B,D/10*0.0,100*1.0/                                          
                                                                        
      A=B                                                               
      C=D                                                               
                                                                        
      DO 100 I=1,10                                                     
        IF(A(I) .NE. 0.0) THEN                                          
          WRITE(6,999)                                                  
          GOTO 200                                                      
        END IF                                                          
        DO 100 J=1,10                                                   
          IF(C(I,J) .NE. 1.0) THEN                                      
            WRITE(6,999)                                                
            GOTO 200                                                    
          END IF                                                        
 100  CONTINUE                                                          
      WRITE(6,998)                                                      
 200  CONTINUE                                                          
 998  FORMAT(1H ,'**** OK ****')                             
 999  FORMAT(1H ,'**** NG ****')                             
      STOP                                                              
      END                                                               
