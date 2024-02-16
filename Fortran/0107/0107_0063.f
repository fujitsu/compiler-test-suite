      PROGRAM MAIN                                                  
      REAL,DIMENSION(10)::A,B,RIGHT_RESULT                                 
      DATA A/42.,99.,421.,374.,5548.,0.,100.,21.,232.,87681./          
      DATA RIGHT_RESULT/42.,99.,421.,374.,5548.,5*100000.0/            
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      B(1:5)=A(1:5)                                                    
      A(3)=100000.0                                                    
      B(6:10)=A(3)                                                     
                                                                       
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
