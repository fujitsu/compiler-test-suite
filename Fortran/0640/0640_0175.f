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

      RS1 = 0
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
          LC(I,J) = .NOT.(LB(I,J))                                      
          LBA(I,J) = .FALSE.                                            
          LBB(I,J) = 0.EQ.MOD(I,2)                                      
          LBC(I,J) = .NOT.(LBB(I,J))                                    
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
        DO 10 J=1,10                                                    
          DO 10 K=1,10                                                  
            IA(J,K) = IB(J,K) ** 3                                      
            RA(J,K) = SQRT(RB(J,K))                                     
            IF(LA(J,K)) THEN                                            
              LB(J,K) = LC(J,K).AND.(DA(J,K).GT.DB(J,K))                
              IF(LB(J,K)) CA(J,K) = CDA(J,K) + CDB(J,K)                 
            ELSE                                                        
              DA(J,K) = DSIN(DC(J,K))                                   
            ENDIF                                                       
   10   CONTINUE                                                        
      WRITE(6,*) '----- TEST NO.2 -----'
        DO 20 J=1,10                                                    
          DO 20 K=1,10                                                  
            IF(IA(J,K).GT.IB(J,K)) THEN                                 
              IF(RA(J,K).LT.RB(J,K)) THEN                               
                IF(DA(J,K).NE.DB(J,K)) THEN                             
                  CA(J,K) = CB(J,K) + CC(J,K)                           
                ELSE                                                    
                  LA(J,K) = LB(J,K).AND.LC(J,K)                         
                ENDIF                                                   
              ELSE                                                      
                IF(CDA(J,K).EQ.CDB(J,K)) THEN                           
                  CA(J,K) = CB(J,K) - CC(J,K)                           
                ENDIF                                                   
              ENDIF                                                     
            ELSE                                                        
              IF(LA(J,K)) LB(J,K) = LC(J,K).OR.LB(J,K)                  
            ENDIF                                                       
   20   CONTINUE                                                        
      WRITE(6,*) '----- TEST NO.3 -----'
      IS1= 0
        DO 30 K=1,10                                                    
          DO 30 J=1,3                                                   
            IS1 = IS1 + IA(K,J)                                         
            RS1 = MAX(RS1,RA(K,J))                                      
            DA(K,J) = DB(K,J)*DC(K,J)                                   
   30   CONTINUE                                                        
      WRITE(6,*) '----- TEST NO.4 -----'
      I4 = 0                                                            
      DO 40 J=1,4                                                       
       DO 40 K=1,2                                                      
         I4 = I4 + 1                                                    
         RA(J,I4) = RB(J,I4) + RC(J,I4)                                 
   40 CONTINUE                                                          
      WRITE(6,*) '----- TEST NO.5 -----'
      DO 50 J=1,10                                                      
       DO 50 K=1,10                                                     
         DA(K,J) = DB(K,J) + DC(K,J)                                    
         GO TO 51                                                       
   52    CONTINUE                                                       
         CA(K,J) = CB(K,J)*CC(K,J)                                      
   50 CONTINUE                                                          
      GO TO 53                                                          
   51    LA(K,J) = LB(K,J).OR.LC(K,J)                                   
         GO TO 52                                                       
 53   CONTINUE                                                          
      WRITE(6,*) '----- TEST NO.6 -----'
        DO 60 J=1,10                                                    
          DO 60 K=1,2                                                   
            WRITE(6,*) IA(J,K)                                          
            DA(J,K) = DB(J,K) + DC(J,K)                                 
            CDA(J,K) = CDA(J,K)*CDB(J,K)/(CDC(J,K)+(1.,1.))             
   60   CONTINUE                                                        
      WRITE(6,*) 'IA  = ',IA                                            
      WRITE(6,*) 'LA  = ',LA                                            
      WRITE(6,999) 'RA  = ',RA                                  
      WRITE(6,999) 'DA  = ',DA                                  
      WRITE(6,999) 'DC  = ',DC                                  
      WRITE(6,*) 'IHA  = ',IHA                                
      WRITE(6,999) 'QA  = ',QA                                  
      WRITE(6,999) 'CA  = ',CA                                  
      WRITE(6,999) 'CDA = ',CDA                                
      WRITE(6,999) 'CQA = ',CQA                                
 999  format(a6,(10g20.10))
      STOP                                                              
      END                                                               
