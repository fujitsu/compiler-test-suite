      PROGRAM MAIN
      REAL A(10),B(10)                                                  
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/               
      DATA B/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/               
                                                                        
      A(1:10:1)=A(1:10:1)                                               
                                                                        
      DO 10 I=1,10                                                      
        IF (A(I) .NE. B(I)) THEN                                        
          WRITE (6,999)                                                 
          GOTO 20                                                       
        END IF                                                          
  10  CONTINUE                                                          
      WRITE (6,998)                                                     
  20  CONTINUE                                                          
 998  FORMAT(1H ,'**** OK ****')                             
 999  FORMAT(1H ,'**** NG ****')                             
      STOP                                                              
      END                                                               
