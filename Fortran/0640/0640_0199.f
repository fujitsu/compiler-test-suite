      PROGRAM MAIN                                                    
                                                                        
      PARAMETER   (L1=10,L2=10,L3=10)                                   
      DATA        IDX1/10/,IDX2/10/,IDX3/10/                            
      INTEGER*4   IA1(L1),   IB1(L1),   IC1(L1)                         
      INTEGER*4   IA2(L1,L2),IB2(L1,L2),IC2(L1,L2)                      
      REAL*4      RA1(L1),      RB1(L1),      RC1(L1)                   
      REAL*4      RA2(L1,L2),   RB2(L1,L2),   RC2(L1,L2)                
      REAL*4      RA3(L1,L2,L3),RB3(L1,L2,L3),RC3(L1,L2,L3)             
      REAL*8      DA1(L1),      DB1(L1), DC1(L1), DP1(L1),DM1(L1)       
      REAL*8      DA2(L1,L2),   DB2(L1,L2),   DC2(L1,L2)                
      REAL*8      DA3(L1,L2,L3),DB3(L1,L2,L3),DC3(L1,L2,L3)             
      REAL*8      QA2(L1,L2),   QB2(L1,L2),   QC2(L1,L2)                
      COMPLEX     CA1(L1),      CB1(L1),      CC1(L1)                   
      COMPLEX     CA2(L1,L2),   CB2(L1,L2),   CC2(L1,L2)                
      COMPLEX     CA3(L1,L2,L3),CB3(L1,L2,L3),CC3(L1,L2,L3)             
      LOGICAL*4   LA3(L1,L2,L3),LB3(L1,L2,L3),LC3(L1,L2,L3)             
                                                                        
      DO 10 I=1,L1                                                      
        IA1(I)=11-I                                                     
        IB1(I)=I                                                        
        IC1(I)=I                                                        
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

                                                                        
      WRITE(6,*) '----- TEST NO.1 ----- '                               
      INDA=1                                                            
      INDB=1                                                            
      INDC=1                                                            
                                                                        
      DO 1000 I=1,L1,2                                                  
          IA1(I) = IB1(I) + IC1(I)                                      
          IF (IA1(I).GT.10) THEN                                        
            INDA=INDA+1                                                 
            DA2(3,INDA)=IA1(I)                                          
          ELSE IF(IA1(I).GT.5) THEN                                     
            INDB=INDB+1                                                 
            DB2(3,INDB)= -IA1(I)                                        
          ELSE IF(IA1(I).GT.0) THEN                                     
            INDC=INDC+1                                                 
            DC2(3,INDC)= IA1(I)*IA1(I)                                  
          ENDIF                                                         
                                                                        
          DO 1000 J=1,L2,2                                              
            RA1(J)=RB1(J)+RC1(J)                                        
                                                                        
            DO 1000 K=2,L3,2                                            
              RA2(J,K) = RB2(J,K-1) * RC2(J,K)                          
1000  CONTINUE                                                          
                                                                        
                                                                        
      WRITE(6,*) ' DA2=',DA2                                            
      WRITE(6,*) ' DB2=',DB2                                            
      WRITE(6,*) ' DC2=',DC2                                            
      WRITE(6,*) ' RA1=',RA1                                            
      WRITE(6,*) ' RA2=',RA2                                            
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.2 ----- '                               
                                                                        
      INDA=1                                                            
      INDB=1                                                            
      INDC=1                                                            
                                                                        
      DO 2020 I=1,L1,2                                                  
          IA1(I) = IB1(I) + IC1(I)                                      
          IF( (IA1(I) .LE. 5) .AND. (IA1(I) .GT. 0) ) THEN              
            INDC=INDC+1                                                 
            DC2(3,INDC) = IA1(I)*IA1(I)                                 
          ENDIF                                                         
                                                                        
          DO 2010 J=1,L2,2                                              
            RA1(J)=RB1(J)+RC1(J)                                        
                                                                        
            DO 2010 K=2,L3,2                                            
              RA2(J,K) = RB2(J,K-1) * RC2(J,K)                          
2010        CONTINUE                                                    
                                                                        
          IF (IA1(I).GT.10) THEN                                        
            INDA=INDA+1                                                 
            DA2(3,INDA)=IA1(I)                                          
          ELSE IF(IA1(I).GT.5) THEN                                     
            INDB=INDB+1                                                 
            DB2(3,INDB)= -IA1(I)                                        
          ENDIF                                                         
2020  CONTINUE                                                          
                                                                        
      WRITE(6,*) ' DC2=',DC2                                            
      WRITE(6,*) ' RA1=',RA1                                            
      WRITE(6,*) ' RA2=',RA2                                            
      WRITE(6,*) ' DA2=',DA2                                            
      WRITE(6,*) ' DB2=',DB2                                            
      STOP                                                              
      END                                                               








