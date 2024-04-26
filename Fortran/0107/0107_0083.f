      PROGRAM MAIN                                                   
      REAL A(10),B(10),C(2),RIGHT_RESULT(10)                           
      DATA A,B,C/10*1,-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0,1,2.5/
      DATA RIGHT_RESULT/-4.0,-3.0,-2.0,-1.0,0.0,14.0,-56.0,-38.5,      
     1                  -21.0,-3.5/                                    
      INTEGER I                                                        
      LOGICAL NO_GOOD/.FALSE./                                         

      T3=C(2)+C(1)                                                     
      A(2:6)=A(2:6)+B(1:5)                                             
      T1=C(1)                                                          
      T2=C(2)                                                          
      A(1:5)=A(1:5)*T3                                                 
      T3=T2+T1                                                         
      B(6:10)=A(1:5)*5.0-T3                                            

      DO I=1,10                                                        
        IF (B(I).NE.RIGHT_RESULT(I)) NO_GOOD = .TRUE.
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
        WRITE (6,*) '?????? NG ??????'                         
        WRITE (6,*) '< ACTUAL RESULT >   ',B                           
        WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT                
        WRITE (6,*) '?????? NG ??????'                         
      ELSE                                                             
        WRITE (6,*) '!!!!!! OK !!!!!!'                         
      ENDIF                                                            

      STOP                                                             
      END                                                              
