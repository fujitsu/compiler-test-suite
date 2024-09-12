      PROGRAM MAIN                                                    
      COMPLEX*8 CA(5,5,5,5,5,5,5)                                       
      COMPLEX*8 CB(5,5,5,5,5,5,5)                                       
      REAL*4    RA(5,5,5),RB(5,5,5,5),RC(5,5,5)                         
      INTEGER*4 H                                                       
      DO 10 H = 1 , 5                                                   
      DO 10 I = 1 , 5                                                   
      DO 10 J = 1 , 5                                                   
      DO 10 K = 1 , 5                                                   
      DO 10 L = 1 , 5                                                   
      DO 10 M = 1 , 5                                                   
      DO 10 N = 1 , 5                                                   
       CA (H,I,J,K,L,M,N) = 1.
       CB (H,I,J,K,L,M,N) = 1.
       RA (I,J,K) = 1.
       RC (I,J,K) = 1.
       RB (I,J,K,L) = 1.
10    CONTINUE                                                          
       H=1
      DO 20 K = 1 , 5                                                   
      DO 20 I = 1 , 5                                                   
      DO 20 L = 1 , 5                                                   
      DO 20 M = 1 , 5                                                   
      DO 20 N = 1 , 5                                                   
      DO 20 J = 1 , 5                                                   
         S=CA(H,I,J,K,L,M,N)                                            
         IF(S .GE. 5.) THEN                                             
           T=CB(H,I,J,K,L,M,N) + S                                      
         ELSE                                                           
           T=CB(H,I,J,K,L,N,M)                                          
         ENDIF                                                          
         RB(H,I,J,K)=T+S                                                
20    CONTINUE                                                          
      WRITE(6,*) 'RB=',(RB(I,I,I,I),I=1,5)                              
      STOP                                                              
      END                                                               
