      PROGRAM MAIN                                                  
      REAL,DIMENSION(3,2,4)::A,RIGHT_RESULT                                
      DATA A/3*13.,3*87.,3*468.,3*678.,3*40.,3*4.,3*514.,3*87./        
      DATA RIGHT_RESULT/3*13.,3*87.,                                   
     +                  2*2197.,468.    ,2*658503.,678.,               
     +                  2*102503232.,40.,2*311665752.,4.,              
     +                  2*64000.,514.   ,2*64.,87./                    
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A(1:2,1:2,2:4)=A(2:3,1:2,1:3)**3                                 
                                                                       
      DO K=1,4                                                         
         DO J=1,2                                                      
            DO I=1,3                                                   
               IF (A(I,J,K) .NE. RIGHT_RESULT(I,J,K)) NO_GOOD = .TRUE.   
            ENDDO                                                      
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
