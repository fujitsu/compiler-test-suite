      PROGRAM MAIN                                                  
      REAL,DIMENSION(10,5)::A,RIGHT_RESULT                                 
      DATA A           /10*999.0,10*9.0,10*30.0,10*3.0,10*196608.0/    
      DATA RIGHT_RESULT/10*999.0,10*9.0,                               
     &                  333.0,3.0,10.0,1.0,65536.0,5*30.0,             
     &                  10*3.0,10*196608.0/                            
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I,J                                                      
      I=INT(SINH(0.0))                                                 
                                                                       
      A(2147483647*I+I+1:5,1073741824*I*2+3)=A(9,1:5)/3.               
                                                                       
      DO J=1,5                                                         
         DO I=1,10                                                     
            IF (A(I,J) .NE. RIGHT_RESULT(I,J)) NO_GOOD = .TRUE.          
         ENDDO                                                         
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
