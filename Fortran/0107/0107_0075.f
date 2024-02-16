      PROGRAM MAIN                                                  
      REAL,DIMENSION(10,5)::A,RIGHT_RESULT                                 
      DATA A           /10*111.1,10*8.8,10*9.0,10*3.3,10*65536.0/      
      DATA RIGHT_RESULT/10*111.1,8.8,111.1,8*8.8,9.0,111.1,8*9.0,      
     1                  3.3,111.1,8*3.3,65536.0,111.1,8*65536.0/       
      INTEGER I,J                                                      
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      I=2*INT(COS(0.0))                                                
      J=INT(ACOS(0.0))                                                 
                                                                       
**  TESTING STATEMENT  **                                              
      A(I,1:5)=A(1:9:2,J)                                              
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
