      PROGRAM MAIN                                                    
      COMPLEX*8 CA(5,5,5,5,5,5,5)                                       
      COMPLEX*8 CB(5,5,5,5,5,5,5)                                       
      REAL*4    RA(5,5,5),RB(5,5,5,5),RC(5,5,5)                         
      INTEGER*4 H                                                       
      DO 10 H=1,5                                                       
      DO 10 I=1,5                                                       
      DO 10 J=1,5                                                       
      DO 10 K=1,5                                                       
      DO 10 L=1,5                                                       
      DO 10 M=1,5                                                       
      DO 10 N=1,5                                                       
       CA(H,I,J,K,L,M,N)=1.                                             
       CB(H,I,J,K,L,M,N)=1.                                             
       RA(I,J,K) =1.                                                    
       RC(I,J,K) =1.                                                    
       RB(I,J,K,L)= 1.                                                  
10    CONTINUE                                                          
      DO 20 H=1,5                                                       
      DO 20 I=1,5                                                       
      DO 20 J=1,5                                                       
      DO 20 K=1,5                                                       
      DO 20 L=1,5                                                       
      DO 20 M=1,5                                                       
      DO 20 N=1,5                                                       
       CA(H,I,J,K,L,M,N) = 1.+CB(H,I,J,K,L,M,N)+RA(I,J,K)               
       IF(RA(I,J,K) .EQ. RB(I,J,K,L)) THEN                              
         RA(I,J,K) = CA(H,I,J,K,L,M,N) + CB(H,I,J,K,L,M,N)              
         IF(RA(I,J,K) .GE. 1.) THEN                                     
           RC(I,J,K) = CA(H,I,J,K,L,M,N) + 5.                           
         ENDIF                                                          
       ENDIF                                                            
20    CONTINUE                                                          
      WRITE(6,*) 'CA=',(CA(I,I,I,I,I,I,I),I=1,5)                        
      WRITE(6,*) 'RA=',(RA(I,I,I),I=1,5)                                
      WRITE(6,*) 'RC=',(RC(I,I,I),I=1,5)                                
      STOP                                                              
      END                                                               
