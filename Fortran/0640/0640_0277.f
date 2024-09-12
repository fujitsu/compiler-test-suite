      DIMENSION   A(11,11,11),B(11,11,11)                               
      DATA  N1/1/,N2/2/,N10/10/,N11/11/                                 

      DO 10 I=1,11                                                      
       DO 10 J=1,11                                                     
        DO 10 K=1,11                                                    
         B(I,J,K)  = I * J * K                                          
         A(I,J,K)  = I * J + K                                          
   10 CONTINUE                                                          

      DO 40 I=1,10                                                      
       DO 30 K=1,10                                                     
        DO 20 J=1,10                                                    
         A(I,J,K) = A(I,J+1,K) + B(I,J,K)                               
   20   CONTINUE                                                        
   30  CONTINUE                                                         
   40 CONTINUE                                                          
      PRINT  *,A                                                        

      DO 50 I=1,10                                                      
       DO 50 J=1,10                                                     
        DO 50 M=1,10                                                    
         DO 50 K=1,10                                                   
          A(I,J,K) = A(I+1,J,K) + B(I,J,M)                              
   50 CONTINUE                                                          
      PRINT  *,A                                                        

      DO 60 K=N2,N11                                                    
       DO 60 M=N1,N10                                                   
        DO 60 J=N1,N10                                                  
         DO 60 I=N2,N11                                                 
          A(I,J,K) = A(I-1,J+1,K-1) + B(I,J,K) * 2.                     
   60 CONTINUE                                                          
      PRINT  *,A                                                        
      END                                                               
