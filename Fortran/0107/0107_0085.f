      PROGRAM MAIN                                                   
      REAL A(10),B(10),C(10)                                           
      EQUIVALENCE (A(5),B),(B(6),C)                                    

      REAL X                                                           
      EQUIVALENCE (A(10),X)                                            
      DATA X/1.0/                                                      

      C=1.0                                                            
      A=X                                                              
      B=C                                                              

      DO 10 I=1,10                                                     
        IF (A(I) .NE. 1.0) THEN                                        
          WRITE(6,999) 'A',A                                           
        END IF                                                         
        IF (B(I) .NE. 1.0) THEN                                        
          WRITE(6,999) 'B',B                                           
        END IF                                                         
        IF (A(I) .NE. 1.0 .OR. B(I) .NE. 1.0) THEN                     
          GOTO 100                                                     
        END IF                                                         
  10  CONTINUE                                                         
      WRITE (6,998)                                                    
 100  CONTINUE                                                         
 998  FORMAT(1H ,'**** OK ****')                            
 999  FORMAT(1H ,'**** NG **** ',1H ,A1,'(',10(1H ,F4.1),')') 

      STOP                                                             
      END                                                              
