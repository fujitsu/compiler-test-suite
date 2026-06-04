      PROGRAM CV5297                                                    
                                                                       
                                                                       
      PARAMETER   (L1=3,L2=3,L3=3)
      type STR
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
      end type STR
      TYPE(STR) STR_DATA

      DO 10 I=1,L1                                                      
        STR_DATA%IA1(I)=I                                                        
        STR_DATA%IB1(I)=I+2                                                      
        STR_DATA%IC1(I)=I+3                                                      
        STR_DATA%RM1(I)=I+1                                                      
        STR_DATA%RM2(I)=I+2                                                      
        STR_DATA%RM3(I)=I+3                                                      
        STR_DATA%RM4(I)=I+4                                                      
        STR_DATA%RM5(I)=I+5                                                      
        STR_DATA%RM6(I)=I+6                                                      
        STR_DATA%RM7(I)=I+7                                                      
        STR_DATA%RA1(I)=I+2                                                      
        STR_DATA%RB1(I)=I+3                                                      
        STR_DATA%RC1(I)=I+4                                                      
        STR_DATA%DA1(I)=2*I                                                      
        STR_DATA%DB1(I)=3*I-2                                                    
        STR_DATA%DC1(I)=2*I+3                                                    
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
                                                                        
      WRITE(6,*) '***** CVCT5297 *****'                                 
                                                                        
      WRITE(6,*) '----- TEST NO.1 ----- INNERMOST => VOLUME      '      
                                                                        
      DO 19 M1=1,L1                                                     
        STR_DATA%RM1(M1)=M1*2                                                    
                                                                        
      DO 29 M2=1,L1                                                     
      DO 39 M3=1,L1                                                     
        STR_DATA%RM3(M3)=M3*M3                                                   
                                                                        
      DO 49 M4=1,L1                                                     
        STR_DATA%RM4(M4)=M4                                                      
                                                                        
      DO 59 M5=1,L1                                                     
      DO 69 M6=1,L1                                                     
        STR_DATA%RM6(M6)=M6-1                                                    
                                                                        
      DO 79 M7=1,L1                                                     
      DO 89  M8=1,L1                                                    
        STR_DATA%RB1(M8)=0.9*STR_DATA%RC1(M8)                                             
        STR_DATA%DP1(M8)=0.0                                                     
        STR_DATA%DM1(M8)=0.0                                                     
                                                                        
        DO 99 M9=1,L2                                                   
          IF (STR_DATA%DA2(M8,M9).GT.0.0) THEN                                   
            STR_DATA%DP1(M8)=STR_DATA%DP1(M8)+STR_DATA%DA2(M8,M9)                                  
          ELSE                                                          
            IF (STR_DATA%DA2(M8,M9).LT.0.0) STR_DATA%DM1(M8)=STR_DATA%DM1(M8)+STR_DATA%DA2(M8,M9)           
          ENDIF                                                         
          STR_DATA%RA2(M8,M9)=STR_DATA%DB2(M8,M9)*STR_DATA%DC2(M8,M9)                              
          STR_DATA%CA2(M8,M9)=STR_DATA%CB2(M8,M9)*STR_DATA%RA1(M8)                                 
                                                                        
          DO 109 M10=1,L3                                               
            STR_DATA%CA3(M8,M9,M10)=STR_DATA%CB3(M8,M9,M10)*STR_DATA%CC3(M8,M9,M10)                
            IF (STR_DATA%LA3(M8,M9,M10)) THEN                                    
              STR_DATA%RA3(M8,M9,M10)=STR_DATA%RB3(M8,M9,M10)                             
            ELSE                                                        
              STR_DATA%RA3(M8,M9,M10)=STR_DATA%RA3(M8,M9,M10)+STR_DATA%RC3(M8,M9,M10)              
            ENDIF                                                       
            STR_DATA%DA3(M8,M9,M10)=STR_DATA%DA3(M8,M9,M10)/STR_DATA%DB3(M8,M9,M10)                
109       CONTINUE                                                      
99      CONTINUE                                                        
                                                                        
        STR_DATA%RC1(M8)=STR_DATA%RC1(M8)*0.9                                             
89    CONTINUE                                                          
                                                                        
        STR_DATA%RM7(M7)=M7*2                                                    
79    CONTINUE                                                          
69    CONTINUE                                                          
                                                                        
        STR_DATA%RM5(M5)=STR_DATA%RM5(M5)*1.001                                           
59    CONTINUE                                                          
49    CONTINUE                                                          
39    CONTINUE                                                          
                                                                        
        STR_DATA%RM2(M2)=-M2                                                     
29    CONTINUE                                                          
19    CONTINUE                                                          
                                                                        
                                                                        
      WRITE(6,*) 'RA3 = ',STR_DATA%RA3(L1,L2,L3)                                 
      WRITE(6,*) ' ==== '                                               
                                                                       
      STOP                                                              
      END                                                               







