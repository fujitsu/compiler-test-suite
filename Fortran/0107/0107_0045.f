      PROGRAM MAIN                                                  
      REAL,DIMENSION(-10:-1)::A,RIGHT_RESULT                               
      DATA A           /44.,9.,22.,333.,555.,0.,111.,22.,222.,88888./  
      DATA RIGHT_RESULT/44.,9.,22.,333.,111.,111.,111.,111.,111.,88888./
      LOGICAL NO_GOOD
      DATA    NO_GOOD /.FALSE./                                 
      INTEGER I,J                                                      
      DATA I,J/-2,-2/
                                                                       
      A(3*J:I)=A(2*J)                                                  
                                                                       
      DO I=-10,-1                                                      
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
