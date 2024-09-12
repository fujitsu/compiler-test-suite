      PROGRAM MAIN                                                   
      REAL    *4  RA (10),RB (10,10),RC (10,10,10),RD (10,10,10,10)     
      REAL    *8  DA (10),DB (10,10),DC (10,10,10)                      
      COMPLEX *8  CEA(10),CEB(10,10),CEC(10,10,10)                      
      LOGICAL *1  LBA(10)                                               
      LOGICAL *4  L4A(10),L4B(10,10)                                    
      INTEGER *4  IL(10)                                                
      DATA  RA/10*1./,RB/100*1./,RC/1000*1./,RD/10000*1./               
      DATA  DA/10*1./,DB/100*1./,DC/1000*1./                            
      DATA  CEA/10*(1.,1.)/,CEB/100*(1.,1.)/,CEC/1000*(1.,1.)/          
      DATA  L4A/10*.TRUE./,L4B/100*.TRUE./                              
      DATA  LBA/10*.TRUE./                                              
      DATA  IL/1,2,3,4,5,6,7,8,9,10/                                    

      RSUM=0.                                                           
      ID1=0                                                             
      DO 11 I1=2,8                                                      
        DO 12 I2=1,10                                                   
          DO 13 I3=1,10                                                 
             RB(I2,I1)=DB(I2,I1)+RB(I2,I1)+I3                           
             IF(RB(I2,I1).EQ.5) THEN                                    
               IF(IL(I2).GT.2.AND.IL(I2).LT.9) THEN                     
                 DB(I2-1,I1)=0.0                                        
               ENDIF                                                    
             ENDIF                                                      
   13     CONTINUE                                                      
          RSUM=RSUM+RB(I2,I1)                                           
          ID1=ID1+10                                                    
          IF(ID1.GT.1000) THEN                                          
            RB(I2,I1)=0.0                                               
          ENDIF                                                         
   12   CONTINUE                                                        
   11 CONTINUE                                                          
      WRITE(6,*) 'RB=',RB,'DB=',DB,'RSUM=',RSUM,'ID1=',ID1              

      RSUM=0.0                                                          
      DO 21 I1=1,9                                                      
        DO 22 I2=1,9                                                    
          DO 23 I3=1,9                                                  
            CEC(I1,I2,I3)=CEB(I2,I3)+CEA(I1)                            
            IF(RA(I3).GT.RD(I1,I1,I3,I2)) THEN                          
              RA(I3)=RA(I3)+RB(I1,I2)*RB(I1+1,I2+1)                     
              DA(I1)=DA(I1)+RB(I1,I3)*RB(I1+1,I3+1)                     
            ELSE                                                        
              RA(I3)=0.0                                                
              DA(I1)=0.0                                                
            ENDIF                                                       
            R1=RA(I3)+DA(I1)                                            
            RSUM=RSUM+R1                                                
   23     CONTINUE                                                      
   22   CONTINUE                                                        
   21 CONTINUE                                                          
      WRITE(6,*) 'RSUM=',RSUM,'CEC=',CEC,'RA=',RA,'DA=',DA              

      ID3=0                                                             
      RSUM=0.0                                                          
      DO 31 I1=1,10                                                     
        RSUM=RSUM+RA(I1)*DA(I1)                                         
        IF(ID3.EQ.0) GO TO 34                                           
          RSUM=RSUM-1.                                                  
          GO TO 34                                                      
   35   ID3=ID3+1                                                       
        DO 32 I2=1,10                                                   
          DO 33 I3=1,10                                                 
            RC(I3,I2,I1)=RC(I3,I2,I1)+DC(I3,I2,I1)                      
   33     CONTINUE                                                      
   32   CONTINUE                                                        
        IF(ID3.GT.4) GO TO 36                                           
          RSUM=RSUM+1.5                                                 
          GO TO 36                                                      
   34   L4A(I1)=.FALSE..OR.LBA(I1)                                      
        LBA(I1)=.FALSE.                                                 
        GO TO 35                                                        
   36   IF(L4A(I1).EQV.LBA(I1)) THEN                                    
        ENDIF                                                           
   31 CONTINUE                                                          
      WRITE(6,*) 'RSUM=',RSUM,'RC=',RC,'L4A=',L4A,'L4B=',L4B            
      STOP                                                              
      END                                                               
