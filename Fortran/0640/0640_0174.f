      PROGRAM MAIN                                                    
      DATA      N1/7/,N2/7/,N3/7/                                       
      INTEGER*4   IA(7,7,7),IB(7,7,7),IC(7,7,7),IS1                     
      INTEGER*2   IHA(7,7,7),IHB(7,7,7),IHC(7,7,7),IHS1                 
      LOGICAL*4   LA(7,7,7),LB(7,7,7),LC(7,7,7),LS1                     
      LOGICAL*1   LBA(7,7,7),LBB(7,7,7),LBC(7,7,7),LBS1                 
      REAL        RA(7,7,7),RB(7,7,7),RC(7,7,7),RS1                     
      REAL*8      DA(7,7,7),DB(7,7,7),DC(7,7,7),DS1                     
      REAL*8      QA(7,7,7),QB(7,7,7),QC(7,7,7),QS1                     
      COMPLEX*8   CA(7,7,7),CB(7,7,7),CC(7,7,7),CS1                     
      COMPLEX*16  CDA(7,7,7),CDB(7,7,7),CDC(7,7,7),CDS1                 
      COMPLEX*16  CQA(7,7,7),CQB(7,7,7),CQC(7,7,7),CQS1                 
      DO 1 K=1,N1                                                       
       DO 1 J=1,N1                                                      
        DO 1 I=1,N2                                                     
          IA(I,J,K) = 0                                                 
          IB(I,J,K) = I+J+K                                             
          IC(I,J,K) = I-J-K                                             
          RA(I,J,K) = 0                                                 
          RB(I,J,K) = I+J+K                                             
          RC(I,J,K) = I-J*K                                             
          DA(I,J,K) = 0                                                 
          DB(I,J,K) = I+J*K                                             
          DC(I,J,K) = I-J/K                                             
          QA(I,J,K) = 0                                                 
          QB(I,J,K) = I+J*K                                             
          QC(I,J,K) = I-J+K                                             
          IHA(I,J,K) = 0                                                
          IHB(I,J,K) = I+J-K                                            
          IHC(I,J,K) = I-J*K                                            
          LA(I,J,K) = .FALSE.                                           
          LB(I,J,K) = 0.EQ.MOD(I,2)                                     
          LC(I,J,K) = 1.EQ.MOD(I,3)                                     
          LBA(I,J,K) = .FALSE.                                          
          LBB(I,J,K) = 0.EQ.MOD(I,2)                                    
          LBC(I,J,K) = .NOT.(0.EQ.MOD(I,2))                             
          CA(I,J,K) = 0                                                 
          CB(I,J,K) = I-J + K                                           
          CC(I,J,K) = I+J *K                                            
          CDA(I,J,K) = 0                                                
          CDB(I,J,K) = I-K + J                                          
          CDC(I,J,K) = I+J + K                                          
          CQA(I,J,K) = 0                                                
          CQB(I,J,K) = I-J *K                                           
          CQC(I,J,K) = I+J /K                                           
 1    CONTINUE                                                          
      IS1 = 0                                                           
      RS1 = 0.                                                          
      DS1 = 0.                                                          
      CS1 = (0.,0.)                                                     
      CDS1 = (0,0)                                                      
      CQS1 = (0,0)                                                      
      QS1 = 0.                                                          
      IHS1 = 0                                                          
      LS1 = .FALSE.                                                     
      LBS1 = .FALSE.                                                    
      WRITE(6,*) '----- TEST NO.1 -----'
        DO 10 I1=1,7                                                    
         DO 10 J1=1,7                                                   
          DO 10 K1=1,7                                                  
            IA(I1,J1,K1) = IB(I1,J1,K1) + IC(I1,J1,K1)                  
   10     CONTINUE                                                      
      WRITE(6,*) '----- TEST NO.2 -----'
        DO 20 I2=1,7                                                    
         DO 20 J2=1,7                                                   
          DO 20 K2=1,7                                                  
            RA(I2,K2,5) = RB(I2,K2,5) * RC(I2,K2,5)                     
   20     CONTINUE                                                      
      WRITE(6,*) '----- TEST NO.3 -----'
        DO 30 I3=1,7                                                    
         DO 30 J3=1,7                                                   
          DO 30 K3=1,7                                                  
            DA(I3,J3,3) = DB(I3,J3,3) - DC(I3,J3,3)                     
   30     CONTINUE                                                      
      WRITE(6,*) '----- TEST NO.4 -----'
        DO 40 I4=1,7                                                    
         DO 40 J4=1,2                                                   
          DO 40 K4=1,2                                                  
            CA(I4,J4,K4) = CB(I4,J4,K4) + CC(I4,J4,K4)                  
   40     CONTINUE                                                      
      WRITE(6,*) '----- TEST NO.5 -----'
        DO 50 I5=1,7                                                    
         DO 50 J5=1,7                                                   
          DO 50 K5=1,7                                                  
            CA(J5,K5,2) = CB(J5,K5,2) + CC(J5,K5,2)                     
   50     CONTINUE                                                      
      WRITE(6,*) '----- TEST NO.6 -----'
        DO 60 I6=1,7                                                    
         DO 60 J6=1,7                                                   
          DO 60 K6=1,7                                                  
            CDA(6,6,K6) = CDB(6,6,K6) + CDC(6,6,K6)                     
   60     CONTINUE                                                      
      WRITE(6,*) ' I , J = ',I,J                                        
      WRITE(6,*) '----- TEST NO.7 -----'
        DO 70 I7=1,7                                                    
         DO 70 J7=1,7                                                   
          DO 70 K7=1,7                                                  
            IA(J7,2,2) = IB(J7,2,3) + IC(J7,2,4)                        
   70     CONTINUE                                                      
      WRITE(6,*) '----- TEST NO.8 -----'
        DO 80 I8=2,3                                                    
         DO 80 J8=2,3                                                   
          DO 80 K8=2,3                                                  
            LA(I8,J8,K8) = LA(I8-1,J8-1,K8-1) .OR. LC(I8,J8,K8)         
   80     CONTINUE                                                      
      WRITE(6,*) 'IA  = ',IA                                            
      WRITE(6,*) 'LA  = ',LA                                            
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






















