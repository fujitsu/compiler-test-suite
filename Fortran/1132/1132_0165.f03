      PROGRAM CV5295                                                    
                                                                       
                                                                       
      PARAMETER   (L1=10,L2=10,L3=10)                                   
      DATA        IDX1/L1/,IDX2/L2/,IDX3/L3/  
      type STR
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
   end type STR
   TYPE(STR) STR_DATA

      DO 10 I=1,L1                                                      
        STR_DATA%IA1(I)=I                                                        
        STR_DATA%IB1(I)=I+2                                                      
        STR_DATA%IC1(I)=I+3                                                      
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
                                                                       
      WRITE(6,*) '##### CVCT5295 #####'                                 
                                                                        
      WRITE(6,*) '----- TEST NO.1 ----- BUSY-ON-EXIT IN LSB      '      
      WRITE(6,*) '                      VOLUME ( SOON ? )        '      
                                                                        
                                                                        
      DO 110 I=1,L1                                                     
        STR_DATA%RA1(I)=STR_DATA%RB1(I)+STR_DATA%RC1(I)                                            
                                                                        
        DO 100 J=1,L2                                                   
          STR_DATA%RA2(I,J)=STR_DATA%RB2(I,J)+STR_DATA%RC2(I,J)                                    
100     CONTINUE                                                        
                                                                        
        S=STR_DATA%RA1(I)                                                        
110   CONTINUE                                                          
                                                                        
      WRITE(6,*) S                                                      
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.2 ----- TRIPPLY NESTED         '        
      WRITE(6,*) '      THE OUTERMOST IS ELIMINATED            '        
                                                                        
                                                                        
      DO 220 I=1,L1                                                     
        STR_DATA%QA2(I,3)=STR_DATA%QB2(I,3)                                               
                                                                        
        DO 210 J=1,L2                                                   
                                                                        
          DO 200 K=1,L3                                                 
            STR_DATA%RA3(I,J,K)=STR_DATA%RB3(I,J,K)+STR_DATA%RC3(I,J,K)                            
200       CONTINUE                                                      
                                                                        
          STR_DATA%RA1(J)=STR_DATA%RB1(J)+STR_DATA%RC1(J)                                          
          S=STR_DATA%RA1(J)                                                      
210     CONTINUE                                                        
220   CONTINUE                                                          
                                                                        
      WRITE(6,*) S                                                      
                                                                        
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.3 ----- TRIPPLY NESTED         '        
      WRITE(6,*) '           BUSY-ON-ENTRANCE AND EXIT         '        
                                                                        
      ASUM=0.0                                                          
      DO 320 I=1,L1                                                     
        ASUM=ASUM+STR_DATA%RB1(I)                                                
                                                                        
        DO 310 J=1,L2                                                   
                                                                        
          DO 300 K=1,L3                                                 
            STR_DATA%RA3(I,J,K)=STR_DATA%RB3(I,J,K)+STR_DATA%RC3(I,J,K)                            
300       CONTINUE                                                      
                                                                        
          STR_DATA%RA1(J)=STR_DATA%RB1(J)+STR_DATA%RC1(J)                                          
          S=STR_DATA%RA1(J)                                                      
310     CONTINUE                                                        
320   CONTINUE                                                          
                                                                        
      WRITE(6,*) S                                                      
      WRITE(6,*) ASUM                                                   
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.4 ----- TRIPPLY NESTED         '        
      WRITE(6,*) '           SHOULD VECTORIZE BY J             '        
      S=3.0                                                             
      ASUM=3.0                                                          
      DO 420 I=1,L1                                                     
        ASUM=ASUM+STR_DATA%RB1(I)                                                
                                                                        
        DO 410 J=1,L2                                                   
                                                                        
          DO 400 K=2,L3                                                 
            STR_DATA%RA3(I,J,K)=STR_DATA%RA3(I,J,K-1)                                     
400       CONTINUE                                                      
                                                                        
          IF(STR_DATA%RC1(J).GT.0) THEN                                          
            STR_DATA%RA1(J)=STR_DATA%RB1(J)+STR_DATA%RC1(J)                                        
            S=STR_DATA%RA1(J)                                                    
          ENDIF                                                         
410     CONTINUE                                                        
420   CONTINUE                                                          
                                                                        
      WRITE(6,*) S                                                      
      WRITE(6,*) ASUM                                                   
                                                                        
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.5 ----- TRIPPLY NESTED         '        
      WRITE(6,*) '           SHOULD VECTORIZE BY J             '        
      WRITE(6,*) '           SIMPLER FORM OF TEST NO.4         '        
      SSS=0.0                                                           
                                                                        
      DO 520 I=1,L1                                                     
        DO 510 J=1,L2                                                   
                                                                        
          DO 500 K=2,L3                                                 
            STR_DATA%RA3(I,J,K)=STR_DATA%RA3(I,J,K-1)                                     
500       CONTINUE                                                      
                                                                        
          IF(STR_DATA%RC1(J).GT.0) THEN                                          
            SSS=STR_DATA%RC1(J)                                                  
          ENDIF                                                         
510     CONTINUE                                                        
520   CONTINUE                                                          
                                                                        
      WRITE(6,*) SSS                                                    
                                                                        
                                                                        
      STOP                                                              
      END                                                               






