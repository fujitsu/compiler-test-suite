      IMPLICIT REAL*8(A-H,O-Z)

      COMMON /VSU1/A(1024),B(1024),C(1024),D(1024)

      DO 5 I=1,1024
        A(I) = 0
        B(I) = 0
        C(I) = 0
        D(I) = 0
   5  CONTINUE

      DO 10 I=1,19
        A(I+1) = B(I)*A(I)+C(I)
  10  CONTINUE

      S1=5.
      DO 20 I=1,9
        S1   = B(I)*S1-C(I)
  20  CONTINUE

      S2=2.
      DO 30 I=1,10
        A(1) = B(I)*A(1)-C(I)
  30  CONTINUE

      DO 40 I=1,9
        S2   = B(I)*S2-C(I)
  40  CONTINUE
      WRITE(6,100) A,S1,S2
 100  FORMAT(1H ,2(G19.5,3X) )
      STOP
      END
