      DIMENSION   A(10,10,10),B(10,10,10),M1(10)                        

      IS = 0                                                            
      DO 10 I=1,10                                                      
       M1(I) = I                                                        
       DO 10 J=1,10                                                     
        DO 10 K=1,10                                                    
         A(I,J,K)  = I* J + K                                           
         B(I,J,K)  = I * J * K                                          
   10 CONTINUE                                                          

      DO 40 I=1,10                                                      
       DO 30 J=1,10                                                     
        DO 20 K=1,10                                                    
         A(I,J,K) = B(1,2,J) + A(I,J,10)                                
   20   CONTINUE                                                        
   30  CONTINUE                                                         
   40 CONTINUE                                                          
      PRINT  *,A                                                        

      DO 50 I=1,10,2                                                    
       DO 50 J=1,10                                                     
        DO 50 M=1,M1(J)                                                 
         DO 50 K=1,M1(J)                                                
          IF(M.GT.5) THEN                                               
            A(I,J,K) = A(I,J,K) + B(K,I,J)                              
            B(K,I,J) = A(I,J,K) / 2.                                    
          ELSE                                                          
            A(I,J,K) = M                                                
          ENDIF                                                         
   50 CONTINUE                                                          
      PRINT  *,A                                                        
      END                                                               
