      PROGRAM MAIN
      REAL,DIMENSION(5)::A,RIGHT_RESULT                                     
      REAL X                                                            
      DATA A/1.0,2.0,3.0,4.0,5.0/                                       
      DATA X/100.0/                                                     
      DATA RIGHT_RESULT/101.,102.,103.,104.,105./                       
      LOGICAL NO_GOOD/.FALSE./                                          
                                                                        
      A=A+X                                                             
                                                                        
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
