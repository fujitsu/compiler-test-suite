      PROGRAM MAIN                                                  
      REAL,DIMENSION(-5:4)::A,RIGHT_RESULT                                 
      DATA A           /6.,17.,388.,108.,3679.,0.,147.,10.,983.,64087./
      DATA RIGHT_RESULT/6.,147.,147.,147.,147.,147.,147.,147.,147.,147./
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I,J,K,L,M                                                
      DATA    I,J,K,L,M/1,4,2,4,2/                                     
                                                                       
      A(I-J-1:L-M+K)=A(K-1)                                            
                                                                       
      DO I=-5,4                                                        
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
