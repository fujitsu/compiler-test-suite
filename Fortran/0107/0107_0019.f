      PROGRAM MAIN
      REAL,DIMENSION(10)::A,RIGHT_RESULT                                    
      DATA A           /-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/    
      DATA RIGHT_RESULT/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/    
      INTEGER III,JJJ,JJJ111                                            
      DATA III,JJJ,JJJ111/1,1,5/                                        
      LOGICAL NO_GOOD/.FALSE./                                          
                                                                        
      A(1:10)=A(1:JJJ111*2*JJJ*III-10*III*3+6*5*JJJ)                    
                                                                        
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
