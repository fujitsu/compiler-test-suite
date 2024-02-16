      PROGRAM MAIN                                                  
      REAL,DIMENSION(-10:-1)::A,RIGHT_RESULT                               
      DATA A           /42.,99.,421.,374.,5548.,0.,100.,21.,232.,87681./
      DATA RIGHT_RESULT/42.,99.,421.,374.,5548.,0.,100.,21.,232.,21./  
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I,J                                                      
      I=3*INT(COSH(0.0))                                               
      J=-3*INT(COS(0.0))                                               
                                                                       
      A(-3:-1:-1-J)=A(-I)                                              
                                                                       
      DO I=-10,-1                                                      
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
