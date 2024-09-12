      PROGRAM MAIN
      REAL*4 RA(10),RB(10),RC(10),RD(10),RE(10),RF(10)                  
      DATA   RA/10*1./,RB/10*2./,RC/10*3./                              
      DATA   RD/10*1./,RE/10*2./,RF/10*3./                              
      DO 10 I=1,100                                                     
        IF(I.LE.10) THEN                                                
          RA(I)=1.                                                      
        ENDIF                                                           
10    CONTINUE                                                          
      WRITE(6,*) '**IFC1**'                                             
      WRITE(6,*) 'RA = ',RA                                             
      DO 30 I=1,100                                                     
        IF(I.LE.10) THEN                                                
          RF(I)=1.                                                      
         IF(I.LT.5) THEN                                                
           RD(I)=1.                                                     
         ENDIF                                                          
        ENDIF                                                           
30    CONTINUE                                                          
      WRITE(6,*) '**IFC2**'                                             
      WRITE(6,*) 'RD = ',RD                                             
      WRITE(6,*) 'RF = ',RF                                             
      DO 40 I=1,100                                                     
        IF(I.LE.6) THEN                                                 
          RF(I)=1.                                                      
         ELSEIF(I.EQ.9) THEN                                            
          RD(I)=2.                                                      
         ENDIF                                                          
40    CONTINUE                                                          
      WRITE(6,*) '**IFC3**'                                             
      WRITE(6,*) 'RD = ',RD                                             
      WRITE(6,*) 'RF = ',RF                                             
      STOP                                                              
      END                                                               
