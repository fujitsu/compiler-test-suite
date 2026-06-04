      PROGRAM CV5201                                                    
                                                                       
                                                                       
      DATA      N1/10/,N2/10/,N3/10/                                    
      
      type STR
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
      end type STR
      TYPE(STR) STR_DATA
                                                                       
      DO 1 J=1,N1                                                       
        DO 1 I=1,N2                                                     
          STR_DATA%IA(I,J) = 0                                                   
          STR_DATA%IB(I,J) = I+J                                                 
          STR_DATA%IC(I,J) = I-J                                                 
          STR_DATA%RA(I,J) = 0                                                   
          STR_DATA%RB(I,J) = I+J                                                 
          STR_DATA%RC(I,J) = I-J                                                 
          STR_DATA%DA(I,J) = 0                                                   
          STR_DATA%DB(I,J) = I+J                                                 
          STR_DATA%DC(I,J) = I-J                                                 
          STR_DATA%QA(I,J) = 0                                                   
          STR_DATA%QB(I,J) = I+J                                                 
          STR_DATA%QC(I,J) = I-J                                                 
          STR_DATA%IHA(I,J) = 0                                                  
          STR_DATA%IHB(I,J) = I+J                                                
          STR_DATA%IHC(I,J) = I-J                                                
          STR_DATA%LA(I,J) = .FALSE.                                             
          STR_DATA%LB(I,J) = 0.EQ.MOD(I,2)                                       
          STR_DATA%LC(I,J) = 0.EQ.MOD(I,3)                                       
          STR_DATA%LBA(I,J) = .FALSE.                                            
          STR_DATA%LBB(I,J) = 0.EQ.MOD(I,3)                                      
          STR_DATA%LBC(I,J) = 0.EQ.MOD(I,2)                                      
          STR_DATA%CA(I,J) = 0                                                   
          STR_DATA%CB(I,J) = I-1                                                 
          STR_DATA%CC(I,J) = I+1                                                 
          STR_DATA%CDA(I,J) = 0                                                  
          STR_DATA%CDB(I,J) = I-1                                                
          STR_DATA%CDC(I,J) = I+1                                                
          STR_DATA%CQA(I,J) = 0                                                  
          STR_DATA%CQB(I,J) = I-1                                                
          STR_DATA%CQC(I,J) = I+1                                                
 1    CONTINUE                                                          
      WRITE(6,*) '***** CVCT5201 *****'                                 
                                                                       
      WRITE(6,*) '----- TEST NO.1 -----  OUTER = S  INNER = V & V'      
      DO 100 I=1,N1                                                     
        STR_DATA%QA(I,1) = SQRT(ABS(STR_DATA%QB(I,1)))*STR_DATA%QC(I,1)                            
        DO 11 J=1,10                                                    
          DO 10 K=1,10                                                  
            STR_DATA%IA(J,K) = STR_DATA%IB(J,K) + STR_DATA%IC(J,K)                                 
   10     CONTINUE                                                      
   11   CONTINUE                                                        
        STR_DATA%QC(I,2) = SQRT(ABS(STR_DATA%QB(I,2)))+ STR_DATA%QA(I,2)                           
        DO 12 L=1,10                                                    
          DO 12 M=1,10                                                  
            IF(STR_DATA%LB(L,M)) STR_DATA%RA(L,M) = STR_DATA%RB(L,M)*STR_DATA%RC(L,M)                       
   12     CONTINUE                                                      
  100 CONTINUE                                                          
                                                                       
                                                                       
      WRITE(6,*) '----- TEST NO.2 -----  OUT = S  IN = V(MI) & V(SI)'   
      DO 200 I=1,N1                                                     
        STR_DATA%QA(I,1) = SQRT(ABS(STR_DATA%QB(I,1)))*STR_DATA%QC(I,1)                            
        DO 20 J=1,N2                                                    
          DO 20 K=1,N2                                                  
            STR_DATA%CA(J,K) = STR_DATA%CB(J,K) + STR_DATA%CC(J,K)                                 
   20   CONTINUE                                                        
        STR_DATA%DS1 = 0.0                                                       
        DO 21 L=1,N2                                                    
          DO 21 M=1,N2                                                  
            STR_DATA%RA(M,L) = STR_DATA%RB(M,L)*STR_DATA%RC(M,L)                                   
            STR_DATA%DS1 = STR_DATA%DS1 + STR_DATA%DB(M,L)                                         
   21     CONTINUE                                                      
  200 CONTINUE                                                          
                                                                       
      WRITE(6,*) ' DS1 = ',STR_DATA%DS1                                          
                                                                       
      WRITE(6,*) '----- TEST NO.3 -----  OUT = S  IN = V(MI) & S'       
      DO 300 I=1,N1                                                     
        STR_DATA%CQA(I,1) = SQRT(ABS(STR_DATA%CQB(I,1)))*STR_DATA%CQC(I,1)                         
        DO 30 J=1,10                                                    
          DO 30 K=1,10                                                  
            IF(STR_DATA%CA(J,K).NE.STR_DATA%CB(J,K)) THEN                                 
              STR_DATA%CDA(J,K) = STR_DATA%CDB(J,K) + STR_DATA%CDC(J,K)                            
            ENDIF                                                       
   30   CONTINUE                                                        
        STR_DATA%IHC(I,2) = STR_DATA%IHA(I,2)+ STR_DATA%IHC(I,2)                                   
        DO 31 L=1,N2                                                    
          DO 31 M=1,N2                                                  
            STR_DATA%QA(L,M) = STR_DATA%QB(L,M)*STR_DATA%QC(M,L)                                   
   31     CONTINUE                                                      
  300 CONTINUE                                                          
                                                                       
                                                                       
      WRITE(6,*) '----- TEST NO.4 -----  OUT = S  IN = V(SI) & S'       
      DO 400 I=1,N1                                                     
        STR_DATA%IS1 = 0                                                         
        DO 40 J=1,N2                                                    
          DO 40 K=1,N3                                                  
            STR_DATA%CQA(K,J) = STR_DATA%CQB(K,J) * STR_DATA%CQC(K,J)                              
   40   CONTINUE                                                        
        STR_DATA%LBA(I,1) = STR_DATA%LBB(I,1) .OR. STR_DATA%LBC(I,1)                               
        DO 41 L=1,N2                                                    
          DO 41 M=1,N2                                                  
            IF(STR_DATA%IA(M,L).NE.STR_DATA%IB(M,L)) THEN                                 
              STR_DATA%IS1 = STR_DATA%IS1 + STR_DATA%IB(L,M)                                       
              STR_DATA%IA(L,M) = STR_DATA%IB(L,M) + STR_DATA%IC(L,M)                               
              STR_DATA%RA(L,M) = STR_DATA%RB(L,M)*STR_DATA%RC(M,L)                                 
            ENDIF                                                       
   41     CONTINUE                                                      
  400 CONTINUE                                                          
                                                                       
                                                                       
      WRITE(6,*) '----- TEST NO.5 -----  OUT = S  IN = S & S'           
      DO 500 I=1,N1                                                     
        STR_DATA%QA(I,1) = STR_DATA%QB(I,1)                                               
        DO 50 J=1,N3                                                    
          DO 50 K=1,N3                                                  
            STR_DATA%QA(J,K) = STR_DATA%QB(J,K) + STR_DATA%QC(K,J)                                 
   50   CONTINUE                                                        
        STR_DATA%IHA(I,I) = STR_DATA%IHB(I,I) + STR_DATA%IHC(I,I)                                  
        DO 51 L=1,N2                                                    
          DO 51 M=1,N3                                                  
            IF(STR_DATA%LBA(L,M)) STR_DATA%IHA(L,M) = STR_DATA%IHB(L,M)*STR_DATA%IHC(M,L)                   
   51     CONTINUE                                                      
  500 CONTINUE                                                          
                                                                       
                                                                       
      WRITE(6,*) '----- TEST NO.6 -----  OUT = S  IN = V(MI) & N'       
      DO 600 I=1,N1                                                     
        STR_DATA%RA(I,I) = STR_DATA%RB(I,I) + STR_DATA%RC(I,I)                                     
        DO 60 J=1,N2                                                    
          DO 60 K=1,N3                                                  
   60   CONTINUE                                                        
        STR_DATA%RB(I,I) = STR_DATA%RA(I,I)*STR_DATA%RC(I,I)                                       
        DO 61 L=1,10                                                    
          DO 61 M=1,10                                                  
            IF(STR_DATA%RB(L,M)) 61,61,62                                        
   62       STR_DATA%RA(L,M) = STR_DATA%RB(L,M)*STR_DATA%RC(L,M)                                   
   61     CONTINUE                                                      
  600 CONTINUE                                                          
                                                                       
      WRITE(6,*) 'IA  = ',STR_DATA%IA                                            
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
