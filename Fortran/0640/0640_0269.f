      DIMENSION   A(10,10,10),B(10,10,10),M1(10,10,10)                  
      IS = 0                                                            
      DO 10 I=1,10                                                      
       DO 10 J=1,10                                                     
        DO 10 K=1,10                                                    
         M1(I,J,K) = I + J + K                                          
         B(I,J,K)  = I * J * K                                          
   10 CONTINUE                                                          

      DO 40 I=1,10                                                      
       DO 30 J=1,10                                                     
        DO 20 K=1,10                                                    
         IF(M1(I,J,K)/2 .GT. 2) THEN                                    
           A(I,J,K) = B(I,J,K)                                          
         ELSE                                                           
           A(I,J,K) = 100. + B(I,J,K)                                   
         ENDIF                                                          
   20   CONTINUE                                                        
   30  CONTINUE                                                         
   40 CONTINUE                                                          
      PRINT  *,A                                                        

      DO 50 I=1,10                                                      
       DO 50 J=1,10                                                     
        DO 50 K=1,10                                                    
           A(I,J,K) = A(I,J,K) + B(K,I,J)                               
           B(K,I,J) = A(I,J,K) / 2.                                     
           S = A(I,J,K) + B(K,I,J)                                      
   50 CONTINUE                                                          
      PRINT  *,A,S                                                      
      END                                                               
