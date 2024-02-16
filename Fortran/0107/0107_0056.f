      PROGRAM MAIN                                                  
      REAL*8 A(1000)/1000*1.0/
      REAL*8 RIGHT_RESULT(1000)/300*1.0,400*4.0,300*1.0/
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I                                                        
                                                                       
      A(301:700)=A(601:1000)+A(317:716)+A(300:699)+A(1:400)            
                                                                       
      DO I=1,1000                                                      
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
