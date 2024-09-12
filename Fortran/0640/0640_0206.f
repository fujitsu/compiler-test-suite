      PROGRAM MAIN                                                    
      PARAMETER   (L1=3,L2=3,L3=3)                                      
      INTEGER*4   IA1(L1),   IB1(L1),   IC1(L1)                         
      INTEGER*4   IA2(L1,L2),IB2(L1,L2),IC2(L1,L2)                      
      REAL*4      RM1(L1),      RM2(L1),      RM3(L1)                   
      REAL*4      RM4(L1),      RM5(L1),      RM6(L1), RM7(L1)          
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
        IA1(I)=I                                                        
        IB1(I)=I+2                                                      
        IC1(I)=I+3                                                      
        RM1(I)=I+1                                                      
        RM2(I)=I+2                                                      
        RM3(I)=I+3                                                      
        RM4(I)=I+4                                                      
        RM5(I)=I+5                                                      
        RM6(I)=I+6                                                      
        RM7(I)=I+7                                                      
        RA1(I)=I+2                                                      
        RB1(I)=I+3                                                      
        RC1(I)=I+4                                                      
        DA1(I)=2*I                                                      
        DB1(I)=3*I-2                                                    
        DC1(I)=2*I+3                                                    
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
                                                                        
      DO 19 M1=1,L1                                                     
        RM1(M1)=M1*2                                                    
                                                                        
      DO 29 M2=1,L1                                                     
      DO 39 M3=1,L1                                                     
        RM3(M3)=M3*M3                                                   
                                                                        
      DO 49 M4=1,L1                                                     
        RM4(M4)=M4                                                      
                                                                        
      DO 59 M5=1,L1                                                     
      DO 69 M6=1,L1                                                     
        RM6(M6)=M6-1                                                    
                                                                        
      DO 79 M7=1,L1                                                     
      DO 89  M8=1,L1                                                    
        RB1(M8)=0.9*RC1(M8)                                             
        DP1(M8)=0.0                                                     
        DM1(M8)=0.0                                                     
                                                                        
        DO 99 M9=1,L2                                                   
          IF (DA2(M8,M9).GT.0.0) THEN                                   
            DP1(M8)=DP1(M8)+DA2(M8,M9)                                  
          ELSE                                                          
            IF (DA2(M8,M9).LT.0.0) DM1(M8)=DM1(M8)+DA2(M8,M9)           
          ENDIF                                                         
          RA2(M8,M9)=DB2(M8,M9)*DC2(M8,M9)                              
          CA2(M8,M9)=CB2(M8,M9)*RA1(M8)                                 
                                                                        
          DO 109 M10=1,L3                                               
            CA3(M8,M9,M10)=CB3(M8,M9,M10)*CC3(M8,M9,M10)                
            IF (LA3(M8,M9,M10)) THEN                                    
              RA3(M8,M9,M10)=RB3(M8,M9,M10)                             
            ELSE                                                        
              RA3(M8,M9,M10)=RA3(M8,M9,M10)+RC3(M8,M9,M10)              
            ENDIF                                                       
            DA3(M8,M9,M10)=DA3(M8,M9,M10)/DB3(M8,M9,M10)                
109       CONTINUE                                                      
99      CONTINUE                                                        
                                                                        
        RC1(M8)=RC1(M8)*0.9                                             
89    CONTINUE                                                          
                                                                        
        RM7(M7)=M7*2                                                    
79    CONTINUE                                                          
69    CONTINUE                                                          
                                                                        
        RM5(M5)=RM5(M5)*1.001                                           
59    CONTINUE                                                          
49    CONTINUE                                                          
39    CONTINUE                                                          
                                                                        
        RM2(M2)=-M2                                                     
29    CONTINUE                                                          
19    CONTINUE                                                          
                                                                        
                                                                        
                                                                        
      WRITE(6,*) 'RA3 = ',RA3(L1,L2,L3)                                 
      WRITE(6,*) ' ==== '                                               
      STOP                                                              
      END                                                               







