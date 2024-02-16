      PROGRAM MAIN                                                  
      REAL,DIMENSION(10)::A,RIGHT_RESULT                                   
      DATA A           /38.,34.,902.,254.,3658.,0.,700.,56.,672.,97861./
      DATA RIGHT_RESULT/68.,34.,508.,254.,0.,0.,112.,56.,195722.,97861./
      LOGICAL  NO_GOOD
      DATA     NO_GOOD/.FALSE./                                    
      INTEGER::I                                                       
      I=INT(COS(0.0))                                                  
                                                                       
      A(1:9:I+1)=A(2:10:I+1)/0.5                                       
                                                                       
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
