      PROGRAM MAIN                                                  
      REAL,DIMENSION(10,5)::A,RIGHT_RESULT                                 
      DATA A/10*111.1,10*8.,10*9.0,10*3.3,10*65536.0/                  
      DATA RIGHT_RESULT/7*111.1,512.,2*111.1,7*8.,512.,2*8.,           
     &                  7*9.0,512.,2*9.0,7*3.3,512.,2*3.3,             
     &                  7*65536.0,512.,2*65536./                       
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I                                                        
      I=2*INT(COS(0.0))                                                
                                                                       
      A(8,1:5)=A(1:9:2,I)**3                                           
                                                                       
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
