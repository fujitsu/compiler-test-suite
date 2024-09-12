      PROGRAM MAIN                                                    
      PARAMETER   (L1=10,L2=10,L3=10)                                   
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
      LOGICAL*4   LA1(L1),      LB1(L1),      LC1(L1)                   
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
        LA1(I)=MOD(I,2) .EQ. 0                                          
        LB1(I)=MOD(I,3) .EQ. 0                                          
        LC1(I)=MOD(I,4) .EQ. 0                                          
                                                                        
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
                                                                        
      RMAX=-99999.0                                                     
      IMAX=0                                                            
                                                                        
      DO 110 I=1,L1                                                     
        RA1(I)=RB1(I)+RC1(I)                                            
        IF(RA1(I) .GT. 17.0) GOTO 110                                   
          IF(I .LT. 5) THEN                                             
            IF (RB1(I) .GT. RMAX) THEN                                  
              RMAX=RB1(I)                                               
              IMAX=I                                                    
            ENDIF                                                       
            DA1(I)=DB1(I)+DC1(I)                                        
          ELSE                                                          
            DA1(I)=DB1(I)-DC1(I)                                        
          ENDIF                                                         
          IA1(I)=IB1(I)*IC1(I)                                          
110   CONTINUE                                                          
                                                                        
      WRITE(6,*) 'RMAX= ',RMAX                                          
      WRITE(6,*) 'IMAX= ',IMAX                                          
      WRITE(6,*) 'RB1= ',RB1                                            
      WRITE(6,*) 'IA1= ',IA1                                            
      WRITE(6,*) 'DA1= ',DA1                                            
      WRITE(6,*) 'RA1= ',RA1                                            
                                                                        
      RMIN=99999.0                                                      
      IMIN=0                                                            
                                                                        
      DO 210 I=1,L1                                                     
        RA1(I)=RB1(I)+RC1(I)                                            
        IF(I .LE. 9) THEN                                               
          IF(RA1(I) .GT. 17.0) THEN                                     
            IF (RB1(I) .LT. RMIN) THEN                                  
              RMIN=RB1(I)                                               
              IMIN=I                                                    
            ENDIF                                                       
            DA1(I)=DB1(I)+DC1(I)                                        
          ELSE                                                          
            DA1(I)=DB1(I)-DC1(I)                                        
          ENDIF                                                         
          IA1(I)=IB1(I)*IC1(I)                                          
        ENDIF                                                           
210   CONTINUE                                                          
                                                                        
      WRITE(6,*) 'RMIN= ',RMIN                                          
      WRITE(6,*) 'IMIN= ',IMIN                                          
      WRITE(6,*) 'RB1= ',RB1                                            
      WRITE(6,*) 'IA1= ',IA1                                            
      WRITE(6,*) 'DA1= ',DA1                                            
      WRITE(6,*) 'RA1= ',RA1                                            
                                                                        
      K=0                                                               
      M=0                                                               
                                                                        
      DO 310 I=1,L1                                                     
        RA1(I)=RB1(I)*RC1(I)                                            
        IF(I .LE. 9) THEN                                               
          IF(RA1(I) .LT. 23.0) THEN                                     
            IF (RB1(I) .LT. 100) THEN                                   
              K=K+1                                                     
              DP1(K)=RB1(I)                                             
            ELSE                                                        
              M=M+1                                                     
              DM1(I)=RB1(M)                                             
            ENDIF                                                       
            DA1(I)=DB1(I)+DC1(I)                                        
          ELSE                                                          
            DA1(I)=DB1(I)-DC1(I)                                        
          ENDIF                                                         
                                                                        
          IA1(I)=IB1(I)*IC1(I)                                          
                                                                        
          IF (IC1(I).NE.0) THEN                                         
            IA1(I)=IB1(I)*MOD(IB1(I),IC1(I))                            
          ENDIF                                                         
        ENDIF                                                           
310   CONTINUE                                                          
                                                                        
      WRITE(6,*) 'DP1= ',DP1                                            
      WRITE(6,*) 'DM1= ',DM1                                            
      WRITE(6,*) 'RB1= ',RB1                                            
      WRITE(6,*) 'IA1= ',IA1                                            
      WRITE(6,*) 'DA1= ',DA1                                            
      WRITE(6,*) 'RA1= ',RA1                                            
                                                                        
      RMAX=-99999.0                                                     
      IMAX=0                                                            
      RMIN=99999.0                                                      
      IMIN=0                                                            
      K=0                                                               
      M=0                                                               
      S=-99999.0                                                        
      RK=-99999.0                                                       
                                                                        
      DO 410 I=1,L1                                                     
        RA1(I)=RB1(I)+RC1(I)                                            
        IF (RA1(I) .GT. 2.0*RB1(I)) THEN                                
          S=RA1(I)                                                      
          IF (.NOT.LC1(11-I)) THEN                                      
            IF(LA1(I)) THEN                                             
              K=K+1                                                     
              DP1(K)=RA1(I)                                             
            ENDIF                                                       
          ENDIF                                                         
        ENDIF                                                           
                                                                        
        IF (LB1(I)) THEN                                                
          CA1(I)=2.0*CB1(I)                                             
          IF (RB1(I)-7.0) 450,460,470                                   
450         RK=RB1(I)/3.0                                               
            GOTO 480                                                    
460         RK=RB1(I)/2.0                                               
            GOTO 480                                                    
470         RK=RB1(I)/4.0                                               
            IF(RC1(I).GT.0) THEN                                        
              M=M+1                                                     
              DM1(I)=RC1(M)                                             
            ENDIF                                                       
                                                                        
480       CB1(I)=5.0+CA1(I)                                             
        ENDIF                                                           
                                                                        
        IF(RA1(I) .GT. 17.0) GOTO 410                                   
          IF(I .LE. 4) THEN                                             
            IF(RC1(I).GT.RMAX) THEN                                     
              RMAX=RC1(I)                                               
              IMAX=I                                                    
            ENDIF                                                       
          ELSE                                                          
            IF(RC1(I).LT.RMIN) THEN                                     
              RMIN=RC1(I)                                               
              IMIN=I                                                    
            ENDIF                                                       
            DA1(I)=DB1(I)-DC1(I)                                        
          ENDIF                                                         
          IA1(I)=IB1(I)*IC1(I)                                          
410   CONTINUE                                                          
                                                                        
      WRITE(6,*) 'RMAX= ',RMAX                                          
      WRITE(6,*) 'IMAX= ',IMAX                                          
      WRITE(6,*) 'RMIN= ',RMIN                                          
      WRITE(6,*) 'IMIN= ',IMIN                                          
      WRITE(6,*) 'RC1= ',RC1                                            
      WRITE(6,*) 'DP1= ',DP1                                            
      WRITE(6,*) 'DM1= ',DM1                                            
      WRITE(6,*) '  S= ',S                                              
      WRITE(6,*) ' RK= ',RK                                             
      WRITE(6,*) 'CA1= ',CA1                                            
      WRITE(6,*) 'CB1= ',CB1                                            
      WRITE(6,*) 'IA1= ',IA1                                            
      WRITE(6,*) 'DA1= ',DA1                                            
      WRITE(6,*) 'RA1= ',RA1                                            
                                                                        
                                                                        
      STOP                                                              
      END                                                               








