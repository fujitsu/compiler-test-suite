      PROGRAM CV5204                                                    
                                                                    
                                                                       
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

      STR_DATA%RS1 = 0
                                                                       
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
          STR_DATA%LC(I,J) = .NOT.(STR_DATA%LB(I,J))                                      
          STR_DATA%LBA(I,J) = .FALSE.                                            
          STR_DATA%LBB(I,J) = 0.EQ.MOD(I,2)                                      
          STR_DATA%LBC(I,J) = .NOT.(STR_DATA%LBB(I,J))                                    
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
      WRITE(6,*) '***** CVCT5204 *****'                                 
                                                                       
      WRITE(6,*) '----- TEST NO.1 ----- FUNCTION + IF'                  
        DO 10 J=1,10                                                    
          DO 10 K=1,10                                                  
            STR_DATA%IA(J,K) = STR_DATA%IB(J,K) ** 3                                      
            STR_DATA%RA(J,K) = SQRT(STR_DATA%RB(J,K))                                     
            IF(STR_DATA%LA(J,K)) THEN                                            
              STR_DATA%LB(J,K) = STR_DATA%LC(J,K).AND.(STR_DATA%DA(J,K).GT.STR_DATA%DB(J,K))                
              IF(STR_DATA%LB(J,K)) STR_DATA%CA(J,K) = STR_DATA%CDA(J,K) + STR_DATA%CDB(J,K)                 
            ELSE                                                        
              STR_DATA%DA(J,K) = DSIN(STR_DATA%DC(J,K))                                   
            ENDIF                                                       
   10   CONTINUE                                                        
                                                                       
      WRITE(6,*) '----- TEST NO.2 -----  IF NEST '                      
        DO 20 J=1,10                                                    
          DO 20 K=1,10                                                  
            IF(STR_DATA%IA(J,K).GT.STR_DATA%IB(J,K)) THEN                                 
              IF(STR_DATA%RA(J,K).LT.STR_DATA%RB(J,K)) THEN                               
                IF(STR_DATA%DA(J,K).NE.STR_DATA%DB(J,K)) THEN                             
                  STR_DATA%CA(J,K) = STR_DATA%CB(J,K) + STR_DATA%CC(J,K)                           
                ELSE                                                    
                  STR_DATA%LA(J,K) = STR_DATA%LB(J,K).AND.STR_DATA%LC(J,K)                         
                ENDIF                                                   
              ELSE                                                      
                IF(STR_DATA%CDA(J,K).EQ.STR_DATA%CDB(J,K)) THEN                           
                  STR_DATA%CA(J,K) = STR_DATA%CB(J,K) - STR_DATA%CC(J,K)                           
                ENDIF                                                   
              ENDIF                                                     
            ELSE                                                        
              IF(STR_DATA%LA(J,K)) STR_DATA%LB(J,K) = STR_DATA%LC(J,K).OR.STR_DATA%LB(J,K)                  
            ENDIF                                                       
   20   CONTINUE                                                        
                                                                       
      WRITE(6,*) '----- TEST NO.3 -----  MACRO'                         
      IS1= 0
        DO 30 K=1,10                                                    
          DO 30 J=1,3                                                   
            STR_DATA%IS1 = IS1 + STR_DATA%IA(K,J)                                         
            STR_DATA%RS1 = MAX(STR_DATA%RS1,STR_DATA%RA(K,J))                                      
            STR_DATA%DA(K,J) = STR_DATA%DB(K,J)*STR_DATA%DC(K,J)                                   
   30   CONTINUE                                                        
                                                                       
                                                                       
      WRITE(6,*) '----- TEST NO.4 -----  INDUCTION '                    
      I4 = 0                                                            
      DO 40 J=1,4                                                       
       DO 40 K=1,2                                                      
         I4 = I4 + 1                                                    
         STR_DATA%RA(J,I4) = STR_DATA%RB(J,I4) + STR_DATA%RC(J,I4)                                 
   40 CONTINUE                                                          
                                                                       
                                                                       
      WRITE(6,*) '----- TEST NO.5 -----  EXTENDED DO LOOPS'             
      DO 50 J=1,10                                                      
       DO 50 K=1,10                                                     
         STR_DATA%DA(K,J) = STR_DATA%DB(K,J) + STR_DATA%DC(K,J)                                    
         GO TO 51                                                       
   52    CONTINUE                                                       
         STR_DATA%CA(K,J) = STR_DATA%CB(K,J)*STR_DATA%CC(K,J)                                      
   50 CONTINUE                                                          
      GO TO 53                                                          
                                                                       
   51    STR_DATA%LA(K,J) = STR_DATA%LB(K,J).OR.STR_DATA%LC(K,J)                                   
         GO TO 52                                                       
                                                                       
 53   CONTINUE                                                          
      WRITE(6,*) '----- TEST NO.6 -----  SCALAR ELEMENTS'               
        DO 60 J=1,10                                                    
          DO 60 K=1,2                                                   
            WRITE(6,*) STR_DATA%IA(J,K)                                          
            STR_DATA%DA(J,K) = STR_DATA%DB(J,K) + STR_DATA%DC(J,K)                                 
            STR_DATA%CDA(J,K) = STR_DATA%CDA(J,K)*STR_DATA%CDB(J,K)/(STR_DATA%CDC(J,K)+(1.,1.))             
   60   CONTINUE                                                        
                                                                       
      WRITE(6,*) 'IA  = ',STR_DATA%IA                                            
      WRITE(6,*) 'LA  = ',STR_DATA%LA                                            
      WRITE(6,999) 'RA  = ',STR_DATA%RA                                  
      WRITE(6,999) 'DA  = ',STR_DATA%DA                                  
      WRITE(6,999) 'DC  = ',STR_DATA%DC                                  
      WRITE(6,*) 'IHA  = ',STR_DATA%IHA                                
      WRITE(6,999) 'QA  = ',STR_DATA%QA                                  
      WRITE(6,999) 'CA  = ',STR_DATA%CA                                  
      WRITE(6,999) 'CDA = ',STR_DATA%CDA                                
      WRITE(6,999) 'CQA = ',STR_DATA%CQA                                
 999  format(a6,(10g20.10))
                                                                       
      STOP                                                              
      END                                                               
