      PROGRAM MAIN                                                    
      INTEGER I10(1000),I11(1000),I12(1000),I13(1000),I14(1000)         
      REAL    R10(1000),R11(1000),R12(1000),R13(1000),R14(1000)         
      DOUBLE PRECISION  D10(1000),D11(1000),D12(1000),D13(1000)         
      DOUBLE PRECISION  D14(1000)                                       
      DATA N/1000/                                                      
      CALL INIT(I10,I11,I12,I13,I14,R10,R11,R12,R13,R14,D10,D11,D12,    
     1          D13,D14,N)                                              
      CALL SUB1(I10,I11,I12,I13,I14,R10,R11,R12,R13,R14,D10,D11,D12,    
     1          D13,D14,N)                                              
      WRITE(6,*) (I10(I),I=1,1000)                                      
      WRITE(6,*) (R10(J),J=1,1000)                                      
      STOP                                                              
      END                                                               
      SUBROUTINE INIT(I10,I11,I12,I13,I14,R10,R11,R12,R13,R14,          
     1                D10,D11,D12,D13,D14,N)                            
      INTEGER I10(N),I11(N),I12(N),I13(N),I14(N)                        
      REAL     R10(N),R11(N),R12(N),R13(N),R14(N)                       
      DOUBLE PRECISION       D10(N),D11(N),D12(N),D13(N),D14(N)         
      IS4 = 3                                                           
      DO 10 I=1,N                                                       
        IS1    = I                                                      
        I10(I) = IS1                                                    
        IS2    = IS1 + I*2                                              
        I11(I) = IS2                                                    
        I12(I) = IS1 + 1                                                
        IS3 = - I + IS2 + I10(I)                                        
        I13(I) = IS3 + 2                                                
        I14(I) = IS4                                                    
 10   CONTINUE                                                          
      DO 20 I=1,N                                                       
        R10(I) = IS1 + IS2                                              
        R11(I) = IS4*IS3                                                
        R12(I) = -IS1                                                   
        R13(I) = IS2*3                                                  
        R14(I) = IS1-IS2                                                
        D10(I) = IS1 + IS2                                              
        D11(I) = IS4*IS3                                                
        D12(I) = -IS1                                                   
        D13(I) = IS2*3                                                  
        D14(I) = IS1-IS2                                                
  20  CONTINUE                                                          
      RETURN                                                            
      END                                                               
      SUBROUTINE SUB1(I10,I11,I12,I13,I14,R10,R11,R12,R13,R14,          
     1                D10,D11,D12,D13,D14,N)                            
      INTEGER I10(N),I11(N),I12(N),I13(N),I14(N)                        
      REAL     R10(N),R11(N),R12(N),R13(N),R14(N)                       
      DOUBLE PRECISION       D10(N),D11(N),D12(N),D13(N),D14(N)         
      RETURN                                                            
      END                                                               
