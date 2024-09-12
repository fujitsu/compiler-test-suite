      INTEGER*4 A(10),B(10),C(10),D(10)

      DO 10 I=1,10
        A(I) = 0
  10  CONTINUE

      DO 20 I=1,10
        B(I) = A(I) + 1
  20  CONTINUE

      DO 30 I=1,10
        B(I) = A(I)
        C(I) = B(I)
        D(I) = A(I) + C(I)
  30  CONTINUE

      DO 40 I=1,10
        B(I) = A(I) + C(I) + D(I)
        D(I) = A(I) + C(I) + 1.0
  40  CONTINUE
      WRITE(6,*) A,B,C,D
      STOP
      END
