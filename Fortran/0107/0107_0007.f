      PROGRAM MAIN
      REAL,DIMENSION(5)::A,RIGHT_RESULT                                     
      DATA A           / 10.0, 20.0, 30.0, 40.0, 50.0/                  
      DATA RIGHT_RESULT/100.0,200.0,300.0,400.0,500.0/                  
      LOGICAL NO_GOOD/.FALSE./                                          
                                                                        
      A=A*10.0                                                          
                                                                        
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
