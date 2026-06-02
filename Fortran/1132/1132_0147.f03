      PROGRAM CV5216                                                    
        type STR
           REAL*8 D10(10),D11(10)/10*0/,D12(10),D13(10),D14(10)              
           REAL*8 D20(10,10),D21(10,10),D22(10,10)                           
           REAL*8 D30(10,10,10)/1000*0./,D31(10,10,10)/1000*0/,D32(10,10,10) 
           REAL*8 D40(10,10,10,10)                                           
        end type STR
        TYPE(STR) STR_DATA

        DATA   M/0/                                                       

      STR_DATA%D20 = 0
                                                                       
      DO 1 I=1,10                                                       
       DO 1 J=1,10                                                      
        DO 1 K=1,10                                                     
          STR_DATA%D10(I) = I                                                    
          STR_DATA%D12(I) = - I                                                  
          STR_DATA%D21(I,J) = I*J                                                
          STR_DATA%D22(I,J) = I*J*2                                              
          STR_DATA%D32(I,J,K) = K + I + J                                        
          DO 1 L=1,10                                                   
           STR_DATA%D40(J,L,K,I)=0.                                              
  1   CONTINUE                                                          
                                                                       
      WRITE(6,*) '***** CVCT5216 *****'                                 
                                                                       
      WRITE(6,*) '----- TEST NO.1 ----- '                               
      S1 = 0.                                                           
      S2 = 0.                                                           
      DO 10 I=1,10                                                      
        S1 = S1 + STR_DATA%D10(I)                                                
        STR_DATA%D11(I) = STR_DATA%D12(I)*STR_DATA%D10(I)                                          
        DO 11 J=1,2                                                     
          DO 12 K=1,10                                                  
            STR_DATA%D30(I,J,K) = STR_DATA%D11(K)*STR_DATA%D12(K)                                  
            DO 13 L=1,10                                                
              STR_DATA%D40(I,J,K,L) = I + J + K + L + STR_DATA%D30(I,J,L)                 
   13       CONTINUE                                                    
            S2 = S2 + STR_DATA%D40(I,J,K,2)                                      
            STR_DATA%D31(I,J,K) = STR_DATA%D32(I,J,K)                                     
   12     CONTINUE                                                      
          STR_DATA%D20(I,J) = STR_DATA%D21(I,J) + S2                                      
   11   CONTINUE                                                        
        STR_DATA%D13(I) = STR_DATA%D11(I) + STR_DATA%D10(I)                                        
        STR_DATA%D14(I) = - STR_DATA%D13(I) + I                                           
   10 CONTINUE                                                          
      WRITE(6,*) ' S1 = ',S1                                            
      WRITE(6,*) ' D11 = ',STR_DATA%D11                                          
      WRITE(6,*) ' D30 = ',(((STR_DATA%D30(I,J,K),I=1,2),J=2,3),K=3,4)           
      WRITE(6,*) ' D40 = ',((((STR_DATA%D40(I,J,K,L),I=1,2),J=2,3),K=3,4),L=4,5) 
      WRITE(6,*) ' S2 = ',S2                                            
      WRITE(6,*) ' D31 = ',(((STR_DATA%D31(I,J,K),I=2,3),J=4,5),K=6,7)           
      WRITE(6,*) ' D20 = ',((STR_DATA%D20(I,J),I=1,3),J=5,7)                     
      WRITE(6,*) ' D13 = ',STR_DATA%D13                                          
      WRITE(6,*) ' D14 = ',STR_DATA%D14                                          
                                                                       
      WRITE(6,*) '----- TEST NO.2 ----- '                               
      S1 = 0.                                                           
      S2 = 0.                                                           
      DO 20 I=1,10                                                      
        STR_DATA%D11(I) = STR_DATA%D12(I)*STR_DATA%D10(I)                                          
        DO 21 J=1,10                                                    
          STR_DATA%D20(I,J) = STR_DATA%D11(J+M)                                           
          DO 22 K=1,10                                                  
            STR_DATA%D30(I,J,K) = STR_DATA%D11(K)*STR_DATA%D12(K)                                  
            DO 23 L=1,10                                                
              STR_DATA%D40(I,J,K,L) = I + STR_DATA%D31(L,I,J) + STR_DATA%D30(I,J,L)                
   23       CONTINUE                                                    
            STR_DATA%D31(I,J,K) = STR_DATA%D32(I,J,K) + STR_DATA%D14(K)                            
   22     CONTINUE                                                      
          STR_DATA%D21(I,J) = STR_DATA%D20(I,J) + STR_DATA%D22(J,I)                                
          S2 = S2 + STR_DATA%D21(I,J)                                            
   21   CONTINUE                                                        
        STR_DATA%D14(I) = - STR_DATA%D11(I) - I                                           
   20 CONTINUE                                                          
      WRITE(6,*) ' S2  = ',S2                                           
      WRITE(6,*) ' D11 = ',STR_DATA%D11                                          
      WRITE(6,*) ' D20 = ',((STR_DATA%D20(I,J),I=1,3),J=5,7)                     
      WRITE(6,*) ' D30 = ',(((STR_DATA%D30(I,J,K),I=1,2),J=2,3),K=3,4)           
      WRITE(6,*) ' D40 = ',((((STR_DATA%D40(I,J,K,L),I=1,2),J=2,3),K=3,4),L=4,5) 
      WRITE(6,*) ' D31 = ',(((STR_DATA%D31(I,J,K),I=1,2),J=2,3),K=3,4)           
      WRITE(6,*) ' D21 = ',((STR_DATA%D21(I,J),I=2,4),J=6,8)                     
      WRITE(6,*) ' D14 = ',STR_DATA%D14                                          
                                                                       
      STOP                                                              
      END                                                               
