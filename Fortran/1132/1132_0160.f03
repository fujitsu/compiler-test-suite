      PROGRAM CV5288                                                    
                                                                        
                                                                       
      PARAMETER   (L1=10,L2=10,L3=10)                                   
      DATA        IDX1/10/,IDX2/10/,IDX3/10/                            
      type STR
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
      end type STR
      TYPE(STR) STR_DATA

      DO 10 I=1,L1                                                      
        STR_DATA%IA1(I)=11-I                                                     
        STR_DATA%IB1(I)=I                                                        
        STR_DATA%IC1(I)=I                                                        
        STR_DATA%RA1(I)=I+2                                                      
        STR_DATA%RB1(I)=I+3                                                      
        STR_DATA%RC1(I)=I+4                                                      
        STR_DATA%DA1(I)=2*I                                                      
        STR_DATA%DB1(I)=3*I-2                                                    
        STR_DATA%DC1(I)=2*I+3                                                    
        STR_DATA%DP1(I)=3*I                                                      
        STR_DATA%DM1(I)=2*I                                                      
        STR_DATA%CA1(I)=CMPLX(FLOAT(I),FLOAT(I))                                 
        STR_DATA%CB1(I)=CMPLX(FLOAT(I+5),FLOAT(I))                               
        STR_DATA%CC1(I)=CMPLX(FLOAT(2*I),FLOAT(3*I))                             
                                                                        
        DO 10 J=1,L2                                                    
          STR_DATA%IA2(I,J)=I*J                                                  
          STR_DATA%IB2(I,J)=I-J                                                  
          STR_DATA%IC2(I,J)=I+J                                                  
          STR_DATA%RA2(I,J)=I*J+5                                                
          STR_DATA%RB2(I,J)=I-J-5                                                
          STR_DATA%RC2(I,J)=I+J*3                                                
          STR_DATA%DA2(I,J)=I*J-2                                                
          STR_DATA%DB2(I,J)=I-J-3                                                
          STR_DATA%DC2(I,J)=I+J-4                                                
          STR_DATA%QA2(I,J)=I*J-5                                                
          STR_DATA%QB2(I,J)=I-J-6                                                
          STR_DATA%QC2(I,J)=I+J-7                                                
          STR_DATA%CA2(I,J)=CMPLX(FLOAT(I+2),FLOAT(J*3))                         
          STR_DATA%CB2(I,J)=CMPLX(FLOAT(I-2),FLOAT(J+3))                         
          STR_DATA%CC2(I,J)=CMPLX(FLOAT(I*2),FLOAT(J-3))                         
                                                                        
          DO 10 K=1,L3                                                  
            STR_DATA%RA3(I,J,K)=I+J+K                                            
            STR_DATA%RB3(I,J,K)=I-J+K                                            
            STR_DATA%RC3(I,J,K)=I+J-K                                            
            STR_DATA%DA3(I,J,K)=I+J-K                                            
            STR_DATA%DB3(I,J,K)=I*J+K                                            
            STR_DATA%DC3(I,J,K)=I+J*K                                            
            STR_DATA%CA3(I,J,K)=CMPLX(FLOAT(I+J+K),FLOAT(I+J*K))                 
            STR_DATA%CB3(I,J,K)=CMPLX(FLOAT(I-J+K),FLOAT(I+J+K))                 
            STR_DATA%CC3(I,J,K)=CMPLX(FLOAT(I+J+K),FLOAT(I-J+K))                 
            STR_DATA%LA3(I,J,K)=(I+J) .GT. (I+K)                                 
            STR_DATA%LB3(I,J,K)=(I-J) .GT. (I+K)                                 
            STR_DATA%LC3(I,J,K)=(I*J) .GT. (I+K)                                 
10    CONTINUE                                                          
                                                                
      WRITE(6,*) '##### CVCT5288 #####  '                               
                                                                        
      WRITE(6,*) '----- TEST NO.1 ----- '                               
      INDA=1                                                            
      INDB=1                                                            
      INDC=1                                                            
                                                                        
      DO 1000 I=1,L1,2                                                  
          STR_DATA%IA1(I) = STR_DATA%IB1(I) + STR_DATA%IC1(I)                                      
          IF (STR_DATA%IA1(I).GT.10) THEN                                        
            INDA=INDA+1                                                 
            STR_DATA%DA2(3,INDA)=STR_DATA%IA1(I)                                          
          ELSE IF(STR_DATA%IA1(I).GT.5) THEN                                     
            INDB=INDB+1                                                 
            STR_DATA%DB2(3,INDB)= -STR_DATA%IA1(I)                                        
          ELSE IF(STR_DATA%IA1(I).GT.0) THEN                                     
            INDC=INDC+1                                                 
            STR_DATA%DC2(3,INDC)= STR_DATA%IA1(I)*STR_DATA%IA1(I)                                  
          ENDIF                                                         
                                                                        
          DO 1000 J=1,L2,2                                              
            STR_DATA%RA1(J)=STR_DATA%RB1(J)+STR_DATA%RC1(J)                                        
                                                                        
            DO 1000 K=2,L3,2                                            
              STR_DATA%RA2(J,K) = STR_DATA%RB2(J,K-1) * STR_DATA%RC2(J,K)                          
1000  CONTINUE                                                          
                                                                        
                                                                        
      WRITE(6,*) ' DA2=',STR_DATA%DA2                                            
      WRITE(6,*) ' DB2=',STR_DATA%DB2                                            
      WRITE(6,*) ' DC2=',STR_DATA%DC2                                            
      WRITE(6,*) ' RA1=',STR_DATA%RA1                                            
      WRITE(6,*) ' RA2=',STR_DATA%RA2                                            
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.2 ----- '                               
                                                                        
      INDA=1                                                            
      INDB=1                                                            
      INDC=1                                                            
                                                                        
      DO 2020 I=1,L1,2                                                  
          STR_DATA%IA1(I) = STR_DATA%IB1(I) + STR_DATA%IC1(I)                                      
          IF( (STR_DATA%IA1(I) .LE. 5) .AND. (STR_DATA%IA1(I) .GT. 0) ) THEN              
            INDC=INDC+1                                                 
            STR_DATA%DC2(3,INDC) = STR_DATA%IA1(I)*STR_DATA%IA1(I)                                 
          ENDIF                                                         
                                                                        
          DO 2010 J=1,L2,2                                              
            STR_DATA%RA1(J)=STR_DATA%RB1(J)+STR_DATA%RC1(J)                                        
                                                                        
            DO 2010 K=2,L3,2                                            
              STR_DATA%RA2(J,K) = STR_DATA%RB2(J,K-1) * STR_DATA%RC2(J,K)                          
2010        CONTINUE                                                    
                                                                        
          IF (STR_DATA%IA1(I).GT.10) THEN                                        
            INDA=INDA+1                                                 
            STR_DATA%DA2(3,INDA)=STR_DATA%IA1(I)                                          
          ELSE IF(STR_DATA%IA1(I).GT.5) THEN                                     
            INDB=INDB+1                                                 
            STR_DATA%DB2(3,INDB)= -STR_DATA%IA1(I)                                        
          ENDIF                                                         
2020  CONTINUE                                                          
                                                                        
      WRITE(6,*) ' DC2=',STR_DATA%DC2                                            
      WRITE(6,*) ' RA1=',STR_DATA%RA1                                            
      WRITE(6,*) ' RA2=',STR_DATA%RA2                                            
      WRITE(6,*) ' DA2=',STR_DATA%DA2                                            
      WRITE(6,*) ' DB2=',STR_DATA%DB2                                            
      STOP                                                              
      END                                                               








