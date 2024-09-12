      J=0
      DO 20 I=1,3
      J=J+10
      R1=FLOAT(J)*FLOAT(I)
                                        IF(J.GT.100) R1=100.
   10 R2=FLOAT(J)+FLOAT(I)
   20 CONTINUE
      WRITE(6,100) R1,R2
      IF(R1.GT.90.0001.OR.R1.LT.89.9999) GO TO 90
      IF(R2.GT.33.0001.OR.R2.LT.32.9999) GO TO 90
      WRITE(6,80)
      GO TO 99
   90 WRITE(6,88)
   99 STOP
   80 FORMAT(' *** OK *** ')
   88 FORMAT(' *** NG *** ')
  100 FORMAT(1X,5E20.7)
      END
