      PROGRAM MAIN                                                  
      REAL,DIMENSION(10,5)::A,RIGHT_RESULT                                 
      DATA A           /10*311.1,10*2.8,10*9.1,10*5.3,10*256.0/        
      DATA RIGHT_RESULT/311.1,259.,8*311.1,10*2.8,9.1,259,8*9.1,       
     1                  10*5.3,256,259,8*256.0/                        
      INTEGER I,J                                                      
      LOGICAL NO_GOOD/.FALSE./                                         
      I=2*INT(COS(0.0))                                                
                                                                       
**  TESTING STATEMENT  **                                              
      A(I,1:5:2)=A(8:10,5)+3.                                          
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
