      PROGRAM MAIN                                                  
      REAL,DIMENSION(-5:4)::A,RIGHT_RESULT                                 
      DATA A           /8.,34.,902.,254.,36.,0.,700., 6.,672.,97861./  
      DATA RIGHT_RESULT/8.,36., 36., 36.,36.,36.,36.,36.,672.,97861./  
      LOGICAL  NO_GOOD
      DATA     NO_GOOD/.FALSE./                                    
      INTEGER I,J                                                      
      I=-2*INT(COS(0.0));J=-I                                          
                                                                       
      A(2*I:J)=A(-1)                                                   
                                                                       
      DO I=-5,4                                                        
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
