      PROGRAM MAIN                                                  
      REAL,DIMENSION(10)::A,RIGHT_RESULT                                   
      DATA A          /38.,34.,902.,254.,3658.,0.,700.,56.,672.,97860./
      DATA RIGHT_RESULT/17.,34.,127.,254.,0.,0.,28.,56.,48930.,97860./ 
      INTEGER I                                                        
      LOGICAL NO_GOOD/.FALSE./                                         
      I=INT(COS(0.0))                                                  
                                                                       
      A(1:9:2)=A(I+1:I+9:2)/2                                          
                                                                       
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
