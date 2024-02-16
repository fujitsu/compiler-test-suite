      PROGRAM MAIN                                                  
      REAL,DIMENSION(10)::A,RIGHT_RESULT                                   
      DATA A           /63.,17.,388.,108.,3679.,0.,147.,10.,983.,64087./
      DATA RIGHT_RESULT/63.,17.,  0.,  0.,   0.,0.,  0., 0.,  0.,64087./
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I/3/,J/2/                                                
                                                                       
      A(I:I*3)=A(3*J)                                                  
                                                                       
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
