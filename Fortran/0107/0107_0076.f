      PROGRAM MAIN                                                  
      REAL,DIMENSION(10,5)::A,RIGHT_RESULT                                 
      DATA A           /10*999.0,10*9.0,10*33.0,10*3333.0,10*65536.0/  
      DATA RIGHT_RESULT/10*996.0,10*6.0,10*30.0,10*3330.0,10*65533.0/  
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
**  TESTING STATEMENT  **                                              
      A(:,:)=A(:,1:5)-3.                                               
**  - - - - - - - - -  **                                              
                                                                       
      DO J=1,5                                                         
         DO I=1,10                                                     
            IF (A(I,J) .NE. RIGHT_RESULT(I,J)) NO_GOOD = .TRUE.          
         ENDDO                                                         
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
