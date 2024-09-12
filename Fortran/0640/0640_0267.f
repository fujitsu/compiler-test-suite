      DIMENSION   A(10,10,10),B(10,10,10),IL(10,10,10)                  
      A = 0
      IS = 0                                                            
      DO 10 I=1,10                                                      
       DO 10 J=1,10                                                     
        DO 10 K=1,10                                                    
         IL(I,J,K) = I                                                  
         B(I,J,K)  = I * J * K                                          
   10 CONTINUE                                                          

      DO 40 I=1,10                                                      
       DO 30 J=1,10                                                     
        DO 20 K=1,10                                                    
         A(IL(I,J,K),IL(I,J,K),IL(I,J,K)) = B(I,J,K)                    
   20   CONTINUE                                                        
   30  CONTINUE                                                         
   40 CONTINUE                                                          
      PRINT  *,A                                                        

      DO 50 I=1,10                                                      
       DO 50 J=1,10                                                     
        DO 50 K=1,10                                                    
         A(IL(I,J,K),IL(I,J,K),IL(I,J,K))                               
     1                 = A(IL(I,J,K),IL(I,J,K),IL(I,J,K)) + B(I,J,K)    
   50 CONTINUE                                                          
      PRINT  *,A                                                        
      END                                                               
