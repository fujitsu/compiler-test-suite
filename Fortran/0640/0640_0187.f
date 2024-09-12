      PROGRAM MAIN                                                    
      REAL*8 D10(10),D11(10)/10*0/,D12(10),D13(10),D14(10)              
      REAL*8 D20(10,10),D21(10,10),D22(10,10)                           
      REAL*8 D30(10,10,10)/1000*0./,D31(10,10,10)/1000*0/,D32(10,10,10) 
      REAL*8 D40(10,10,10,10)                                           
      DATA   M/0/                                                       

      D20 = 0
      DO 1 I=1,10                                                       
       DO 1 J=1,10                                                      
        DO 1 K=1,10                                                     
          D10(I) = I                                                    
          D12(I) = - I                                                  
          D21(I,J) = I*J                                                
          D22(I,J) = I*J*2                                              
          D32(I,J,K) = K + I + J                                        
          DO 1 L=1,10                                                   
           D40(J,L,K,I)=0.                                              
  1   CONTINUE                                                          
      WRITE(6,*) '----- TEST NO.1 ----- '                               
      S1 = 0.                                                           
      S2 = 0.                                                           
      DO 10 I=1,10                                                      
        S1 = S1 + D10(I)                                                
        D11(I) = D12(I)*D10(I)                                          
        DO 11 J=1,2                                                     
          DO 12 K=1,10                                                  
            D30(I,J,K) = D11(K)*D12(K)                                  
            DO 13 L=1,10                                                
              D40(I,J,K,L) = I + J + K + L + D30(I,J,L)                 
   13       CONTINUE                                                    
            S2 = S2 + D40(I,J,K,2)                                      
            D31(I,J,K) = D32(I,J,K)                                     
   12     CONTINUE                                                      
          D20(I,J) = D21(I,J) + S2                                      
   11   CONTINUE                                                        
        D13(I) = D11(I) + D10(I)                                        
        D14(I) = - D13(I) + I                                           
   10 CONTINUE                                                          
      WRITE(6,*) ' S1 = ',S1                                            
      WRITE(6,*) ' D11 = ',D11                                          
      WRITE(6,*) ' D30 = ',(((D30(I,J,K),I=1,2),J=2,3),K=3,4)           
      WRITE(6,*) ' D40 = ',((((D40(I,J,K,L),I=1,2),J=2,3),K=3,4),L=4,5) 
      WRITE(6,*) ' S2 = ',S2                                            
      WRITE(6,*) ' D31 = ',(((D31(I,J,K),I=2,3),J=4,5),K=6,7)           
      WRITE(6,*) ' D20 = ',((D20(I,J),I=1,3),J=5,7)                     
      WRITE(6,*) ' D13 = ',D13                                          
      WRITE(6,*) ' D14 = ',D14                                          
      WRITE(6,*) '----- TEST NO.2 ----- '                               
      S1 = 0.                                                           
      S2 = 0.                                                           
      DO 20 I=1,10                                                      
        D11(I) = D12(I)*D10(I)                                          
        DO 21 J=1,10                                                    
          D20(I,J) = D11(J+M)                                           
          DO 22 K=1,10                                                  
            D30(I,J,K) = D11(K)*D12(K)                                  
            DO 23 L=1,10                                                
              D40(I,J,K,L) = I + D31(L,I,J) + D30(I,J,L)                
   23       CONTINUE                                                    
            D31(I,J,K) = D32(I,J,K) + D14(K)                            
   22     CONTINUE                                                      
          D21(I,J) = D20(I,J) + D22(J,I)                                
          S2 = S2 + D21(I,J)                                            
   21   CONTINUE                                                        
        D14(I) = - D11(I) - I                                           
   20 CONTINUE                                                          
      WRITE(6,*) ' S2  = ',S2                                           
      WRITE(6,*) ' D11 = ',D11                                          
      WRITE(6,*) ' D20 = ',((D20(I,J),I=1,3),J=5,7)                     
      WRITE(6,*) ' D30 = ',(((D30(I,J,K),I=1,2),J=2,3),K=3,4)           
      WRITE(6,*) ' D40 = ',((((D40(I,J,K,L),I=1,2),J=2,3),K=3,4),L=4,5) 
      WRITE(6,*) ' D31 = ',(((D31(I,J,K),I=1,2),J=2,3),K=3,4)           
      WRITE(6,*) ' D21 = ',((D21(I,J),I=2,4),J=6,8)                     
      WRITE(6,*) ' D14 = ',D14                                          
      STOP                                                              
      END                                                               
