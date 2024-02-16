      PROGRAM MAIN                                                   
      REAL A(3,3),B(3,3),C(2),RIGHT_RESULT(3,3)                        
      DATA A,B,C/9*1,-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,4.0,5.0,1,2.5/    
      DATA RIGHT_RESULT/-74.5,-52.0,-29.5,-7.0,15.5,38.0,60.5,105.5,   
     1                 128.0/                                          
      INTEGER I,J                                                      
      LOGICAL NO_GOOD/.FALSE./                                         
C                                                                      
      T3=C(2)+C(1)                                                     
      A=A+B                                                            
      T1=C(1)+T3                                                       
      T2=C(2)                                                          
      A=A*T1                                                           
      T3=T2+T1                                                         
      B=A*5.0-T3                                                       
C                                                                      
      DO J=1,3                                                         
        DO I=1,3                                                       
        IF (B(I,J).NE.RIGHT_RESULT(I,J)) NO_GOOD = .TRUE.
        ENDDO                                                          
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
        WRITE (6,*) '?????? NG ??????'                         
        WRITE (6,*) '< ACTUAL RESULT >   ',B                           
        WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT                
        WRITE (6,*) '?????? NG ??????'                         
      ELSE                                                             
        WRITE (6,*) '!!!!!! OK !!!!!!'                         
      ENDIF                                                            
C                                                                      
      STOP                                                             
      END                                                              
