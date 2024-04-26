      PROGRAM MAIN
      REAL*4  RA(20),RX,RY,RC,RB,RD(10)
      REAL*8  DA(20),DC
      EQUIVALENCE (RX,RY),(RA(3),RC),(RA(8),RB),(DA(3),DC)
      DATA RA/20*1.0/,DA/20*1.0/,RD/10*1.0/
C
      DO 10 I=5,14
         RY=RD(I-4)+I
         IF(RX.GE.8.0) THEN
            RC=11.0
            IF(RB.EQ.1) THEN
               RD(I-4)=DA(I)+DA(I+1)
            ENDIF
         ELSE
            RC=15.0
            IF(RB.EQ.1) THEN
               RD(I-4)=DA(I)-DA(I+1)
            ENDIF
         ENDIF
   10 CONTINUE
C
      WRITE(6,*) 'RA='
      WRITE(6,1) RA
      WRITE(6,*) 'RD='
      WRITE(6,1) RD
      WRITE(6,*) 'RX='
      WRITE(6,1) RX
    1 FORMAT(5E15.6)
      STOP
      END
