      PROGRAM MAIN                                                    
      REAL   EA(256),EB(256),EC(256),EMA/0/,EMB/0/,EMC/0/               
      LOGICAL LA(256),LB(256),LC(256)                                   
      DO 10 I=256,1,-1                                                  
        EA(I)=0.5                                                       
        IF(I.LT.4) EA(I)=100+I                                          
        EB(I)=-1.                                                       
        IF(I.GT.60.AND.I.LE.63) EB(I)=-250+I                            
        EC(I)=1.                                                        
        IF(I.GT.253) EC(I)=9999.                                        
        LA(I)=MOD(I-1,3).EQ.1                                           
        LB(I)=MOD(I,3).EQ.1                                             
        LC(I)=MOD(I+1,3).EQ.1                                           
  10  CONTINUE                                                          
      DO 20 I=256,1,-1                                                  
        IF(LA(I)) THEN                                                  
          IF(EMA.LT.EA(I)) THEN                                         
            EMA=EA(I)                                                   
            JA=I+1                                                      
          ENDIF                                                         
        ENDIF                                                           

        IF(.NOT.LB(I)) THEN                                             
          EA(I)=EA(I)*2                                                 
        ELSE                                                            
          IF(EMB.GT.EB(I)) EMB=EB(I)                                    
          EA(I)=EA(I)+2                                                 
        ENDIF                                                           
        IF(LC(I)) THEN                                                  
          EDIF=EMC-EC(I)                                                
          IF(EDIF) 21,22,22                                             
   21      EMC=EC(I)                                                    
   22     CONTINUE                                                      
        ENDIF                                                           
   20 CONTINUE                                                          
      WRITE(6,*) EA,EB,EC                                               
      WRITE(6,*) EMA,EMB,EMC,JA                                         
      END                                                               
