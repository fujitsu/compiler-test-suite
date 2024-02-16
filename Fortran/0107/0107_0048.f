      PROGRAM MAIN                                                  
      REAL,DIMENSION(10)::A,RIGHT_RESULT                                   
      DATA A           /63.,17.,388.,108.,39.,0.,147.,10.,983.,64087./ 
      DATA RIGHT_RESULT/39.,39., 39., 39.,39.,39.,39.,10.,983.,64087./ 
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I,J,K,L
      DATA    I,J,K,L/1,9,2,-2/                                   
                                                                       
      A(I:J+L)=A(2*K+1)                                                
                                                                       
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
