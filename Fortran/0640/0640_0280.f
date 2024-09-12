      DIMENSION   A(11,11,11),B(11,11,11)                               
      DATA  N1/1/,N2/2/,N10/10/,N11/11/                                 

      DO 10 I=1,11                                                      
       DO 10 J=1,11                                                     
        DO 10 K=1,11                                                    
         B(I,J,K)  = I * J * K                                          
         A(I,J,K)  = I * J + K                                          
   10 CONTINUE                                                          

      DO 40 M1=1,10                                                     
      DO 40 M2=1,10                                                     
       DO 40 I=1,10                                                     
        DO 30 K=1,10                                                    
         DO 20 J=1,10                                                   
          A(I,J,K) = A(I,J,K) + B(I,J,K)                                
   20   CONTINUE                                                        
   30  CONTINUE                                                         
   40 CONTINUE                                                          
      PRINT  *,A                                                        

      DO 50 I=1,10                                                      
       DO 50 M1=1,10                                                    
        DO 50 J=1,10                                                    
         DO 50 M2=1,10                                                  
          DO 50 K=1,10                                                  
           A(I,J,K) = A(I+1,J+1,K) + B(I,J,K)                           
   50 CONTINUE                                                          
      PRINT  *,A                                                        
      END                                                               
