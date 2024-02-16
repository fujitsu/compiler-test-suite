      PROGRAM MAIN                                                  
      REAL,DIMENSION(5,3)::A,B,RIGHT_RESULT                                
      DATA A/3*33.,3*17.,3*621.,3*918.,3*9502./                        
      DATA RIGHT_RESULT/15*918./                                       
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A(1:5,1:3)=A(5,2)                                                
      B=A(1,1)                                                         
                                                                       
      DO J=1,3                                                         
         DO I=1,5                                                      
            IF (B(I,J) .NE. RIGHT_RESULT(I,J)) NO_GOOD = .TRUE.          
         ENDDO                                                         
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
         WRITE (6,*) '?????? NG ??????'                        
         WRITE (6,*) '< ACTUAL RESULT >   ',B                          
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT               
         WRITE (6,*) '?????? NG ??????'                        
      ELSE                                                             
         WRITE (6,*) '!!!!!! OK !!!!!!'                        
      ENDIF                                                            
      STOP                                                             
      END                                                              
