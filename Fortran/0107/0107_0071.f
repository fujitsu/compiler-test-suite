      PROGRAM MAIN                                                  
      REAL,DIMENSION(10,5)::A,B,A_RIGHT_RESULT,B_RIGHT_RESULT              
      DATA A/10*999.9,10*9.9,10*1.0,10*3.3,10*65536.0/                 
      DATA A_RIGHT_RESULT/999.9,3.,8*999.9,9.9,3.,8*9.9,1.,3.,8*1.0,   
     &                    3.3,3.,8*3.3,65536.,3.,8*65536.0/            
      DATA B/10*999.9,10*9.9,10*1.0,10*3.3,10*65536.0/                 
      DATA B_RIGHT_RESULT/7*999.9,131072.,2*999.9,10*9.9,              
     &                    7*1.0,131072.,2*1.0,10*3.3,                  
     &                    7*65536.0,131072.,2*65536./                  
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I                                                        
      I=2*INT(COS(0.0))                                                
                                                                       
      A(I,1:5)=A(1:9:2,I+1)*3.                                         
      B(8,1:5:I)=B(5:9:I,5)*2.                                         
                                                                       
      DO J=1,5                                                         
         DO I=1,10                                                     
            IF (A(I,J) .NE. A_RIGHT_RESULT(I,J) .OR.                     
     &          B(I,J) .NE. B_RIGHT_RESULT(I,J)) NO_GOOD = .TRUE.        
         ENDDO                                                         
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
         WRITE (6,*) '?????? NG ??????'                        
         WRITE (6,*) '< ACTUAL RESULT >   ',A                          
         WRITE (6,*) '< RIGHT  RESULT >   ',A_RIGHT_RESULT             
         WRITE (6,*) '< ACTUAL RESULT >   ',B                          
         WRITE (6,*) '< RIGHT  RESULT >   ',B_RIGHT_RESULT             
         WRITE (6,*) '?????? NG ??????'                        
      ELSE                                                             
         WRITE (6,*) '!!!!!! OK !!!!!!'                        
      ENDIF                                                            
      STOP                                                             
      END                                                              
