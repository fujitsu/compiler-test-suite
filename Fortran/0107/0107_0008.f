      PROGRAM MAIN
      REAL A(5),B(5),RIGHT_RESULT(5)                                    
      DATA B           /10.0,20.0,30.0,40.0, 50.0/                      
      DATA RIGHT_RESULT/20.0,40.0,60.0,80.0,100.0/                      
      LOGICAL NO_GOOD/.FALSE./                                          
                                                                        
      EQUIVALENCE (A,B)                                                 
                                                                        
      A=A+B                                                             
                                                                        
      DO I=1,5                                                          
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
