      PROGRAM CV5299                                                    
                                                                       
                                                                       
      PARAMETER   (L1=10,L2=10,L3=10)         
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
                                                                        
      WRITE(6,*) '***** CVCT5299 *****'                                 
                                                                        
      WRITE(6,*) '----- TEST NO.1 ----- SIMPLE VAR 1ST->2ND      '      
      WRITE(6,*) '     DOP STARTING FROM INBETWEEN POINT         '      
                                                                        
                                                                        
      DO 120 I=2,L1-1                                                   
        S=STR_DATA%RA1(I)                                                        
        STR_DATA%RA1(I)=(STR_DATA%RB1(I)+STR_DATA%RC1(I))/2.0                                      
                                                                        
        DO 130 J=2,L2-3                                                 
          IF (STR_DATA%RA1(I) .LT. S) THEN                                       
            STR_DATA%CA2(I,J)=STR_DATA%CB2(I,J)*STR_DATA%RA1(I)                                    
          ELSE                                                          
            STR_DATA%CA2(I,J)=STR_DATA%CB2(I,J)*S                                         
          ENDIF                                                         
130     CONTINUE                                                        
120   CONTINUE                                                          
                                                                        
      WRITE (6,*) ' CA2 =',STR_DATA%CA2                                          
                                                                       
      WRITE(6,*) '----- TEST NO.2 ----- SIMPLE VAR 1ST->2ND      '      
      WRITE(6,*) '                    DOP MOVING BACKWARDS       '      
                                                                       
                                                                        
      DO 100 I=L1,1,-2                                                  
        AVR=(STR_DATA%RB1(I)+STR_DATA%RC1(I))/2.0                                         
        VALB=STR_DATA%RB1(I)                                                     
                                                                        
        DO 90 J=L2,2,-1                                                 
          DO 80 K=L3,2,-1                                               
            STR_DATA%CA3(I,J,K)=STR_DATA%CB3(I,J,K)*STR_DATA%CC3(I,J,K)+AVR                        
            IF (COS(AVR).GE.SIN(VALB)) THEN                             
              STR_DATA%RA3(I,J,K)=STR_DATA%RA3(I,J,K)*STR_DATA%RB3(I,J,K)                          
            ELSE                                                        
              STR_DATA%RA3(I,J,K)=STR_DATA%RA3(I,J,K)+STR_DATA%RC3(I,J,K)                          
            ENDIF                                                       
            STR_DATA%DA3(I,J,K)=STR_DATA%DA3(I,J,K)/STR_DATA%DB3(I,J,K)                            
80        CONTINUE                                                      
                                                                        
          IF (AVR.GT.STR_DATA%RB2(I,J)) THEN                                     
            STR_DATA%RA2(I,J)=SIN(AVR)                                           
          ELSE                                                          
            STR_DATA%RA2(I,J)=COS(STR_DATA%RA2(I,J))                                      
          ENDIF                                                         
90      CONTINUE                                                        
                                                                        
        STR_DATA%RC1(I)=STR_DATA%RC1(I)**2                                                
100   CONTINUE                                                          
                                                                       
                                                                       
                                                                       
      WRITE(6,*) 'RA3 = ',STR_DATA%RA3                                           
      WRITE(6,*) 'CA3 = ',STR_DATA%CA3                                           
                                                                       
      STOP                                                              
      END                                                               


