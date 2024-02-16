      PROGRAM MAIN                                                  
      REAL,DIMENSION(10)::A,RIGHT_RESULT                                   
      DATA A          /38.,34.,902.,254.,3658.,0.,700.,56.,672.,97861./
      DATA RIGHT_RESULT/76.,34.,902.,1804.,3658.,                      
     1                               0.,7316.,56.,672.,97861./         
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
**  TESTING STATEMENT  **                                              
      A(1:8:3)=A(1:6:2)/0.5                                            
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
