      PROGRAM MAIN                                                  
      REAL A(10),B(10),C(10),A1(10)                                    
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/              
      DATA A1/-4.0,-3.0,-2.0,-1.0,5.0,1.0,2.0,3.0,4.0,0.0/             
                                                                       
      C    =A(5)                                                       
      A(10)=0.0                                                        
      A( 5)=5.0                                                        
      B    =C                                                          
                                                                       
      DO 10 I=1,10                                                     
        IF (A(I) .NE. A1(I)) THEN                                      
          WRITE (6,999) 'A',A                                          
          GOTO 20                                                      
        END IF                                                         
  10  CONTINUE                                                         
  20  CONTINUE                                                         
      DO 30 I=1,10                                                     
        IF(B(I) .NE. 0.0) THEN                                         
          WRITE (6,999) 'B',B                                          
          GOTO 40                                                      
        END IF                                                         
  30  CONTINUE                                                         
      DO 50 I=1,10                                                     
        IF (A(I) .NE. A1(I) .OR. B(I) .NE. 0.0) THEN                   
          GOTO 40                                                      
        END IF                                                         
  50  CONTINUE                                                         
      WRITE(6,998)                                                     
  40  CONTINUE                                                         
 998  FORMAT(1H ,'**** OK ****')                            
 999  FORMAT(1H ,'**** NG **** ',1H ,                       
     1                   /,A1,'(',10(1H ,F5.2),')')                    
      STOP                                                             
      END                                                              
