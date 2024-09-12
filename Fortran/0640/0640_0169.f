      PROGRAM MAIN                                                    
      REAL    *4  RA (10),RB (10,10),RC (10,10,10)                      
      REAL    *8  DA (10),DB (10,10),DC(10,10,10)                       
      REAL    *8  QA (10),QB (10,10),QC(10,10,10)                       
      COMPLEX *8  CEA(10),CEB(10,10),CEC(10,10,10)                      
      COMPLEX *16 CDA(10),CDB(10,10),CDC(10,10,10)                      
      CHARACTER*20 SB                                                   
      LOGICAL *1          LBB(10)                                       
      LOGICAL *4  L4A(10),L4B(10,10)                                    
      DATA  RA/10*1./,RB/100*1./,RC/1000*1./                            
      DATA  DA/10*1./,DB/100*1./,DC/1000*1/                             
      DATA  QA/10*1./,QB/100*1./,QC/1000*1/                             
      DATA  CEA/10*(1.,1.)/,CEB/100*(1.,1.)/,CEC/1000*(1.,1.)/          
      DATA  CDA/10*(1.,1.)/,CDB/100*(1.,1.)/,CDC/1000*(1.,1.)/          
      DATA                 L4B/100*.TRUE./                              
      DATA  L4A/10*.TRUE./,LBB/10*.TRUE./                               
      DATA  RSUM/0./,RSM1/0./                                           
      DATA  SB/'BBBBBBBBBBB'/                                           

      ID1=0                                                             
      DO 11 I1=10,1,-1                                                  
        ID1=ID1+1                                                       
        RSUM=RSUM+RA(ID1)                                               
        IF(ID1.GT.7.OR.L4A(ID1).OR.I1.EQ.3) GO TO 15                    
          QA(ID1)=RA(ID1)-QA(I1)                                        
   16     DA(ID1)=0.0                                                   
          CEA(ID1)=0.0                                                  
          CDA(ID1)=0.0                                                  
       GO TO 17                                                         
   15  IF(LBB(ID1).NEQV.LBB(I1)) GO TO16                                
   17  DO 12 I2=1,10                                                    
         DO 13 I3=1,10                                                  
           RC(I2,I3,I1)=RC(I2,I3,I1)+RB(I2,I3)                          
           DC(I2,I3,I1)=RC(I2,I3,I1)                                    
   13    CONTINUE                                                       
         CEB(I2,I1)=CMPLX(RA(I2),RA(I1))*CEB(I2,I1)                     
         IF(IMAG(CEB(I2,I1)).GE.3..OR.REAL(CEB(I2,I1)).GE.4.) THEN      
             RB(I2,I1)=CABS(CEB(I2,I1))-3.                              
         ELSE                                                           
             RB(I2,I1)=CABS(CEB(I2,I1))                                 
         ENDIF                                                          
   12  CONTINUE                                                         
       RSM1=RSM1+RA(I1)                                                 
   11 CONTINUE                                                          
      WRITE(6,*) 'RSUM=',RSUM,'RSM1=',RSM1                              
      WRITE(6,*) 'QA=',QA,'DA=',DA,'CEA=',CEA,'CDA=',CDA                
      WRITE(6,*) 'RC=',RC,'CEB=',CEB,'RB=',RB                           

      DO 21 I1=-10,-1                                                   
        IF(RA(ABS(I1)).NE.0.) THEN                                      
           QA(ABS(I1))= QA(-I1)+1.                                      
           DA(ABS(I1))= DA(-I1)+1.                                      
           CEA(ABS(I1))=CEA(-I1)+1.                                     
           CDA(ABS(I1))=CDA(-I1)+1.                                     
        ELSE                                                            
           SB=SB(1:11+I1)//'A'                                          
        ENDIF                                                           
        DO 22 I2=1,10                                                   
          IF(RB(ABS(I1),I2).GE.1.) THEN                                 
            IF(L4B(ABS(I1),I2)) THEN                                    
              CEB(ABS(I1),I2)=CMPLX(RB(-I1,I2),I2)                      
            ENDIF                                                       
          ENDIF                                                         
          DO 23 I3=1,3                                                  
            IF(RC(ABS(I1),I2,I3).GE.1.) THEN                            
              QC(ABS(I1),I2,I3)= QB(I2,-I1)+QA(I3)                      
              DC(ABS(I1),I2,I3)= DB(I2,-I1)+DA(I3)                      
              CEC(ABS(I1),I2,I3)= CEB(I2,-I1)+CEA(I3)                   
              CDC(ABS(I1),I2,I3)= CDB(I2,-I1)+CDA(I3)                   
              RSUM=RSUM+DC(ABS(I1),I2,I3)                               
            ELSE                                                        
              RSUM=RSUM+CEC(ABS(I1),I2,I3)                              
            ENDIF                                                       
   23     CONTINUE                                                      
   22   CONTINUE                                                        
   21 CONTINUE                                                          
      WRITE(6,*) 'QA=',QA,'DA=',DA,'CEA=',CEA,'CDA=',CDA,'SB=',SB       
      WRITE(6,*) 'CEB=',CEB,'QC=',QC,'DC=',DC,'CEC=',CEC,'CDC=',CDC     
      WRITE(6,*) 'RSUM=',RSUM                                           
      STOP                                                              
      END                                                               
