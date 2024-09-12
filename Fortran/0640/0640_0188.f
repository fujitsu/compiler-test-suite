      PROGRAM MAIN                                                    
      REAL*8 R10(10),R11(10),R12(10)                                    
      REAL*8 R20(10,10),R21(10,10)                                      
      REAL*8 R30(10,10,10),R31(10,10,10),R32(10,10,10),R33(10,10,10)    
      REAL*8 R40(10,10,10,10),R41(10,10,10,10)                          
      data r30/1000*0/
      DO 1 I=1,10                                                       
        DO 1 J=1,10                                                     
          DO 1 K=1,10                                                   
            DO 1 L=1,10                                                 
              R12(I) = I                                                
              R21(I,J) = I*J                                            
              R31(I,J,K) = K + I + J                                    
              R32(I,J,K) = K * I + J                                    
              R33(I,J,K) = I * I + J                                    
              R41(I,J,K,L) = K + I + J + L                              
  1   CONTINUE                                                          
      WRITE(6,*) '----- TEST NO.1 ----- '                               
      DO 10 I=1,10                                                      
        R10(I) = FLOAT(I)                                               
        DO 11 J=1,10                                                    
          R20(I,J) = R21(I,J)                                           
          DO 12 K=1,2                                                   
            R30(I,J,K) = R31(I,J,K) + R20(I,J)                          
            DO 13 L=1,10                                                
              R40(I,J,K,L) = R41(I,J,K,L) + R30(I,J,K)                  
   13       CONTINUE                                                    
            R31(I,J,K) = R30(I,J,K) + R10(I)                            
   12     CONTINUE                                                      
          R21(I,J) = R20(I,J)                                           
   11   CONTINUE                                                        
        R11(I) = - R12(I) + J                                           
        DO 21 J=1,2                                                     
          DO 22 K=1,10                                                  
            DO 23 L=1,10                                                
              R31(K,J,L) = R32(K,J,L)*2.0                               
   23       CONTINUE                                                    
   22     CONTINUE                                                      
   21   CONTINUE                                                        
   10 CONTINUE                                                          
      WRITE(6,*) ' I = ',I,' J = ',J                                    
      WRITE(6,*) ' R10 = ',R10                                          
      WRITE(6,*) ' R20 = ',((R20(I,J),I=1,2),J=4,6)                     
      WRITE(6,*) ' R30 = ',(((R30(I,J,K),I=1,2),J=4,6),K=1,2)           
      WRITE(6,*) ' R40 = ',((((R40(I,J,K,L),I=1,2),J=4,6),K=1,2),L=8,9) 
      WRITE(6,*) ' R31 = ',(((R31(I,J,K),I=2,3),J=7,8),K=9,10)          
      WRITE(6,*) ' R21 = ',((R21(I,J),I=2,6),J=1,3)                     
      WRITE(6,*) ' R11 = ',R11                                          
      WRITE(6,*) ' R31 = ',(((R31(I,J,K),I=5,6),J=7,8),K=1,2)           
      WRITE(6,*) '----- TEST NO.2 ----- '                               
      DO 30 I=1,10                                                      
        DO 31 J=1,10                                                    
          DO 32 K=1,2                                                   
            R30(I,J,K) = R31(I,J,K)                                     
            DO 33 L=1,10                                                
              R40(I,J,K,L) = R41(I,J,K,L) + R30(I,J,K)                  
   33       CONTINUE                                                    
   32     CONTINUE                                                      
   31   CONTINUE                                                        
        DO 41 J=1,2                                                     
          DO 42 K=1,10                                                  
            R33(I,J,K) = R30(I,J,K)*2.                                  
            DO 43 L=1,10                                                
              R31(K,J,L) = R32(K,J,L)*2.0                               
   43       CONTINUE                                                    
            R30(I,J,K) = R32(I,J,K)*2.                                  
   42     CONTINUE                                                      
   41   CONTINUE                                                        
        DO 51 J=1,2                                                     
          DO 52 K=1,10                                                  
            DO 53 L=1,10                                                
              R31(K,J,L) = R32(K,J,L)*2.0                               
   53       CONTINUE                                                    
            R30(I,J,K) = R32(I,J,K)*3.                                  
   52     CONTINUE                                                      
   51   CONTINUE                                                        
   30 CONTINUE                                                          
      WRITE(6,*) ' I = ',I,' J = ',J                                    
      WRITE(6,*) ' R10 = ',R10                                          
      WRITE(6,*) ' R20 = ',((R20(I,J),I=1,2),J=4,6)                     
      WRITE(6,*) ' R30 = ',(((R30(I,J,K),I=1,2),J=4,6),K=1,2)           
      WRITE(6,*) ' R40 = ',((((R40(I,J,K,L),I=1,2),J=4,6),K=1,2),L=8,9) 
      WRITE(6,*) ' R31 = ',(((R31(I,J,K),I=2,3),J=7,8),K=9,10)          
      WRITE(6,*) ' R21 = ',((R21(I,J),I=2,6),J=1,3)                     
      WRITE(6,*) ' R11 = ',R11                                          
      WRITE(6,*) ' R31 = ',(((R31(I,J,K),I=5,6),J=7,8),K=1,2)           
      STOP                                                              
      END                                                               
