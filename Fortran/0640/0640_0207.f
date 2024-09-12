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
                                                                        
                                                                        
         DO 1550 J=1,L1                                                 
           DO 1500 K=1,L2                                               
             RA3(J,K,3)=RB3(J,K,3)+RC3(J,K,3)                           
1500       CONTINUE                                                     
                                                                        
           IF (J.NE.L1) GOTO 1552                                       
1551       CONTINUE                                                     
           IF (RC1(J).NE.0) THEN                                        
             IA1(J)=IB1(J)/(INT(RC1(J)))                                
           ELSE                                                         
             IA1(J)=IB1(J)                                              
           ENDIF                                                        
1550     CONTINUE                                                       
                                                                        
         GOTO 1553                                                      
1552     IF (J.NE.L1) GOTO 1551                                         
                                                                        
1553  CONTINUE                                                          
                                                                        
                                                                        
      WRITE(6,*) 'IA1= ',IA1                                            
      WRITE(6,*) 'RA3= ',RA3                                            
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.2 -----'
                                                                        
       DO 1660 I=1,L1                                                   
         DO 1650 J=1,L2                                                 
           DO 1600 K=1,L3                                               
             RA3(I,J,K)=RA3(I,J,K)*RC3(I,J,K)                           
1600       CONTINUE                                                     
1650     CONTINUE                                                       
                                                                        
         IF (I.NE.L1) GOTO 1652                                         
1651     CONTINUE                                                       
         IF (RC1(I).NE.0) THEN                                          
           IA1(I)=IB1(I)/(INT(RC1(I)))                                  
         ELSE                                                           
           IA1(I)=IB1(I)                                                
         ENDIF                                                          
1660   CONTINUE                                                         
                                                                        
         GOTO 1653                                                      
1652     CONTINUE                                                       
         GOTO 1651                                                      
1653  CONTINUE                                                          
                                                                        
                                                                        
      WRITE(6,*) 'IA1= ',IA1                                            
      WRITE(6,*) 'RA3= ',RA3                                            
                                                                        
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.3 -----'
                                                                        
       DO 1760 I=1,L1                                                   
         DO 1750 J=1,L2                                                 
           DO 1700 K=1,L3                                               
             IF (RA3(I,J,K) .EQ.0) GOTO 1753                            
             RA3(I,J,K)=RA3(I,J,K)*RC3(I,J,K)                           
1700       CONTINUE                                                     
1750     CONTINUE                                                       
                                                                        
         IF (I.NE.L1) GOTO 1752                                         
1751     CONTINUE                                                       
         IF (RC1(I).NE.0) THEN                                          
           IA1(I)=IB1(I)/(INT(RC1(I)))                                  
         ELSE                                                           
           IA1(I)=IB1(I)                                                
         ENDIF                                                          
1760   CONTINUE                                                         
                                                                        
         GOTO 1753                                                      
1752     CONTINUE                                                       
         GOTO 1751                                                      
1753  CONTINUE                                                          
                                                                        
                                                                        
      WRITE(6,*) 'IA1= ',IA1                                            
      WRITE(6,*) 'RA3= ',RA3                                            
                                                                        
                                                                        
                                                                        
                                                                        
      WRITE(6,*) '----- TEST NO.3 -----'
                                                                        
       DO 1860 I=1,L1                                                   
         DO 1850 J=1,L2                                                 
           DO 1800 K=1,L3                                               
             GOTO 1862                                                  
1861         RA3(I,J,K)=RA3(I,J,K)*RC3(I,J,K)                           
1800       CONTINUE                                                     
1850     CONTINUE                                                       
                                                                        
         IF (I.NE.L1) GOTO 1852                                         
1851     CONTINUE                                                       
         IF (RC1(I).NE.0) THEN                                          
           IA1(I)=IB1(I)/(INT(RC1(I)))                                  
         ELSE                                                           
           IA1(I)=IB1(I)                                                
         ENDIF                                                          
1860   CONTINUE                                                         
                                                                        
         GOTO 1853                                                      
1852     CONTINUE                                                       
         GOTO 1851                                                      
                                                                        
1862     CONTINUE                                                       
             RB3(I,J,K)=RB3(I,J,K)*RC3(I,J,K)                           
         GOTO 1861                                                      
1853  CONTINUE                                                          
                                                                        
                                                                        
      WRITE(6,*) 'IA1= ',IA1                                            
      WRITE(6,*) 'RA3= ',RA3                                            
      WRITE(6,*) 'RB3= ',RB3                                            
                                                                        
                                                                        
                                                                        
      STOP                                                              
      END                                                               
