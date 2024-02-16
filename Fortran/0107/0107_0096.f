      PROGRAM MAIN                                                  
      REAL A(10),B(5),C(5),B1(5),C1(5)                                 
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/              
      DATA C1/-4.0,-3.0,-2.0,-1.0,0.0/                                 
      DATA B1/1.0,2.0,3.0,4.0,0.0/                                     
                                                                       
      C(1:5:1)=A(1:5:1)                                                
      A(10)=0.0                                                        
      B(1:5:1)=A(6:10:1)                                               
                                                                       
      DO 10 I=1,5                                                      
        IF (B(I) .NE. B1(I)) THEN                                      
          WRITE (6,999) 'B',B                                          
          GOTO 20                                                      
        END IF                                                         
  10  CONTINUE                                                         
  20  CONTINUE                                                         
      DO 30 I=1,5                                                      
        IF (C(I) .NE. C1(I)) THEN                                      
          WRITE (6,999) 'C',C                                          
          GOTO 40                                                      
        END IF                                                         
  30  CONTINUE                                                         
      DO 50 I=1,5                                                      
        IF (B(I) .NE. B1(I) .OR. C(I) .NE. C1(I)) THEN                 
          GOTO 40                                                      
        END IF                                                         
  50  CONTINUE                                                         
      WRITE(6,998)                                                     
  40  CONTINUE                                                         
 998  FORMAT(1H ,'**** OK ****')                            
 999  FORMAT(1H ,'**** NG **** ',1H ,                       
     1                          /,1H ,A1,'(',10(1H ,F5.2),1H ,')')     
      STOP                                                             
      END                                                              
