      PROGRAM CV5203                                                    
                                                                       
                                                                       
      DATA      N1/7/,N2/7/,N3/7/                                       
      type STR
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
      end type STR
      TYPE(STR) STR_DATA

      DO 1 K=1,N1                                                       
       DO 1 J=1,N1                                                      
        DO 1 I=1,N2                                                     
          STR_DATA%IA(I,J,K) = 0                                                 
          STR_DATA%IB(I,J,K) = I+J+K                                             
          STR_DATA%IC(I,J,K) = I-J-K                                             
          STR_DATA%RA(I,J,K) = 0                                                 
          STR_DATA%RB(I,J,K) = I+J+K                                             
          STR_DATA%RC(I,J,K) = I-J*K                                             
          STR_DATA%DA(I,J,K) = 0                                                 
          STR_DATA%DB(I,J,K) = I+J*K                                             
          STR_DATA%DC(I,J,K) = I-J/K                                             
          STR_DATA%QA(I,J,K) = 0                                                 
          STR_DATA%QB(I,J,K) = I+J*K                                             
          STR_DATA%QC(I,J,K) = I-J+K                                             
          STR_DATA%IHA(I,J,K) = 0                                                
          STR_DATA%IHB(I,J,K) = I+J-K                                            
          STR_DATA%IHC(I,J,K) = I-J*K                                            
          STR_DATA%LA(I,J,K) = .FALSE.                                           
          STR_DATA%LB(I,J,K) = 0.EQ.MOD(I,2)                                     
          STR_DATA%LC(I,J,K) = 1.EQ.MOD(I,3)                                     
          STR_DATA%LBA(I,J,K) = .FALSE.                                          
          STR_DATA%LBB(I,J,K) = 0.EQ.MOD(I,2)                                    
          STR_DATA%LBC(I,J,K) = .NOT.(0.EQ.MOD(I,2))                             
          STR_DATA%CA(I,J,K) = 0                                                 
          STR_DATA%CB(I,J,K) = I-J + K                                           
          STR_DATA%CC(I,J,K) = I+J *K                                            
          STR_DATA%CDA(I,J,K) = 0                                                
          STR_DATA%CDB(I,J,K) = I-K + J                                          
          STR_DATA%CDC(I,J,K) = I+J + K                                          
          STR_DATA%CQA(I,J,K) = 0                                                
          STR_DATA%CQB(I,J,K) = I-J *K                                           
          STR_DATA%CQC(I,J,K) = I+J /K                                           
 1    CONTINUE                                                          
      STR_DATA%IS1 = 0                                                           
      STR_DATA%RS1 = 0.                                                          
      STR_DATA%DS1 = 0.                                                          
      STR_DATA%CS1 = (0.,0.)                                                     
      STR_DATA%CDS1 = (0,0)                                                      
      STR_DATA%CQS1 = (0,0)                                                      
      STR_DATA%QS1 = 0.                                                          
      STR_DATA%IHS1 = 0                                                          
      STR_DATA%LS1 = .FALSE.                                                     
      STR_DATA%LBS1 = .FALSE.                                                    
      WRITE(6,*) '***** CVCT5203 *****'                                 
                                                                       
      WRITE(6,*) '----- TEST NO.1 -----  V - V - V'                     
        DO 10 I1=1,7                                                    
         DO 10 J1=1,7                                                   
          DO 10 K1=1,7                                                  
            STR_DATA%IA(I1,J1,K1) = STR_DATA%IB(I1,J1,K1) + STR_DATA%IC(I1,J1,K1)                  
   10     CONTINUE                                                      
                                                                       
      WRITE(6,*) '----- TEST NO.2 -----  V - S - V'                     
        DO 20 I2=1,7                                                    
         DO 20 J2=1,7                                                   
          DO 20 K2=1,7                                                  
            STR_DATA%RA(I2,K2,5) = STR_DATA%RB(I2,K2,5) * STR_DATA%RC(I2,K2,5)                     
   20     CONTINUE                                                      
                                                                       
      WRITE(6,*) '----- TEST NO.3 -----  V - V - S'                     
        DO 30 I3=1,7                                                    
         DO 30 J3=1,7                                                   
          DO 30 K3=1,7                                                  
           STR_DATA% DA(I3,J3,3) = STR_DATA%DB(I3,J3,3) - STR_DATA%DC(I3,J3,3)                     
   30     CONTINUE                                                      
                                                                       
      WRITE(6,*) '----- TEST NO.4 -----  V - S - S'                     
        DO 40 I4=1,7                                                    
         DO 40 J4=1,2                                                   
          DO 40 K4=1,2                                                  
            STR_DATA%CA(I4,J4,K4) = STR_DATA%CB(I4,J4,K4) + STR_DATA%CC(I4,J4,K4)                  
   40     CONTINUE                                                      
                                                                       
      WRITE(6,*) '----- TEST NO.5 -----  S - V - V'                     
        DO 50 I5=1,7                                                    
         DO 50 J5=1,7                                                   
          DO 50 K5=1,7                                                  
            STR_DATA%CA(J5,K5,2) = STR_DATA%CB(J5,K5,2) + STR_DATA%CC(J5,K5,2)                     
   50     CONTINUE                                                      
                                                                       
      WRITE(6,*) '----- TEST NO.6 -----  S - S - V'                     
        DO 60 I6=1,7                                                    
         DO 60 J6=1,7                                                   
          DO 60 K6=1,7                                                  
            STR_DATA%CDA(6,6,K6) = STR_DATA%CDB(6,6,K6) + STR_DATA%CDC(6,6,K6)                     
   60     CONTINUE                                                      
      WRITE(6,*) ' I , J = ',I,J                                        
                                                                       
      WRITE(6,*) '----- TEST NO.7 -----  S - V - S'                     
        DO 70 I7=1,7                                                    
         DO 70 J7=1,7                                                   
          DO 70 K7=1,7                                                  
            STR_DATA%IA(J7,2,2) = STR_DATA%IB(J7,2,3) + STR_DATA%IC(J7,2,4)                        
   70     CONTINUE                                                      
                                                                       
      WRITE(6,*) '----- TEST NO.8 -----  S - S - S'                     
        DO 80 I8=2,3                                                    
         DO 80 J8=2,3                                                   
          DO 80 K8=2,3                                                  
            STR_DATA%LA(I8,J8,K8) = STR_DATA%LA(I8-1,J8-1,K8-1) .OR. STR_DATA%LC(I8,J8,K8)         
   80     CONTINUE                                                      
                                                                       
                                                                       
      WRITE(6,*) 'IA  = ',STR_DATA%IA                                            
      WRITE(6,*) 'LA  = ',STR_DATA%LA                                            
      WRITE(6,*) 'RA  = ',STR_DATA%RA                                            
      WRITE(6,*) 'DA  = ',STR_DATA%DA                                            
      WRITE(6,*) 'DC  = ',STR_DATA%DC                                            
      WRITE(6,*) 'IHA  = ',STR_DATA%IHA                                          
      WRITE(6,*) 'QA  = ',STR_DATA%QA                                            
      WRITE(6,*) 'CA  = ',STR_DATA%CA                                            
      WRITE(6,*) 'CDA  = ',STR_DATA%CDA                                          
      WRITE(6,*) 'CQA  = ',STR_DATA%CQA                                          
                                                                       
      STOP                                                              
      END                                                               






















