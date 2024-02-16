      PROGRAM MAIN                                                   
      REAL,DIMENSION(10)::A,RIGHT_RESULT                                    
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/               
      DATA RIGHT_RESULT/-262144.,-196608.,-131072.,-65536.,0.,          
     &                  65536.,131072.,196608.,262144.,327680./         
      LOGICAL NO_GOOD/.FALSE./                                          
                                                                        
      A(1:10)=A(1:3**2+1)*65536.0                                       
                                                                        
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
