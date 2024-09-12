      PROGRAM MAIN                                                    
      COMPLEX*8 CA(5,5,5,5,5,5,5)                                       
      COMPLEX*8 CB(5,5,5,5,5,5,5)                                       
      REAL*4    RA(5,5,5),RB(5,5,5,5),RC(5,5,5),RD(5,5,5)               
      INTEGER*4 H                                                       
      DO 10 H=1,5                                                       
      DO 10 I=1,5                                                       
      DO 10 J=1,5                                                       
      DO 10 K=1,5                                                       
      DO 10 L=1,5                                                       
      DO 10 M=1,5                                                       
      DO 10 N=1,5                                                       
       CA(H,I,J,K,L,M,N)=H+I+J+K+L+M+N                                  
       CB(H,I,J,K,L,M,N)=H+I+J+K+L+M+N                                  
       RA(I,J,K) =H+I+J+K+L+M+N                                         
       RC(I,J,K) =H+I+J+K+L+M+N                                         
       RB(I,J,K,L)=H+I+J+K+L+M+N                                        
       RD(I,J,K)=H+I+J+K+L+M+N                                          
10    CONTINUE                                                          
      DO 20 N=1,5                                                       
      DO 20 I=1,5                                                       
      DO 20 H=1,5                                                       
      DO 20 J=1,5                                                       
      DO 20 L=1,5                                                       
      DO 20 K=1,5                                                       
      DO 20 M=1,5                                                       
            CA(H,I,J,K,L,M,N)=RA(I,J,K)+RD(L,M,N)                       
20    CONTINUE                                                          
      WRITE(6,*) 'CA=',(CA(I,I,I,I,I,I,I),I=1,5)                        
      WRITE(6,*) 'CB=',(CB(I,I,I,I,I,I,I),I=1,5)                        
      WRITE(6,*) 'RA=',(RA(I,I,I),I=1,5)                                
      WRITE(6,*) 'RB=',(RB(I,I,I,I),I=1,5)                              
      WRITE(6,*) 'RC=',(RC(I,I,I),I=1,5)                                
      WRITE(6,*) 'RD=',(RD(I,I,I),I=1,5)                                
      STOP                                                              
      END                                                               