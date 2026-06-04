      PROGRAM CV5112                                                    

        type STR
           REAL    *4  RA (10),RB (10,10),RC (10,10,10)                      
           REAL    *8  DA (10),DB (10,10)                                    
           COMPLEX *8          CEB(10,10),CEC(10,10,10)                      
           COMPLEX *16         CDB(10,10)                                    
           LOGICAL *1          LBB(10,10)                                    
           LOGICAL *4  L4A(10),L4B(10,10)                                    
        end type STR
        TYPE(STR) STR_DATA
                                                                       
      DATA  STR_DATA%RA/10*1./,STR_DATA%RB/100*1./,STR_DATA%RC/1000*1./                            
      DATA  STR_DATA%DA/10*1./,STR_DATA%DB/100*1./                                        
      DATA                  STR_DATA%CEB/100*(1.,1.)/,STR_DATA%CEC/1000*(1.,1.)/          
      DATA                  STR_DATA%CDB/100*(1.,1.)/                            
      DATA  STR_DATA%L4A/10*.TRUE./,STR_DATA%L4B/100*.TRUE./                              
      DATA                 STR_DATA%LBB/100*.TRUE./                              
                                                                       
!***** LOOP1 ** INDEX1 **                                               
      ID1=0
      ID3=0
      ID4=0
      RMX=0.0
      RSUM=0.0
      DO 11 I1=1,10                                                     
      DO 12 I2=1,10                                                     
        ID1=ID1+1                                                       
        STR_DATA%RB(I2,I1)=STR_DATA%RA(I2)*STR_DATA%RA(I1)                                         
        IF(STR_DATA%RB(I2,I1)-RMX) 13,13,14                                      
   14   RMX=STR_DATA%RB(I2,I1)                                                   
        J2=I2                                                           
        J1=I1                                                           
   13   DO 15 I3=1,13                                                   
         STR_DATA%DB(I2,I1)=STR_DATA%RB(I2,I1)*2.0+I3                                     
   15   CONTINUE                                                        
        STR_DATA%CEB(I1,I2)=CMPLX(STR_DATA%RA(I1),STR_DATA%RA(I2))                                 
        IF(ABS(STR_DATA%CEB(I1,I2)).GT.2.0) THEN                                 
          STR_DATA%CEB(I1,I2)=0.0                                                
          STR_DATA%CDB(I1,I2)=STR_DATA%CEB(I1-1,I2-1)                                     
        ELSE                                                            
          STR_DATA%CDB(I1,I2)=0.0                                                
        ENDIF                                                           
   12 CONTINUE                                                          
   11 CONTINUE                                                          
      WRITE(6,*) '**CVCT5112**LOOP1**'                                  
      WRITE(6,*) 'RB=',STR_DATA%RB,'DB=',STR_DATA%DB,'CEB=',STR_DATA%CEB,'CDB=',STR_DATA%CDB                
      WRITE(6,*) 'RMX=',RMX,'J2=',J2,'J1=',J1                           
                                                                       
!***** LOOP2 ** INDEX2 **                                               
      ID2=0                                                             
      DO 21 I1=1,10                                                     
        DO 22 I2=1,10                                                   
          ID2=ID2+1                                                     
          RSUM=RSUM+ID2+STR_DATA%RB(I1,I2)                                       
          STR_DATA%RC(I1,I2,I2)=STR_DATA%RC(I1,I2,I2)+STR_DATA%RB(I1,I2)                           
          STR_DATA%RB(I1,I2)=0.0                                                 
          IF(STR_DATA%RC(I1,I2,I2).NE.1.) THEN                                   
            GO TO 23                                                    
          ELSE                                                          
             STR_DATA%L4B(I1,I2)=.FALSE.                                         
          ENDIF                                                         
          STR_DATA%L4B(I1,I2)=.TRUE.                                             
   23     STR_DATA%LBB(I1,I2)=STR_DATA%L4B(I1,I2).NEQV.STR_DATA%LBB(I1,I2)                         
   22   CONTINUE                                                        
        ID3=ID3+1                                                       
        STR_DATA%RA(ID3)=STR_DATA%RB(I1,I1)                                               
        IF(ID3.EQ.5) THEN                                               
          STR_DATA%L4A(ID3)=STR_DATA%L4B(I1,I1).NEQV.STR_DATA%LBB(I1,I1)                           
        ENDIF                                                           
   21 CONTINUE                                                          
      WRITE(6,*) '**CVCT5112** LOOP2 **'                                
      WRITE(6,*) 'RB=',STR_DATA%RB,'RSUM=',RSUM,'RA=',STR_DATA%RA                         
      WRITE(6,*) 'L4B=',STR_DATA%L4B,'LBB=',STR_DATA%LBB,'RC=',STR_DATA%RC,'L4A=',STR_DATA%L4A              
                                                                       
!***** LOOP3** INDEX4 **                                                
      DO 31 I1=1,10                                                     
        ID4=ID4+1                                                       
        IF(ID4.GE.11.AND.ID4.LE.0) GO TO 34                             
        STR_DATA%RA(I1)=ID1+I1                                                   
        STR_DATA%DA(ID4)=STR_DATA%RA(I1)*1.5                                              
   34   DO 32 I2=1,I1                                                   
          STR_DATA%CEB(I2,I1)=CMPLX(STR_DATA%RA(I1),STR_DATA%RA(I2))                               
          DO 33 I3=1,10                                                 
            STR_DATA%CEC(I3,I2,I1)=STR_DATA%RA(I1)*STR_DATA%CEB(I2,I1)+STR_DATA%RC(I3,I2,I1)                
   33     CONTINUE                                                      
   32   CONTINUE                                                        
   31 CONTINUE                                                          
      WRITE(6,*) '**CVCT5112**LOOP3**'                                  
      WRITE(6,*) 'RA=',STR_DATA%RA,'DA=',STR_DATA%DA,'CEB=',STR_DATA%CEB,'CEC=',STR_DATA%CEC                
      STOP                                                              
      END                                                               
