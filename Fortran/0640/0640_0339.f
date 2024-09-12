      INTEGER    I10(10),I11(10),I12(10),I13(10)                        
      REAL       R10(10),R11(10)                                        
      REAL*8     D10(10),D11(10),D12(10),D10S                           
      COMPLEX    C10(10),C11(10),C12(10)                                
      COMPLEX*16 CD10(10),CD11(10)                                      
      LOGICAL    L10(10),L11(10),L12(10),L10S                           
      DATA  L10/5*.TRUE.,5*.FALSE./,I10/1,1,1,2,2,2,3,3,3,4/,I11/10*2/, 
     1      R10/10*8/,R11/2,4,2,4,1,3*3,2*2/,I12/1,2,3,4,5,6,7,8,9,10/, 
     2      R10S/2/,D10S/0/,D11/4*1,4*2,2*3/,C11/3*(0,1),3*(1,0),       
     3      3*(1,1),(0,0)/,C12/10*(1,1)/,D12/10*1/,K/6/,CD11/5*(1,1),   
     4      2*(1,1),2*(1,0),(0,1)/,I13/1,2,3,4,5,6,7,8,9,10/,N/10/      

      D10 = 0
      L11 = .false.
      C10 = 0
      L12 = .false.
      CD10 = 0
          DO 10 I=1,N                                                   
            IF (L10(I)) THEN                                            
              I10S = I10(I)*I11(I) - I                                  
              R10S = R10(I)/R11(I)                                      
              I11S = I10S + I10(I)                                      
              D10(I12(I)) = I10S + I11S +R10(I)                         
              L10S = R10S .GT.R11(I)                                    
              L11(I) = L10S                                             
              D10S = D10S + D11(I)                                      
              C10(I13(I)) = C11(I)/C12(I)                               
            ELSE                                                        
              I11S = I11(I) + I10(I) + I                                
              I10S = I11S * I10(I) - I11S                               
              R10S = R10(I) * R11(I)                                    
              L10S = I11S .LE. I10S                                     
              L12(I) = L10S                                             
              D12(K) = D12(K) + R10S                                    
              CD10(I12(I)) = CD11(I)**I11S                              
            ENDIF                                                       
   10     CONTINUE                                                      
      WRITE(6,*) ' D10  = ',D10                                         
      WRITE(6,*) ' L11  = ',L11                                         
      WRITE(6,*) ' D10S = ',D10S                                        
      WRITE(6,*) ' C10  = ',C10                                         
      WRITE(6,*) ' L12  = ',L12                                         
      WRITE(6,*) ' D12  = ',D12                                         
      WRITE(6,*) ' CD10 = ',CD10                                        
      STOP                                                              
      END                                                               
