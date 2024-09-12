      PROGRAM MAIN                                                    
      LOGICAL LA(10),LB(10),LC(10),LD(10),LE(10),LF(10),LS              
      LOGICAL M(10)                                                     
      DATA LA/5*.TRUE.,5*.FALSE./,LB/10*.TRUE./,LC/10*.TRUE./           
      DATA LD/10*.FALSE./,LE/10*.FALSE./,M/5*.TRUE.,5*.FALSE./          
      DATA LF/3*.FALSE.,3*.TRUE.,3*.FALSE.,.TRUE./                      

      K = 0                                                             
      DO 10 I=2,10                                                      
        LS = LA(I)                                                      
        LB(I) = LB(I-1).OR.LC(I)                                        
        IF(M(I)) THEN                                                   
          K=K+1                                                         
          LD(K)=LS.OR.LE(I)                                             
        ENDIF                                                           
  10  CONTINUE                                                          
      WRITE(6,*) LS,LD                                                  

      K = 0                                                             
      DO 20 I=2,10                                                      
        LS = LA(I)                                                      
        LB(I) = LB(I-1).AND.LC(I)                                       
        IF(M(I)) THEN                                                   
          K=K+1                                                         
          LC(I)=LS.OR.LD(K)                                             
        ENDIF                                                           
  20  CONTINUE                                                          
      WRITE(6,*) LS,LC                                                  

      K = 0                                                             
      J = 0                                                             
      DO 30 I=2,10                                                      
        LS = LA(I)                                                      
        LB(I) = .NOT.LB(I-1)                                            
        IF(M(I)) THEN                                                   
          K=K+1                                                         
          LC(K)=LS.OR.LD(I)                                             
        ELSE                                                            
          J=J+1                                                         
          LE(I)=LS.AND.LF(J)                                            
        ENDIF                                                           
  30  CONTINUE                                                          
      WRITE(6,*) LS,LC,LE                                               
      STOP                                                              
      END                                                               
