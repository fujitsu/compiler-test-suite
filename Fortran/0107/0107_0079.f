      PROGRAM MAIN                                                  
      REAL,DIMENSION( 2**29-10: 2**29- 1)::A                               
      REAL,DIMENSION(-2**29+ 1:-2**29+10)::B                               
      REAL,DIMENSION(10)                ::RIGHT_RESULT                     
      DATA B/38.,34.,902.,254.,3658.,0.,700.,56.,672.,97861./          
      DATA RIGHT_RESULT/76.,68.,1804.,508.,7316.,0.,1400.,112.,        
     1                 1344.,195722./                                  
      LOGICAL NO_GOOD/.FALSE./                                         
      EQUIVALENCE (A,B)                                                
                                                                       
      A( 536870902: 536870911)=B(- 536870911:- 536870902)/0.5          
                                                                       
      DO I=1,10                                                        
         IF (A(2**29-11+I) .NE. RIGHT_RESULT(I)) NO_GOOD = .TRUE.        
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
