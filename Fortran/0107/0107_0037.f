      PROGRAM MAIN                                                  
      REAL,DIMENSION(10)::A,RIGHT_RESULT                                   
      DATA A           /42.,99.,421.,374.,548.,0.,100.,21.,232.,87681./
      DATA RIGHT_RESULT/21.,21.,421.,374.,548.,0.,100.,21.,232.,87681./
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I,J,K                                                    
      I=INT(COSH(0.0))                                                 
      J=2*INT(ASIN(1.0))                                               
      K=2*INT(GAMMA(2.0))                                              
                                                                       
      A(I:I*K)=A(I*K*2*J)                                              
                                                                       
      DO I=1,10                                                        
         IF (A(I) .NE. RIGHT_RESULT(I)) NO_GOOD = .TRUE.                 
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
         WRITE (6,*) '?????? NG ??????'                        
         WRITE (6,*) '< ACTUAL RESULT >   ',A                          
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT               
         WRITE (6,*) '?????? NG ??????'                        
      ELSE                                                             
         WRITE (6,*) '!!!!!! OK !!!!!!'                        
      ENDIF                                                            
      STOP                                                             
      END                                                              
