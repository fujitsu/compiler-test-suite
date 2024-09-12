      IMPLICIT REAL*8(D,W)
      R=3.
      D=5D0
      DO 10 I=1,3
      D2=D**2
      R2=R**2
      WW=R**2+D**2
   10 CONTINUE
      WRITE(6,100) WW
      W1=(WW-34D0)/WW
      W2=DABS(W1)
      IF(W1.GT.1D-7) GO TO 90
      WRITE(6,80)
      GO TO 99
   90 WRITE(6,88)
   99 STOP
  100 FORMAT(1X,6D20.7)
   80 FORMAT(' *** OK *** ')
   88 FORMAT(' *** NG *** ')
      END
