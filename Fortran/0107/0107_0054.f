      PROGRAM MAIN                                                  
      REAL,DIMENSION(0:9)::A,RIGHT_RESULT                                  
      DATA A/8.,34.,902.,254.,3658.,0.,700.,6.,672.,97861./            
      DATA RIGHT_RESULT/10*8.0/                                        
      LOGICAL  NO_GOOD
      DATA     NO_GOOD/.FALSE./                                    
      INTEGER I,J                                                      
      I=INT(ASIN(0.0));J=I                                             
                                                                       
      A(0:1073741824*I+9)=A(-J*1073741824)                             
                                                                       
      DO I=0,9                                                         
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
