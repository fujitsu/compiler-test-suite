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
        LA1(I)=I.GE.2                                                   
        LB1(I)=MOD(I,3) .NE. 0                                          
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
                                                                        
      TEMP=RA1(10)                                                      
      KLM=0                                                             
      KLN=0                                                             
      DO 190 I=1,L1                                                     
                                                                        
        IF (LA1(I)) THEN                                                
          IF (LB1(I)) THEN                                              
            IF (TEMP .GT. 5.0) THEN                                     
              IF (I-5) 25, 50, 75                                       
25               RA1(I)=-RB1(I)-RC1(I)                                  
                 GOTO 80                                                
50               RA1(I)=RC1(I)-RB1(I)                                   
                 GOTO 80                                                
75               RA1(I)=RB1(I)+RC1(I)                                   
                                                                        
80            QA2(I,1)=MOD(IB1(I),I)                                    
              DO 110 J=1,L1                                             
                DA1(J)=DB1(J)+DC1(J)                                    
                DO 115 K=1,L2                                           
                  DA2(J,K)=DB2(J,K)+DC2(J,K)                            
115             CONTINUE                                                
                DC1(J)=J                                                
                IA1(J)=MOD(IB1(J),J)*MOD(IC1(J),J)                      
110           CONTINUE                                                  
                                                                        
            ELSE                                                        
              DO 120 J=1,L1                                             
                DA1(J)=DB1(J)-DC1(J)*J                                  
                DO 125 K=1,L2                                           
                  DA2(J,K)=DB2(J,K)+2.0*DC2(J,K)                        
125             CONTINUE                                                
                DC1(J)=SIN(FLOAT(J))                                    
                IA1(J)=MOD(IB1(J),J)                                    
120           CONTINUE                                                  
              IF (IA1(I).NE.0) THEN                                     
                RA1(I)=RB1(I)/IA1(I)                                    
              ELSE                                                      
                RA1(I)=RB1(I)+TAN(COS( FLOAT(IA1(I)) ))                 
              ENDIF                                                     
            ENDIF                                                       
          ELSE                                                          
            DO 130 J=1,L1                                               
              IA1(J)=MOD(IB1(J),MOD(IC1(J),J+20))                       
              DO 135 K=1,L2                                             
                DA2(J,K)=SIN(COS(DB2(J,K))*SIN(DC2(J,K)))               
135           CONTINUE                                                  
              IB1(J)=IA1(J)-3                                           
130         CONTINUE                                                    
            IF (DA2(I,1).GT.0.5) THEN                                   
              KLM=KLM+1                                                 
              DP1(KLM)=IA1(I)                                           
            ENDIF                                                       
          ENDIF                                                         
          QA2(2,I)=QB2(I,3)                                             
        ENDIF                                                           
                                                                        
        IF (DA2(I,1).GT.0.5) THEN                                       
          KLN=KLN+1                                                     
          DM1(KLN)=IA1(I)                                               
        ENDIF                                                           
190   CONTINUE                                                          
                                                                        
      WRITE(6,*) 'RA1= ',RA1                                            
      WRITE(6,*) 'QA2= ',QA2                                            
      WRITE(6,*) 'DA1= ',DA1                                            
      WRITE(6,*) 'DA2= ',DA2                                            
      WRITE(6,*) 'DC1= ',DC1                                            
      WRITE(6,*) 'IA1= ',IA1                                            
      WRITE(6,*) 'IB1= ',IB1                                            
      WRITE(6,*) 'IC1= ',IC1                                            
      WRITE(6,*) 'DP1= ',DP1                                            
      WRITE(6,*) 'DM1= ',DM1                                            
                                                                        
      STOP                                                              
      END                                                               



