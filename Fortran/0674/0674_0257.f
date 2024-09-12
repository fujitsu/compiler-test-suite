      PARAMETER (N=10)
      REAL A(N),B(N),X(N)
      DATA X/-0.1,-7.5,-4.5,-9.9,-6.3,-2.1,-6.5,9.9,4.4,7.9/
      A = 0
      DO 10 I=1,N
      IF(X(I).GT.0.0) GO TO 20
   10 CONTINUE
      CONTINUE
      DO 11 I=1,N
   11 A(I)=SQRT(REAL(I))-0.45
   20 DO 12 I=1,N
   12 B(I)=REAL(I)+5.4
      PRINT *,A,B
      STOP
      END
