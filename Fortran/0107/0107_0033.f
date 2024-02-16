      PROGRAM MAIN                                                   
      REAL,DIMENSION(10)::A,RIGHT_RESULT                                    
      INTEGER I,J,K,L                                                   
      DATA A/42.,99.,421.,374.,5548.,0.,100.,21.,232.,87681./           
      DATA RIGHT_RESULT/10*374.0/                                       
      DATA I,J,K,L/1,1,1,1/                                             
      LOGICAL NO_GOOD/.FALSE./                                          
                                                                        
      K=2*J*I                                                           
      IF (K>0) K=0                                                      
      L=2*J*I*2                                                         
      A(1:10)=A(L)                                                      
                                                                        
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
