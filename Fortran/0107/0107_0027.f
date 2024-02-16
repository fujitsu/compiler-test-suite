      PROGRAM MAIN                                                   
      REAL,DIMENSION(20)::A,RIGHT_RESULT                                    
      DATA A/5*2.0,5*3.0,5*4.0,5*5.0/                                   
      DATA RIGHT_RESULT/5*2.0,3.0,3.0,3.0,3.0,4.0,10*4.0/               
      INTEGER I,J                                                       
      DATA I,J/10,15/                                                   
      LOGICAL NO_GOOD/.FALSE./                                          
                                                                        
      A(I:20)=A(J)                                                      
                                                                        
      DO I=1,20                                                         
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
