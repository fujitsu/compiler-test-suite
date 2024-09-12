      PROGRAM MAIN                                                    
      REAL    *4  RA (10),RB (10,10),RC (10,10,10),RD (10,10,10,10)     
      REAL    *8  DA (10),DB(10,10) ,DC(10,10,10) ,DD(10,10,10,10)      
      REAL    *8  QA (10),QB (10,10),QC(10,10,10)                       
      COMPLEX *8  CEA(10), CEB(10,10),CEC(10,10,10)                     
      DATA  RA/10*1./,RB/100*1./,RC/1000*1./,RD/10000*1./               
      DATA  DA/10*1./,DB/100*1./,DC/1000*1./,DD/10000*1./               
      DATA  QA/10*1./,QB/100*1./,QC/1000*1./,J2/2/,ID1/11/              
      DATA  CEA/10*(1.,1.)/, CEB/100*(1.,1.)/,CEC/1000*(1.,1.)/         

      DO 11 I1=1,10                                                     
      DO 12 I2=1,10                                                     
        DO 13 I3=1,10                                                   
          DO 14 I4=1,10                                                 
            RD(I1,I2,I3,I4)=RA(I1)+RA(I2)+RA(I3)+RA(I4)                 
            DD(I1,I3,I2,I4)=DA(I1)*DA(I2)+DA(I3)-DA(I4)                 
            IF(RD(I1,I2,I3,I4).GT.3.) THEN                              
              RB(I1,I2)=0.0                                             
            ENDIF                                                       
   14     CONTINUE                                                      
          RC(I3,I2,I1)=RD(I3,I2,I1,I1)                                  
          QC(I3,I2,I1)=RC(I3,I2,I1)*RA(I1)                              
          ID1=ID1-1                                                     
          IF(ID1.LE.0) THEN                                             
            GO TO 13                                                    
          ELSE                                                          
            DC(ID1,ID1,ID1)=0.0                                         
          ENDIF                                                         
   13   CONTINUE                                                        
        RB(I2*J2-I2,I1)=RA(I2)*RA(I1)+CEB(I2,I1)                        
        ID1=11                                                          
   12 CONTINUE                                                          
   11 CONTINUE                                                          
      WRITE(6,*) 'RD=',RD,'DD=',DD,'RB=',RB,'RC=',RC,'QC=',QC,'DC=',DC  

      DO 21 I1=1,10                                                     
      DO 22 I2=1,10                                                     
        IF(RA(I1).EQ.1.OR.RB(I2,I1).NE.1) THEN                          
          CALL SUB1(CEB,CEC,10)                                         
        ENDIF                                                           
        DB(I1,I2)=CEA(I1)+CEB(I1,I2)*CEA(I1)                            
        QB(I1,I2)=DB(I1,I2)+RA(I1)                                      
        DO 23 I3=1,10                                                   
          IF(I1+I2-I3) 24,25,26                                         
   24       RC(I1,I2,I3)=0.0                                            
            GO TO 27                                                    
   25       RC(I1,I2,I3)=RA(I1)                                         
            GO TO 27                                                    
   26       RC(I1,I2,I3)=DA(I1)                                         
   27       DC(I1,I3,I2)=DC(I1,I3,I2)+I1+I2+I3                          
   23   CONTINUE                                                        
   22 CONTINUE                                                          
   21 CONTINUE                                                          
      WRITE(6,*) 'DA=',DA,'QA=',QA,'RC=',RC,'DC=',DC                    
      STOP                                                              
      END                                                               

      SUBROUTINE SUB1(CEB,CEC,N)                                        
      COMPLEX*8 CEB(N,N),CEC(N,N,N)                                     
      DO 11 I1=1,10                                                     
      DO 12 I2=1,10                                                     
      DO 13 I3=1,10                                                     
         CEC(I3,I2,I1)=CEB(I3,I2)+CEC(I3,I2,I1)                         
         IF(CEC(I3,I2,I1).EQ.(1.,1.)) THEN                              
            CEC(I3,I2,I1)=CEB(I3,3)+CEC(I3,I2,I1)                       
         ENDIF                                                          
   13 CONTINUE                                                          
   12 CONTINUE                                                          
   11 CONTINUE                                                          
      RETURN                                                            
      END                                                               


