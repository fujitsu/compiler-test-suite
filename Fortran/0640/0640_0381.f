      PROGRAM MAIN
      REAL*4 RA(10),RB(10),RC(10),RD(10),RE(10),RF(10)                  
      DATA   RA/10*1./,RB/10*2./,RC/10*3./                              
      DATA   RD/10*1./,RE/10*2./,RF/10*3./                              
      DO 10 I=1,100                                                     
        IF(I.LE.10) THEN                                                
          RA(I)=RB(I)                                                   
        ENDIF                                                           
10    CONTINUE                                                          
      WRITE(6,*) '**IFA1**'                                             
      WRITE(6,*) 'RA = ',RA                                             
      DO 20 I=1,100                                                     
        IF(I.LE.10) THEN                                                
          RC(I)=RD(I)+RE(I)                                             
        ENDIF                                                           
20    CONTINUE                                                          
      WRITE(6,*) '**IFA2**'                                             
      WRITE(6,*) 'RC = ',RC                                             
      DO 30 I=1,100                                                     
        IF(I.LE.10) THEN                                                
          RF(I)=RA(I)                                                   
         IF(I.LT.5) THEN                                                
           RD(I)=RF(I)                                                  
         ENDIF                                                          
        ENDIF                                                           
30    CONTINUE                                                          
      WRITE(6,*) '**IFA3**'                                             
      WRITE(6,*) 'RD = ',RD                                             
      WRITE(6,*) 'RF = ',RF                                             
      DO 40 I=1,100                                                     
        IF(I.LE.5) THEN                                                 
          RF(I)=RA(I)                                                   
         ELSEIF(I-1.EQ.5) THEN                                          
          RD(I)=RF(I)                                                   
         ENDIF                                                          
40    CONTINUE                                                          
      WRITE(6,*) '**IFA4**'                                             
      WRITE(6,*) 'RD = ',RD                                             
      WRITE(6,*) 'RF = ',RF                                             
      STOP                                                              
      END                                                               
