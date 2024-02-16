      PROGRAM MAIN                                                  
      REAL,DIMENSION(10)::A,RIGHT_RESULT                                   
      DATA A          /38.,34.,902.,254.,3658.,0.,700.,56.,672.,97861./
      DATA RIGHT_RESULT/24.,34.,902.,3648.,3658.,0.,46.,56.,           
     1                  672.,97861./                                   
      INTEGER I                                                        
      LOGICAL NO_GOOD/.FALSE./                                         
      I=3*INT(COS(0.0))                                                
                                                                       
**  TESTING STATEMENT  **                                              
      A(1:9:I)=A(2:10:I)-10                                            
**  - - - - - - - - -  **                                              
                                                                       
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
