      DIMENSION   A(10,10,10),B(10,10,10),                              
     1            AMAX(10,10),AMIN(10,10)                               

      IS = 0                                                            
      DO 10 I=1,10                                                      
       DO 10 J=1,10                                                     
        DO 10 K=1,10                                                    
         B(I,J,K)  = I * J * K                                          
         A(I,J,K)  = I * J - K                                          
   10 CONTINUE                                                          

      DO 11 J=1,10                                                      
       DO 11 I=1,10                                                     
        AMAX(I,J) = 0.                                                  
        AMIN(I,J) = 0.                                                  
   11 CONTINUE                                                          
      DO 40 I=1,10                                                      
       DO 30 J=1,10                                                     
        DO 20 K=1,10                                                    
         IF(AMAX(I,J) .LT. A(I,J,K)) THEN                               
           IX1 = K                                                      
           AMAX(I,J) = A(I,J,K)                                         
         ENDIF                                                          
         IF(AMIN(I,J) .GT. A(I,J,K)) THEN                               
           IX2 = K                                                      
           AMIN(I,J) = A(I,J,K)                                         
         ENDIF                                                          
   20   CONTINUE                                                        
   30  CONTINUE                                                         
   40 CONTINUE                                                          
      PRINT  *,AMAX,AMIN,IX1,IX2                                        
      END                                                               
