      PROGRAM MAIN                                                  
      REAL A(10),B(10),A1(10),B1(10)                                   
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/              
      DATA B/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/              
      DATA A1/5.0,4.0,3.0,2.0,1.0,1.0,2.0,3.0,4.0,5.0/                 
      DATA B1/-4.0,-3.0,-2.0,-1.0,0.0,0.0,-1.0,-2.0,-3.0,-4.0/         
                                                                       
      A(1:5:1)=A(10:6:-1)                                              
      B(6:10:1)=B(5:1:-1)                                              
                                                                       
      DO 10 I=1,10                                                     
        IF( A(I) .NE. A1(I)) THEN                                      
          WRITE (6,999) 'A',A                                          
          GOTO 40                                                      
        END IF                                                         
  10  CONTINUE                                                         
  40  CONTINUE                                                         
      DO 20 I=1,10                                                     
        IF( B(I) .NE. B1(I)) THEN                                      
          WRITE (6,999) 'B',B                                          
          GOTO 50                                                      
        END IF                                                         
  20  CONTINUE                                                         
  50  CONTINUE                                                         
      DO 30 I=1,10                                                     
        IF( A(I) .NE. A1(I) .OR. B(I) .NE. B1(I)) THEN                 
          GOTO 60                                                      
        END IF                                                         
  30  CONTINUE                                                         
      WRITE(6,998)                                                     
  60  CONTINUE                                                         
 998  FORMAT(1H '**** OK ****')                             
 999  FORMAT(1H '**** NG ****',1H ,                         
     1                          /,1H ,A1,'(',10(1H ,F5.2),')')         
      STOP                                                             
      END                                                              
