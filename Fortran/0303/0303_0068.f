      PROGRAM MAIN
      REAL    *4  RA(10,10),RB(10,10), RC(10,10)
      REAL    *8  A(10,10), B(10,10), C(10,10)                       
      DATA  RA/100*1./,RB/100*2./,RC/50*-1.,50*1./
      DATA  A/100*1./,B/100*2./,C/50*-1.,50*1./

      DO 11 J=1,10
        DO 12 I=1,10
          A(I,J) = RA(I,J)
          B(I,J) = RB(I,J)
          IF(RC(I,J).GT.0) THEN
            C(I,J) = C(I,J) - 1.0
          ENDIF
   12   CONTINUE
   11 CONTINUE
      WRITE(6,*) 'ok'
      STOP                                                              
      END                                                               
