      PROGRAM MAIN                                                    
      LOGICAL    L10(100,5),LS10,LS11,L11(10,5,5),L12(10)               
      INTEGER    I10(100,5),IS10,IS11,I11(10,5,5),I12(10)               
      REAL       R10(100,5),RS10,RS11,R11(10,5,5),R12(10),R13(100)      
      REAL*8     D10(100,5),DS10,DS11,D11(10,5,5),D12(10)               
      COMPLEX    C10(100,5),CS10,CS11,C11(10,5,5),C12(10)               
      COMPLEX*16 CD10(100,5),CDS10,CDS11,CD11(10,5,5),CD12(10)          
      WRITE(6,*) '----- TEST NO.1 -----'
        DO 10 I=1,100                                                   
          LS10 = 0.EQ.MOD(I,2)                                          
          IS10 = I                                                      
          RS10 = FLOAT(I)                                               
          DS10 = DBLE(RS10)                                             
          CS10 = DS10                                                   
          CDS10 = CS10                                                  
          DO 10 K=1,5                                                   
            L10(I,K) = LS10                                             
            I10(I,K) = IS10                                             
            R10(I,K) = RS10                                             
            D10(I,K) = DS10                                             
            C10(I,K) = CS10                                             
            CD10(I,K) = CDS10 + I10(I,K) +                              
     1                  R10(I,K) + D10(I,K) + C10(I,K)                  
   10   CONTINUE                                                        
      WRITE(6,*) ' I = ',I,' K = ',K                                    
      WRITE(6,*) ' IS10 = ',IS10,' RS10 = ',RS10,' DS10 = ',DS10        
      WRITE(6,*) ' CS10 = ',CS10,' CDS10 = ',CDS10,' LS10 = ',LS10      
      WRITE(6,*) ' L10 = ',(L10(I1,5),I1=1,50)                          
      WRITE(6,*) ' CD10 = ',(CD10(I1,5),I1=1,50)                        
      WRITE(6,*) '----- TEST NO.2 -----'
        DO 20 I=1,10                                                    
          LS10 = 0.EQ.MOD(I,2)                                          
          IS10 = I                                                      
          RS10 = FLOAT(I)                                               
          DS10 = DBLE(RS10)                                             
          CS10 = DS10                                                   
          CDS10 = CS10                                                  
          DO 21 K=1,5                                                   
            LS11 = .NOT.LS10                                            
            IS11 = -IS10                                                
            RS11 = -RS10                                                
            DS11 = -DS10                                                
            CS11 = -CS10                                                
            CDS11 = CS11 - DS11 + RS11 * IS11                           
            CD10(I,K) = CDS11                                           
            DO 22 J=1,5                                                 
              I11(I,J,K) = IS10 + IS11                                  
              R11(I,J,K) = RS10 + RS11                                  
              D11(I,J,K) = DS10 + DS11                                  
              C11(I,J,K) = CS10 + CS11                                  
              CD11(I,J,K) = CDS10 + CDS11 + C11(I,J,K) + D11(I,J,K)     
     1                    + R11(I,J,K) + I11(I,J,K)                     
              L11(I,J,K) = LS10.OR.LS11                                 
   22       CONTINUE                                                    
            L10(I,K) = LS11                                             
            I10(I,K) = IS11                                             
            R10(I,K) = RS11                                             
            D10(I,K) = DS11                                             
            C10(I,K) = CS11                                             
            CD10(I,K) = CDS11 * C10(I,K) + R10(I,K) + IS11              
   21     CONTINUE                                                      
          L12(I) = LS10                                                 
          I12(I) = IS10                                                 
          R12(I) = RS10                                                 
          D12(I) = DS10                                                 
          C12(I) = CS10 + CDS10 + DS10*RS10 - IS10                      
          CD12(I) = CDS10                                               
   20   CONTINUE                                                        
      WRITE(6,*) ' I = ',I,' K = ',K,' J = ',J                          
      WRITE(6,*) ' IS10 = ',IS10,' RS10 = ',RS10,' DS10 = ',DS10        
      WRITE(6,*) ' CS10 = ',CS10,' CDS10 = ',CDS10,' LS10 = ',LS10      
      WRITE(6,*) ' IS11 = ',IS11,' RS11 = ',RS11,' DS11 = ',DS11        
      WRITE(6,*) ' CS11 = ',CS11,' CDS11 = ',CDS11,' LS11 = ',LS11      
      WRITE(6,*) ' L11= ',(L11(I1,5,2),I1=1,10)                         
      WRITE(6,*) ' CD11 = ',(CD11(5,I1,3),I1=1,5)                       
      WRITE(6,*) ' L10 = ',(L10(I1,5),I1=1,10)                          
      WRITE(6,*) ' CD10 = ',(CD10(I1,5),I1=1,10)                        
      WRITE(6,*) ' L12 = ',(L12(I1),I1=1,10)                            
      WRITE(6,*) ' C12 = ',(C12(I1),I1=1,10)                            
      WRITE(6,*) '----- TEST NO.3 -----'
      DO 30 I=1,10                                                      
       RS10 = R12(I)                                                    
       DO 31 J=1,10                                                     
        RS11 = RS10                                                     
        DO 32 K=1,10                                                    
         RS12 = RS11                                                    
         DO 33 L=1,5                                                    
          R10(I,L) = RS11                                               
   33    CONTINUE                                                       
   32   CONTINUE                                                        
   31  CONTINUE                                                         
   30 CONTINUE                                                          
      WRITE(6,*) ' R10 = ',(R10(I,3),I=1,10)                            
      STOP                                                              
      END                                                               
