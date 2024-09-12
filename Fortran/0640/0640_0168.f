      PROGRAM MAIN                                                    
      REAL    *4  RA (10),RB (10,10),RC (10,10,10)                      
      REAL    *8  DA (10),DB (10,10)                                    
      COMPLEX *8          CEB(10,10),CEC(10,10,10)                      
      COMPLEX *16         CDB(10,10)                                    
      LOGICAL *1          LBB(10,10)                                    
      LOGICAL *4  L4A(10),L4B(10,10)                                    
      DATA  RA/10*1./,RB/100*1./,RC/1000*1./                            
      DATA  DA/10*1./,DB/100*1./                                        
      DATA                  CEB/100*(1.,1.)/,CEC/1000*(1.,1.)/          
      DATA                  CDB/100*(1.,1.)/                            
      DATA  L4A/10*.TRUE./,L4B/100*.TRUE./                              
      DATA                 LBB/100*.TRUE./                              

      ID1=0
      ID3=0
      ID4=0
      RMX=0.0
      RSUM=0.0
      DO 11 I1=1,10                                                     
      DO 12 I2=1,10                                                     
        ID1=ID1+1                                                       
        RB(I2,I1)=RA(I2)*RA(I1)                                         
        IF(RB(I2,I1)-RMX) 13,13,14                                      
   14   RMX=RB(I2,I1)                                                   
        J2=I2                                                           
        J1=I1                                                           
   13   DO 15 I3=1,13                                                   
         DB(I2,I1)=RB(I2,I1)*2.0+I3                                     
   15   CONTINUE                                                        
        CEB(I1,I2)=CMPLX(RA(I1),RA(I2))                                 
        IF(ABS(CEB(I1,I2)).GT.2.0) THEN                                 
          CEB(I1,I2)=0.0                                                
          CDB(I1,I2)=CEB(I1-1,I2-1)                                     
        ELSE                                                            
          CDB(I1,I2)=0.0                                                
        ENDIF                                                           
   12 CONTINUE                                                          
   11 CONTINUE                                                          
      WRITE(6,*) 'RB=',RB,'DB=',DB,'CEB=',CEB,'CDB=',CDB                
      WRITE(6,*) 'RMX=',RMX,'J2=',J2,'J1=',J1                           

      ID2=0                                                             
      DO 21 I1=1,10                                                     
        DO 22 I2=1,10                                                   
          ID2=ID2+1                                                     
          RSUM=RSUM+ID2+RB(I1,I2)                                       
          RC(I1,I2,I2)=RC(I1,I2,I2)+RB(I1,I2)                           
          RB(I1,I2)=0.0                                                 
          IF(RC(I1,I2,I2).NE.1.) THEN                                   
            GO TO 23                                                    
          ELSE                                                          
             L4B(I1,I2)=.FALSE.                                         
          ENDIF                                                         
          L4B(I1,I2)=.TRUE.                                             
   23     LBB(I1,I2)=L4B(I1,I2).NEQV.LBB(I1,I2)                         
   22   CONTINUE                                                        
        ID3=ID3+1                                                       
        RA(ID3)=RB(I1,I1)                                               
        IF(ID3.EQ.5) THEN                                               
          L4A(ID3)=L4B(I1,I1).NEQV.LBB(I1,I1)                           
        ENDIF                                                           
   21 CONTINUE                                                          
      WRITE(6,*) 'RB=',RB,'RSUM=',RSUM,'RA=',RA                         
      WRITE(6,*) 'L4B=',L4B,'LBB=',LBB,'RC=',RC,'L4A=',L4A              

      DO 31 I1=1,10                                                     
        ID4=ID4+1                                                       
        IF(ID4.GE.11.AND.ID4.LE.0) GO TO 34                             
        RA(I1)=ID1+I1                                                   
        DA(ID4)=RA(I1)*1.5                                              
   34   DO 32 I2=1,I1                                                   
          CEB(I2,I1)=CMPLX(RA(I1),RA(I2))                               
          DO 33 I3=1,10                                                 
            CEC(I3,I2,I1)=RA(I1)*CEB(I2,I1)+RC(I3,I2,I1)                
   33     CONTINUE                                                      
   32   CONTINUE                                                        
   31 CONTINUE                                                          
      WRITE(6,*) 'RA=',RA,'DA=',DA,'CEB=',CEB,'CEC=',CEC                
      STOP                                                              
      END                                                               
