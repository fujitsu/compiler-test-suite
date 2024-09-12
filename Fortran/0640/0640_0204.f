      PROGRAM MAIN                                                    
      PARAMETER   (L1=10,L2=10,L3=10)                                   
      DATA        IDX1/L1/,IDX2/L2/,IDX3/L3/                            
      INTEGER*4   IA1(L1),   IB1(L1),   IC1(L1)                         
      INTEGER*4   IA2(L1,L2),IB2(L1,L2),IC2(L1,L2)                      
      REAL*4      RA1(L1),      RB1(L1),      RC1(L1)                   
      REAL*4      RA2(L1,L2),   RB2(L1,L2),   RC2(L1,L2)                
      REAL*4      RA3(L1,L2,L3),RB3(L1,L2,L3),RC3(L1,L2,L3)             
      REAL*8      DA1(L1),      DB1(L1),  DC1(L1),DP1(L1),DM1(L1)       
      REAL*8      DA2(L1,L2),   DB2(L1,L2),   DC2(L1,L2)                
      REAL*8      DA3(L1,L2,L3),DB3(L1,L2,L3),DC3(L1,L2,L3)             
      REAL*8      QA2(L1,L2),   QB2(L1,L2),   QC2(L1,L2)                
      COMPLEX     CA1(L1),      CB1(L1),      CC1(L1)                   
      COMPLEX     CA2(L1,L2),   CB2(L1,L2),   CC2(L1,L2)                
      COMPLEX     CA3(L1,L2,L3),CB3(L1,L2,L3),CC3(L1,L2,L3)             
      LOGICAL*4   LA3(L1,L2,L3),LB3(L1,L2,L3),LC3(L1,L2,L3)             
                                                                        
      DO 10 I=1,L1                                                      
        IA1(I)=I                                                        
        IB1(I)=I+2                                                      
        IC1(I)=I+3                                                      
        RA1(I)=I+2                                                      
        RB1(I)=I+3                                                      
        RC1(I)=I+4                                                      
        DA1(I)=2*I                                                      
        DB1(I)=3*I-2                                                    
        DC1(I)=2*I+3                                                    
        DP1(I)=3*I                                                      
        DM1(I)=2*I                                                      
        CA1(I)=CMPLX(FLOAT(I),FLOAT(I))                                 
        CB1(I)=CMPLX(FLOAT(I+5),FLOAT(I))                               
        CC1(I)=CMPLX(FLOAT(2*I),FLOAT(3*I))                             
                                                                        
        DO 10 J=1,L2                                                    
          IA2(I,J)=I*J                                                  
          IB2(I,J)=I-J                                                  
          IC2(I,J)=I+J                                                  
          RA2(I,J)=I*J+5                                                
          RB2(I,J)=I-J-5                                                
          RC2(I,J)=I+J*3                                                
          DA2(I,J)=I*J-2                                                
          DB2(I,J)=I-J-3                                                
          DC2(I,J)=I+J-4                                                
          QA2(I,J)=I*J-5                                                
          QB2(I,J)=I-J-6                                                
          QC2(I,J)=I+J-7                                                
          CA2(I,J)=CMPLX(FLOAT(I+2),FLOAT(J*3))                         
          CB2(I,J)=CMPLX(FLOAT(I-2),FLOAT(J+3))                         
          CC2(I,J)=CMPLX(FLOAT(I*2),FLOAT(J-3))                         
                                                                        
          DO 10 K=1,L3                                                  
            RA3(I,J,K)=I+J+K                                            
            RB3(I,J,K)=I-J+K                                            
            RC3(I,J,K)=I+J-K                                            
            DA3(I,J,K)=I+J-K                                            
            DB3(I,J,K)=I*J+K                                            
            DC3(I,J,K)=I+J*K                                            
            CA3(I,J,K)=CMPLX(FLOAT(I+J+K),FLOAT(I+J*K))                 
            CB3(I,J,K)=CMPLX(FLOAT(I-J+K),FLOAT(I+J+K))                 
            CC3(I,J,K)=CMPLX(FLOAT(I+J+K),FLOAT(I-J+K))                 
            LA3(I,J,K)=(I+J) .GT. (I+K)                                 
            LB3(I,J,K)=(I-J) .GT. (I+K)                                 
            LC3(I,J,K)=(I*J) .GT. (I+K)                                 
10    CONTINUE                                                          
                                                                        
      WRITE(6,*) '----- TEST NO.1 -----'
                                                                        
                                                                        
      DO 110 I=1,L1                                                     
        RA1(I)=RB1(I)+RC1(I)                                            
                                                                        
        DO 100 J=1,L2                                                   
          RA2(I,J)=RB2(I,J)+RC2(I,J)                                    
100     CONTINUE                                                        
                                                                        
        S=RA1(I)                                                        
110   CONTINUE                                                          
                                                                        
      WRITE(6,*) S                                                      
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.2 -----'
                                                                        
                                                                        
      DO 220 I=1,L1                                                     
        QA2(I,3)=QB2(I,3)                                               
                                                                        
        DO 210 J=1,L2                                                   
                                                                        
          DO 200 K=1,L3                                                 
            RA3(I,J,K)=RB3(I,J,K)+RC3(I,J,K)                            
200       CONTINUE                                                      
                                                                        
          RA1(J)=RB1(J)+RC1(J)                                          
          S=RA1(J)                                                      
210     CONTINUE                                                        
220   CONTINUE                                                          
                                                                        
      WRITE(6,*) S                                                      
                                                                        
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.3 -----'
                                                                        
      ASUM=0.0                                                          
      DO 320 I=1,L1                                                     
        ASUM=ASUM+RB1(I)                                                
                                                                        
        DO 310 J=1,L2                                                   
                                                                        
          DO 300 K=1,L3                                                 
            RA3(I,J,K)=RB3(I,J,K)+RC3(I,J,K)                            
300       CONTINUE                                                      
                                                                        
          RA1(J)=RB1(J)+RC1(J)                                          
          S=RA1(J)                                                      
310     CONTINUE                                                        
320   CONTINUE                                                          
                                                                        
      WRITE(6,*) S                                                      
      WRITE(6,*) ASUM                                                   
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.4 -----'
      S=3.0                                                             
      ASUM=3.0                                                          
      DO 420 I=1,L1                                                     
        ASUM=ASUM+RB1(I)                                                
                                                                        
        DO 410 J=1,L2                                                   
                                                                        
          DO 400 K=2,L3                                                 
            RA3(I,J,K)=RA3(I,J,K-1)                                     
400       CONTINUE                                                      
                                                                        
          IF(RC1(J).GT.0) THEN                                          
            RA1(J)=RB1(J)+RC1(J)                                        
            S=RA1(J)                                                    
          ENDIF                                                         
410     CONTINUE                                                        
420   CONTINUE                                                          
                                                                        
      WRITE(6,*) S                                                      
      WRITE(6,*) ASUM                                                   
                                                                        
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.5 -----'
      SSS=0.0                                                           
                                                                        
      DO 520 I=1,L1                                                     
        DO 510 J=1,L2                                                   
                                                                        
          DO 500 K=2,L3                                                 
            RA3(I,J,K)=RA3(I,J,K-1)                                     
500       CONTINUE                                                      
                                                                        
          IF(RC1(J).GT.0) THEN                                          
            SSS=RC1(J)                                                  
          ENDIF                                                         
510     CONTINUE                                                        
520   CONTINUE                                                          
                                                                        
      WRITE(6,*) SSS                                                    
                                                                        
                                                                        
      STOP                                                              
      END                                                               






