      PROGRAM MAIN                                                  
      REAL,DIMENSION(10)::A,B,RIGHT_RESULT                                 
      REAL X                                                           
      DATA A/13.,87.,468.,678.,4068.,4.,514.,87.,179.,47681./          
      DATA B/91.,61.,513.,984.,1354.,9.,135.,55.,253.,13744./          
      DATA X/1./                                                       
      DATA RIGHT_RESULT/10*1./                                         
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A(1:10)=X                                                        
      B(1:10)=A(1)                                                     
                                                                       
      DO I=1,10                                                        
         IF (B(I) .NE. RIGHT_RESULT(I)) NO_GOOD = .TRUE.                 
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
         WRITE (6,*) '?????? NG ??????'                        
         WRITE (6,*) '< ACTUAL RESULT >   ',B                          
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT               
         WRITE (6,*) '?????? NG ??????'                        
      ELSE                                                             
         WRITE (6,*) '!!!!!! OK !!!!!!'                        
      ENDIF                                                            
      STOP                                                             
      END                                                              
