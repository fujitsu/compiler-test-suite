      DIMENSION   A(10,10,10),B(10,10,10),M1(10,10,10)                  
      IS = 0                                                            
      DO 10 I=1,10                                                      
       DO 10 J=1,10                                                     
        DO 10 K=1,10                                                    
         M1(I,J,K) = I + J + K                                          
         B(I,J,K)  = I * J * K                                          
         A(I,J,K)  = I * J - K                                          
   10 CONTINUE                                                          

      AMAX = 0.                                                         
      AMIN = -10000.                                                    
      DO 40 I=1,10                                                      
       DO 30 J=1,10                                                     
        DO 20 K=1,10                                                    
         IF(AMAX .LT. A(I,J,K)) THEN                                    
           AMAX = A(I,J,K)                                              
         ENDIF                                                          
         IF(AMIN .GT. A(I,J,K)) THEN                                    
           AMIN = A(I,J,K)                                              
         ENDIF                                                          
   20   CONTINUE                                                        
   30  CONTINUE                                                         
   40 CONTINUE                                                          
      PRINT  *,AMAX,AMIN                                                

      AMAX = 0.                                                         
      AMIN = -10000.                                                    
      DO 50 I=1,10                                                      
       DO 50 J=1,10                                                     
        DO 50 K=1,10                                                    
           AMAX = MAX(AMAX,A(I,J,K))                                    
           AMIN = MIN(AMIN,B(I,J,K))                                    
   50 CONTINUE                                                          
      PRINT  *,AMAX,AMIN                                                
      END                                                               
