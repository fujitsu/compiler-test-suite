      PROGRAM MAIN                                                    
      REAL*4 RA(5,5,5,5,5,5,5)                                          
      INTEGER*4 H                                                       
      DO 10 H=1,5                                                       
      DO 10 I=1,5                                                       
      DO 10 J=1,5                                                       
      DO 10 K=1,5                                                       
      DO 10 L=1,5                                                       
      DO 10 M=1,5                                                       
      DO 10 N=1,5                                                       
       RA(H,I,J,K,L,M,N)=1.                                             
10    CONTINUE                                                          
      DO 20 H=1,5                                                       
      DO 20 I=1,5                                                       
      DO 20 J=1,5                                                       
      DO 20 K=1,5                                                       
      DO 20 L=1,5                                                       
      DO 20 M=1,5                                                       
      DO 20 N=1,5,2                                                     
       RA(H,I,J,K,L,M,N)=2.                                             
20    CONTINUE                                                          
      DO 30 H=1,5                                                       
      DO 30 I=1,5                                                       
      DO 30 J=1,5                                                       
      DO 30 K=1,5                                                       
      DO 30 L=1,5                                                       
      DO 30 M=1,5,2                                                     
      DO 30 N=1,5                                                       
       RA(H,I,J,K,L,M,N)=3.                                             
30    CONTINUE                                                          
      DO 40 H=1,5                                                       
      DO 40 I=1,5                                                       
      DO 40 J=1,5                                                       
      DO 40 K=1,5                                                       
      DO 40 L=1,5,2                                                     
      DO 40 M=1,5                                                       
      DO 40 N=1,5                                                       
       RA(H,I,J,K,L,M,N)=4.                                             
40    CONTINUE                                                          
      DO 50 H=1,5                                                       
      DO 50 I=1,5                                                       
      DO 50 J=1,5                                                       
      DO 50 K=1,5,2                                                     
      DO 50 L=1,5                                                       
      DO 50 M=1,5                                                       
      DO 50 N=1,5                                                       
       RA(H,I,J,K,L,M,N)=5.                                             
50    CONTINUE                                                          
      DO 60 H=1,5                                                       
      DO 60 I=1,5                                                       
      DO 60 J=1,5,2                                                     
      DO 60 K=1,5                                                       
      DO 60 L=1,5                                                       
      DO 60 M=1,5                                                       
      DO 60 N=1,5                                                       
       RA(H,I,J,K,L,M,N)=5.                                             
60    CONTINUE                                                          
      DO 70 H=1,5                                                       
      DO 70 I=1,5,2                                                     
      DO 70 J=1,5                                                       
      DO 70 K=1,5                                                       
      DO 70 L=1,5                                                       
      DO 70 M=1,5                                                       
      DO 70 N=1,5                                                       
       RA(H,I,J,K,L,M,N)=5.                                             
70    CONTINUE                                                          
      DO 80 H=1,5,2                                                     
      DO 80 I=1,5                                                       
      DO 80 J=1,5                                                       
      DO 80 K=1,5                                                       
      DO 80 L=1,5                                                       
      DO 80 M=1,5                                                       
      DO 80 N=1,5                                                       
       RA(H,I,J,K,L,M,N)=5.                                             
80    CONTINUE                                                          
      WRITE(6,*) 'RA=',(RA(I,I,I,I,I,I,I),I=1,5)                        
      STOP                                                              
      END                                                               
