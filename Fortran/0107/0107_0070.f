      PROGRAM MAIN                                                  
      REAL,DIMENSION(10,5)::A,RIGHT_RESULT                                 
      DATA A/10*999.9,10*9.,10*1.0,10*3.3,10*65536.0/                  
      DATA RIGHT_RESULT/8*999.9,18.,999.9,8*9.,18.,9.,8*1.0,18.,1.,    
     &                  8*3.3,18.,3.3,8*65536.0,18.,65536./            
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I                                                        
      I=2*INT(COS(0.0))                                                
                                                                       
      A(I+7,5:1:-1)=A(6:2:-1,I)*2.                                     
                                                                       
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
