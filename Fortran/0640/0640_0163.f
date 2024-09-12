      PROGRAM MAIN                                                    
      REAL    *4          RB (10,10),RC (10,10,10),RD (10,10,10,10)     
      REAL    *8          DB (10,10),DC(10,10,10),DD(10,10,10,10)       
      COMPLEX *8          CEB(10,10),CEC(10,10,10),CED(10,10,10,10)     
      LOGICAL *4                                   L4D(10,10,10,10)     
      INTEGER *4  IL(10)                                                
      DATA            RB/100*1./,RC/1000*1./,RD/10000*1./               
      DATA            DB/100*1./,DC/1000*1/ ,DD/10000*1./               
      DATA                  CEB/100*(1.,1.)/,CEC/1000*(1.,1.)/          
      DATA                  CED/10000*(1.,1.)/                          
      DATA  L4D/10000*.TRUE./                                           
      DATA  IL/1,2,3,4,5,6,7,8,9,10/                                    

      ID1=0                                                             
      DO 11 I1=1,8                                                      
      DO 12 I2=1,8                                                      
      DO 13 I3=1,10                                                     
        ID1=ID1+1                                                       
        IF(ID1.EQ.80) THEN                                              
          RC(I3,I2,I1)=0.0                                              
        ENDIF                                                           
        RC(I3,I2,I1)=RC(I3,I2,I1)*2.                                    
        IF(RC(I3,I2,I1).EQ.0.) THEN                                     
          RB(I2,I1)=CEB(I2,I1)*CEC(I3,I2,I1)                            
        ELSE                                                            
          RB(I2,I1)=CEB(I2,I1)*CEC(I3,I2,I1)                            
        ENDIF                                                           
   13 CONTINUE                                                          
   12 CONTINUE                                                          
   11 CONTINUE                                                          
      WRITE(6,*) 'RC=',RC,'RB=',RB,'ID1=',ID1                           

      DO 21 I1=1,10                                                     
      DO 22 I2=1,10                                                     
        DO 23 I3=1,10                                                   
          DO 24 I4=1,7                                                  
            RD(I3,I4,I2,I1)=DC(I3,I4,I2)                                
            IF(DD(I3,I4,I2,I1).GT.4.) THEN                              
              L4D(I3,I4,I2,I3)=.TRUE.                                   
            ELSE                                                        
              L4D(I3,I4,I2,I3)=.FALSE.                                  
            ENDIF                                                       
   24     CONTINUE                                                      
          IF(IL(I2).GE.10.OR.IL(I1).GE.10) GO TO 23                     
          RC(I3,I2,I1)=RC(I3,I2+1,I1+1)                                 
   23   CONTINUE                                                        
        RB(I2,I1)=DB(I1,I2)+RB(I2,I1)-1.0                               
        CEC(I2,I1,I1)=CMPLX(RB(I2,I1),RB(I2,I2))                        
   22 CONTINUE                                                          
   21 CONTINUE                                                          
      WRITE(6,*) 'RD=',RD,'RB=',RB,'RC=',RC,'CEC=',CEC,'L4D=',L4D       

      DO 31 I1=1,10                                                     
      DO 32 I2=1,10                                                     
        RB(I2,I1)=CEC(I2,I1,I1)+CED(I2,I1,I1,I1)                        
        DO 33 I3=1,10                                                   
          RC(I3,I2,I1)=I3                                               
          IF(L4D(I3,I2,I1,I1)) THEN                                     
            CEC(I3,I2,I1)=CMPLX(I3,I1)                                  
          ELSE                                                          
            CEC(I3,I2,I1)=CMPLX(I3,I2)                                  
            GO TO 34                                                    
          ENDIF                                                         
          DC(I3,I2,I1)=CEC(I3,I2,I1)                                    
   33   CONTINUE                                                        
 34   WRITE(6,*)(CEC(I,I2,I1),I=1,10),(DC(I,I2,I1),I=1,10),             
     +          (RC(I,I2,I1),I=1,10)                                    
   32 CONTINUE                                                          
   31 CONTINUE                                                          
      WRITE(6,*)'RB=',RB                                                
      STOP                                                              
      END                                                               
