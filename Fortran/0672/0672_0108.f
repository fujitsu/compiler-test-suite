      DIMENSION A(100),B(100)
      DO 20 I=1,10
      A(I)=I
   20 CONTINUE
      IF(A(1).LT.0.) GO TO 30
      WRITE(6,1000) (A(I),I=1,10)
      K=1
   30 K=K+1
      DO 40 I=1,10
      B(I)=I*I
      IF(B(I).GT.0.) GO TO 34
   32 K=999
      GO TO 999
   34 CONTINUE
   40 CONTINUE
      IF(B(1).LT.0.) GO TO 50
      K=K+1
      WRITE(6,1000) (B(I),I=1,10)
   50 WRITE(6,2000) K
      STOP
  999 WRITE(6,2000) K
      STOP
 1000 FORMAT(1X,5E20.7)
 2000 FORMAT(1X,10I10)
      END
