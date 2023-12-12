      INTEGER A(1000)                                                   
      DATA A/1000*0/                                                    
C                                                                       
      DO 10 I=1,5                                                       
         A(I) = A(I) + 1                                                
         DO 20 J=1,5                                                    
            A = A + 2                                                   
   20    CONTINUE                                                       
         A(I) = A(I) - 1                                                
   10 CONTINUE                                                          
C                                                                       
      DO 30 I=1,1000                                                    
         IF(A(I).NE.50) THEN                                            
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'                      
            GO TO 40                                                    
         ENDIF                                                          
   30 CONTINUE                                                          
C                                                                       
      WRITE(6,*) 'OK'
C                                                                       
   40 CONTINUE                                                          
      STOP                                                              
      END                                                               
