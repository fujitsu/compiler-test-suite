      PROGRAM MAIN                                                   
      REAL,DIMENSION(20)::A,RIGHT_RESULT                                    
      DATA A/5*2.0,5*3.0,5*4.0,5*5.0/                                   
      DATA RIGHT_RESULT/3.,2.,3.,2.,3., 3.,3.,3.,3.,3.,                 
     &                  3.,4.,3.,4.,3., 5.,3.,5.,3.,5./                 
      INTEGER I,J,K,L,M                                                 
      DATA I,J,K,L,M/10,1,1,1,1/                                        
      LOGICAL NO_GOOD/.FALSE./                                          
                                                                        
      A(K:M*I*2:K*2)=A(K*6*J*L)                                         
                                                                        
      DO I=1,20                                                         
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
