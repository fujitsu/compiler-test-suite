      DIMENSION   A(10,10,10),B(10,10,10),M1(10,10,10),                 
     1            AMAX(10,10),AMIN(10,10)                               

      IS = 0                                                            
      DO 10 I=1,10                                                      
       DO 10 J=1,10                                                     
        DO 10 K=1,10                                                    
         M1(I,J,K) = I + J + K                                          
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
           AMAX(I,J) = A(I,J,K)                                         
         ENDIF                                                          
         IF(AMIN(I,J) .GT. A(I,J,K)) THEN                               
           AMIN(I,J) = A(I,J,K)                                         
         ENDIF                                                          
   20   CONTINUE                                                        
   30  CONTINUE                                                         
   40 CONTINUE                                                          
      PRINT  *,AMAX,AMIN                                                

      DO 51 J=1,10                                                      
       DO 51 I=1,10                                                     
        AMAX(I,J) = 0.                                                  
        AMIN(I,J) = 0.                                                  
   51 CONTINUE                                                          
      DO 50 I=1,10                                                      
       DO 50 J=1,10                                                     
        DO 50 K=1,10                                                    
           AMAX(I,J) = MAX(AMAX(I,J),A(I,J,K))                          
           AMIN(I,J) = MIN(AMIN(I,J),B(I,J,K))                          
   50 CONTINUE                                                          
      PRINT  *,AMAX,AMIN                                                
      END                                                               
