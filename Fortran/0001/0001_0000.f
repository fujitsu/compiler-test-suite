      INTEGER A(1000)                                                   

      A = 0                                                             
      A = A + 1                                                         

      DO 10 I=1,1000                                                    
         IF(A(I).NE.1) THEN                                             
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'                      
            GO TO 20                                                    
         ENDIF                                                          
   10 CONTINUE                                                          

      WRITE(6,*) 'OK'

   20 CONTINUE                                                          
      STOP                                                              
      END                                                               
