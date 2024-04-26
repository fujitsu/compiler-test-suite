      PROGRAM MAIN
      REAL,DIMENSION(10)::C,D,E                                         
      C=5.0                                                             
      D=2.0                                                             
      DO 10 I=1,10                                                      
        E=C-D                                                           
        IF (I.EQ.10) THEN                                               
          E(6:10)=C(1:5)+D(3:7)                                         
          GOTO 20                                                       
        ENDIF                                                           
  10  CONTINUE                                                          

  20  DO 30 I=1,10                                                      
        IF (I.LE.5) THEN                                                
          IF (E(I).NE.3.0) THEN                                         
            WRITE (6,*) 'NG'
            GOTO 40                                                     
          ENDIF                                                         
        ELSE                                                            
          IF (E(I).NE.7.0) THEN                                         
            WRITE (6,*) 'NG'                         
            GOTO 40                                                     
          ENDIF                                                         
        ENDIF                                                           
  30  CONTINUE                                                          
      WRITE (6,*) 'OK'                               
  40  STOP                                                              
      END                                                               
