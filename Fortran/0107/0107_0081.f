      PROGRAM MAIN                                                  
      REAL,DIMENSION(10,10)::A,RIGHT_RESULT                                
      DATA A           /20*311.1,20*2.8,20*9.1,20*5.3,20*256.0/        
      DATA RIGHT_RESULT/2*311.1,12.1,17*311.1,20*2.8,2*9.1,12.1,       
     &           17*9.1,20*5.3,2*256,12.1,17*256.0/                    
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A(3,1:10:2**2)=A(1:10:2**2,5)+3.                                 
                                                                       
      DO J=1,10                                                        
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
