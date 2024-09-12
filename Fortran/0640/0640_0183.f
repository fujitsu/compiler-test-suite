      PROGRAM MAIN                                                    
      REAL  R10(10,3,3,3),R11(10,3,3,3,3),R12(10,3,3,3,3,3)             
      DO 10 I=1,10                                                      
        DO 10 J=1,3                                                     
          DO 10 K=1,3                                                   
            RS10 = I + J + K                                            
            DO 11 L=1,3                                                 
              R10(I,J,K,L) = RS10                                       
              DO 12 M=1,3                                               
                R11(I,J,K,L,M) = RS10                                   
                DO 13 N=1,3                                             
                  R12(I,J,K,L,M,N) = RS10                               
   13           CONTINUE                                                
   12         CONTINUE                                                  
   11       CONTINUE                                                    
   10    CONTINUE                                                       
      WRITE(6,*) ' RS10 = ',RS10                                        
      WRITE(6,*) ' R10  = ',(R10(I,1,2,1),I=1,10)                       
      WRITE(6,*) ' R11  = ',(R11(I,1,2,3,1),I=1,10)                     
      WRITE(6,*) ' R12  = ',(R12(I,3,1,2,3,1),I=1,10)                   
      STOP                                                              
      END                                                               
