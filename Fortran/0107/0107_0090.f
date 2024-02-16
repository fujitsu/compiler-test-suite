      PROGRAM MAIN                                                  
      REAL A(10),B(10)                                                 
      REAL A1(10),B1(10)                                               
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/              
      DATA B/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/              
      DATA A1/1.0,2.0,3.0,4.0,5.0,1.0,2.0,3.0,4.0,5.0/                 
      DATA B1/-4.0,-3.0,-2.0,-1.0,0.0,-4.0,-3.0,-2.0,-1.0,0.0/         
                                                                       
      A(1:5:1)=A(6:10:1)                                               
      B(6:10:1)=B(1:5:1)                                               
                                                                       
      DO 10 I=1,10                                                     
        IF (A(I) .NE. A1(I)) THEN                                      
          WRITE(6,999) 'A',A                                           
        END IF                                                         
        IF (B(I) .NE. B1(I)) THEN                                      
          WRITE(6,999) 'B',B                                           
        END IF                                                         
        IF (A(I) .NE. A1(I) .OR. B(I) .NE. B1(I)) THEN                 
          GOTO 100                                                     
        END IF                                                         
  10  CONTINUE                                                         
      WRITE(6,*) '**** OK ****'                             
 100  CONTINUE                                                         
 999  FORMAT(1H ,'**** NG **** ',1H ,A1,'(',10(1H ,F4.1),')')  
      STOP                                                             
      END                                                              
