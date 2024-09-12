      PROGRAM MAIN                                                    
      REAL       R10(10,3,3),R11(10,3,3,3),R12(10,3,3,3,3)              
      WRITE(6,*) '----- TEST NO.1 -----'
        DO 10 I=1,10                                                    
          DO 10 J=1,3                                                   
            RS10 = I                                                    
            DO 11 K=1,3                                                 
              R10(I,J,K) = RS10                                         
              DO 12 L=1,3                                               
                R11(I,J,K,L) = RS10                                     
                DO 13 M=1,3                                             
                  R12(I,J,K,L,M) = RS10                                 
   13           CONTINUE                                                
   12         CONTINUE                                                  
   11       CONTINUE                                                    
   10    CONTINUE                                                       
      WRITE(6,*) ' I = ',I,' J = ',J,' K = ',K,' L = ',L,' M = ',M      
      WRITE(6,*) ' RS10 = ',RS10                                        
      WRITE(6,*) '----- TEST NO.2 -----'
        DO 20 I=1,10                                                    
          DO 20 J=1,3                                                   
            RS10 = I                                                    
            DO 21 K=1,3                                                 
              R10(I,J,K) = RS10                                         
              DO 22 L=1,3                                               
                R11(I,J,K,L) = RS10                                     
                DO 23 M=1,3                                             
                  R12(I,J,K,L,M) = RS10                                 
   23           CONTINUE                                                
                R11(I,J,K,L) = RS10 + 1.                                
   22         CONTINUE                                                  
              R10(I,J,K) = RS10 * 2.                                    
   21       CONTINUE                                                    
            RS11 = RS10                                                 
   20    CONTINUE                                                       
      WRITE(6,*) ' RS10 = ',RS10                                        
      WRITE(6,*) ' R10  = ',(R10(I,1,2),I=1,10)                         
      WRITE(6,*) ' R11  = ',(R11(I,1,2,3),I=1,10)                       
      WRITE(6,*) ' R12  = ',(R12(I,3,1,2,2),I=1,10)                     
      STOP                                                              
      END                                                               
