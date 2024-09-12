      PROGRAM MAIN                                                    
      DATA      N1/10/,N2/10/,N3/10/                                    
      INTEGER*4   IA(10,10),IB(10,10),IC(10,10),IS1                     
      INTEGER*2   IHA(10,10),IHB(10,10),IHC(10,10),IHS                  
      LOGICAL*4   LA(10,10),LB(10,10),LC(10,10),LS1                     
      LOGICAL*1   LBA(10,10),LBB(10,10),LBC(10,10),LBS1                 
      REAL        RA(10,10),RB(10,10),RC(10,10),RS1                     
      REAL*8      DA(10,10),DB(10,10),DC(10,10),DS1                     
      REAL*8      QA(10,10),QB(10,10),QC(10,10),QS1                     
      COMPLEX*8   CA(10,10),CB(10,10),CC(10,10),CS1                     
      COMPLEX*16  CDA(10,10),CDB(10,10),CDC(10,10),CDS1                 
      COMPLEX*16  CQA(10,10),CQB(10,10),CQC(10,10),CQS1                 
      DO 1 J=1,N1                                                       
        DO 1 I=1,N2                                                     
          IA(I,J) = 0                                                   
          IB(I,J) = I+J                                                 
          IC(I,J) = I-J                                                 
          RA(I,J) = 0                                                   
          RB(I,J) = I+J                                                 
          RC(I,J) = I-J                                                 
          DA(I,J) = 0                                                   
          DB(I,J) = I+J                                                 
          DC(I,J) = I-J                                                 
          QA(I,J) = 0                                                   
          QB(I,J) = I+J                                                 
          QC(I,J) = I-J                                                 
          IHA(I,J) = 0                                                  
          IHB(I,J) = I+J                                                
          IHC(I,J) = I-J                                                
          LA(I,J) = .FALSE.                                             
          LB(I,J) = 0.EQ.MOD(I,2)                                       
          LC(I,J) = 0.EQ.MOD(I,3)                                       
          LBA(I,J) = .FALSE.                                            
          LBB(I,J) = 0.EQ.MOD(I,4)                                      
          LBC(I,J) = 0.EQ.MOD(I,5)                                      
          CA(I,J) = 0                                                   
          CB(I,J) = I-1                                                 
          CC(I,J) = I+1                                                 
          CDA(I,J) = 0                                                  
          CDB(I,J) = I-1                                                
          CDC(I,J) = I+1                                                
          CQA(I,J) = 0                                                  
          CQB(I,J) = I-1                                                
          CQC(I,J) = I+1                                                
 1    CONTINUE                                                          
      WRITE(6,*) '----- TEST NO.1 -----'
      DO 100 I=1,N1                                                     
        DA(I,1) = DSQRT(DABS(DB(I,1)))*DC(I,1)                          
        DO 10 J=1,10                                                    
          DO 10 K=1,10                                                  
            IA(J,K) = IB(J,K) + IC(J,K)                                 
   10   CONTINUE                                                        
        DC(I,2) = DSQRT(DABS(DA(I,2)))+ DB(I,2)                         
        DO 11 L=1,N2                                                    
          DO 11 M=1,N2                                                  
            RA(L,M) = RB(L,M)*RC(L,M)                                   
   11     CONTINUE                                                      
  100 CONTINUE                                                          
      WRITE(6,*) '----- TEST NO.2 -----'
      DO 200 I=1,N1                                                     
        DA(I,1) = DSQRT(DABS(DB(I,1)))*DC(I,1)                          
        DO 20 J=1,N2                                                    
          DO 20 K=1,N2                                                  
            CA(J,K) = CB(J,K) + CC(J,K)                                 
   20   CONTINUE                                                        
        DC(I,2) = DSQRT(DABS(DA(I,2)))+ DB(I,2)                         
        DS1 = 0.0                                                       
        DO 21 L=1,N2                                                    
          DO 21 M=1,N2                                                  
            RA(M,L) = RB(M,L)*RC(M,L)                                   
            DS1 = DS1 + DB(M,L)                                         
   21     CONTINUE                                                      
  200 CONTINUE                                                          
      WRITE(6,*) ' DS1 = ',DS1                                          
      WRITE(6,*) '----- TEST NO.3 -----'
      DO 300 I=1,N1                                                     
        DA(I,1) = DSQRT(DABS(DB(I,1)))*DC(I,1)                          
        DO 30 J=1,10                                                    
          DO 30 K=1,10                                                  
            CDA(J,K) = CDB(J,K) + CDC(J,K)                              
   30   CONTINUE                                                        
        DC(I,2) = DSQRT(DABS(DA(I,2)))+ DB(I,2)                         
        DO 31 L=1,N2                                                    
          DO 31 M=1,N2                                                  
            QA(L,M) = QB(L,M)*QC(M,L)                                   
   31     CONTINUE                                                      
  300 CONTINUE                                                          
      WRITE(6,*) '----- TEST NO.4 -----'
      DO 400 I=1,N1                                                     
        DA(I,1) = DSQRT(DABS(DB(I,1)))*DC(I,1)                          
        IS1 = 0                                                         
        DO 40 J=1,N2                                                    
          DO 40 K=1,N3                                                  
            CQA(K,J) = CQB(K,J) * CQC(K,J)                              
   40   CONTINUE                                                        
        DC(I,2) = DSQRT(DABS(DA(I,2)))+ DB(I,2)                         
        DO 41 L=1,N2                                                    
          DO 41 M=1,N2                                                  
            IS1 = IS1 + IB(L,M)                                         
            IA(L,M) = IB(L,M) + IC(L,M)                                 
            RA(L,M) = RB(L,M)*RC(M,L)                                   
   41     CONTINUE                                                      
  400 CONTINUE                                                          
      WRITE(6,*) '----- TEST NO.5 -----'
      DO 500 I=1,N1                                                     
        DA(I,1) = DSQRT(DABS(DB(I,1)))*DC(I,1)                          
        DO 50 J=1,N3                                                    
          DO 50 K=1,N3                                                  
            QA(J,K) = QB(J,K) + QC(K,J)                                 
   50   CONTINUE                                                        
        DC(I,2) = DSQRT(DABS(DA(I,2)))+ DB(I,2)                         
        DO 51 L=1,N2                                                    
          DO 51 M=1,N3                                                  
            IHA(L,M) = IHB(L,M)*IHC(M,L)                                
   51     CONTINUE                                                      
  500 CONTINUE                                                          
      WRITE(6,*) '----- TEST NO.6 -----'
      DO 600 I=1,N1                                                     
        DA(I,1) = DSQRT(DABS(DB(I,1)))*DC(I,1)                          
        DO 60 J=1,N2                                                    
          DO 60 K=1,N3                                                  
   60   CONTINUE                                                        
        DC(I,2) = DSQRT(DABS(DA(I,2)))+ DB(I,2)                         
        DO 61 L=1,10                                                    
          DO 61 M=1,10                                                  
            RA(L,M) = RB(L,M)*RC(L,M)                                   
   61     CONTINUE                                                      
  600 CONTINUE                                                          
      WRITE(6,*) 'IA  = ',IA                                            
      WRITE(6,*) 'RA  = ',RA                                            
      WRITE(6,*) 'DA  = ',DA                                            
      WRITE(6,*) 'DC  = ',DC                                            
      WRITE(6,*) 'IHA  = ',IHA                                          
      WRITE(6,*) 'QA  = ',QA                                            
      WRITE(6,*) 'CA  = ',CA                                            
      WRITE(6,*) 'CDA  = ',CDA                                          
      WRITE(6,*) 'CQA  = ',CQA                                          
      STOP                                                              
      END                                                               







