      PROGRAM MAIN                                                    
      REAL    *4  RA (10),RB (10,10),RC (10,10,10)                      
      REAL    *8  DA (10,10)                                            
      COMPLEX *8  CEA(10),CEB(10,10),CEC(10,10,10)                      
      LOGICAL *1          LBB(10,10)                                    
      LOGICAL *4          L4B(10,10)                                    
      INTEGER *4                     IC (10,10,10)                      
      DATA  RA/10*1./,RB/100*1./,RC/1000*1./                            
      DATA  DA/100*1./                                                  
      DATA  CEA/10*(1.,1.)/,CEB/100*(1.,1.)/,CEC/1000*(1.,1.)/          
      DATA                 L4B/100*.TRUE./                              
      DATA                 LBB/100*.TRUE./                              
      DATA  IC/1000*1/,J2/2/                                            

      RSUM = 0
      RSM1 = 0

      DO 11 I1=1,10                                                     
        DO 12 I2=1,10                                                   
          RB(I1,I2)=RA(I1)*RA(I2)                                       
          IF(RB(I1,I2).GT.DA(I1,I2)) THEN                               
            RB(I1,I2)=DA(I1,I2)                                         
            L4B(I1,I2)=.FALSE.                                          
          ENDIF                                                         
          RS1=RA(I1)+RA(I2)                                             
          RS2=RA(I1)-RA(I2)                                             
          IF(RS1.GT.RS2+8) THEN                                         
            IF(RS2.LE.0) THEN                                           
              LBB(I1,I2)=.FALSE.                                        
            ELSE                                                        
              LBB(I1,I2)=.TRUE.                                         
            ENDIF                                                       
          ELSE                                                          
            LBB(I1,I2)=.TRUE.                                           
          ENDIF                                                         
          DO 13 I3=1,10                                                 
          DO 14 I4=1,7                                                  
            RC(I3,I2,I1)=CEC(I3,I2,I1)*(0.,1.0)                         
   14     CONTINUE                                                      
   13     CONTINUE                                                      
   12   CONTINUE                                                        
        RSUM=RSUM+RC(I3-1,I2-1,I1)                                      
        IF(LBB(I1,1)) THEN                                              
          RSM1=RSM1+I1                                                  
        ENDIF                                                           
   11 CONTINUE                                                          
      WRITE(6,*) 'RB=',RB,'L4B=',L4B,'LBB=',LBB,'RC=',RC                

      RSUM=0.0                                                          
      RSUM1=0.0                                                         
      ID1=0
      ID2=0
      DO 21 I1=1,10                                                     
        ID1=ID1+1                                                       
        IF(ID1.GT.10) GO TO 25                                          
        RSUM=RSUM+DIM(RA(I1),3.0)                                       
   25 DO 22 I2=I1*J2+1,0                                                
        RB(I2,I1)=ABS(CEB(I2,I1)+CEA(I2))                               
   22 CONTINUE                                                          
        ID2=ID2+1                                                       
        IF(ID2.GT.10) GO TO 21                                          
        RSUM1=RSUM1+DIM(DA(I1,I1),-1.)                                  
   21 CONTINUE                                                          
      WRITE(6,*) 'RSUM=',RSUM,'RSUM1=',RSUM1,'RB=',RB                   

      DO 31 I1=1,10                                                     
        DO 32 I2=1,10                                                   
        DO 33 I3=1,10                                                   
          IF(IC(I3,I2,I1).GT.1000) GO TO 35                             
          RSUM=RSUM+RC(I3,I2,I1)                                        
   33   CONTINUE                                                        
   32   CONTINUE                                                        
   35   RA(I1)=RC(I1,I1,I1)                                             
        RB(I1,I1)=RA(I1)+RB(I1,I1)                                      
   31 CONTINUE                                                          
      WRITE(6,*) 'RSUM=',RSUM,'RA=',RA,'RB=',RB                         
      STOP                                                              
      END                                                               
