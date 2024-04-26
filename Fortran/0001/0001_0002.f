      INTEGER A(1000)                                                   
      DATA A/1000*0/                                                    

      DO 10 I=1,5                                                       
         A(I) = A(I) + 1                                                
         DO 20 J=1,10                                                   
            A(I) = A(I) + 1                                             
            DO 30 K=1,10                                                
               A = A + 1                                                
   30       CONTINUE                                                    
            A(I) = A(I) - 1                                             
   20    CONTINUE                                                       
         A(I) = A(I) - 1                                                
   10 CONTINUE                                                          

      DO 40 I=1,1000                                                    
         IF(A(I).NE.500) THEN                                           
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'                      
            GO TO 50                                                    
         ENDIF                                                          
   40 CONTINUE                                                          

      WRITE(6,*) 'OK'

   50 CONTINUE                                                          
      STOP                                                              
      END                                                               
