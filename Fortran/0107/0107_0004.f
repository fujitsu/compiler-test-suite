      PROGRAM MAIN
      REAL A(10),RIGHT_RESULT(10)                                       
      DATA A           /-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/    
      DATA RIGHT_RESULT/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/    
      LOGICAL NO_GOOD/.FALSE./                                          
                                                                        
      A=A                                                               
                                                                        
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
