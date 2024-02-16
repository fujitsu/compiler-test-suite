      PROGRAM MAIN
      REAL A(10),B(5),RIGHT_RESULT_A(10),RIGHT_RESULT_B(5)              
      DATA A             /1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/     
      DATA RIGHT_RESULT_A/2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0/    
      DATA B             /10.0,20.0,30.0,40.0,50.0/                     
      DATA RIGHT_RESULT_B/11.0,21.0,31.0,41.0,51.0/                     
      LOGICAL NO_GOOD/.FALSE./                                          
                                                                        
      A=A+1.0                                                           
      B=B+1.0                                                           
                                                                        
      DO I=1,10                                                         
         IF (A(I) .NE. RIGHT_RESULT_A(I)) NO_GOOD = .TRUE.                
      ENDDO                                                             
      DO I=1,5                                                          
         IF (B(I) .NE. RIGHT_RESULT_B(I)) NO_GOOD = .TRUE.                
      ENDDO                                                             
      IF (NO_GOOD) THEN                                                 
         WRITE (6,*) '?????? NG ??????'                         
         WRITE (6,*) '< ACTUAL RESULT >   ',A                           
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT_A              
         WRITE (6,*) '< ACTUAL RESULT >   ',B                           
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT_B              
         WRITE (6,*) '?????? NG ??????'                         
      ELSE                                                              
         WRITE (6,*) '!!!!!! OK !!!!!!'                         
      ENDIF                                                             
      STOP                                                              
      END                                                               
