      REAL   *4 A(10),B(10),C(10)
      DATA A/10*1./,B/10*2./
      COMMON /BLK/ D(10)
      REAL   *4 D

      DO 10 I=1,10
        C(I) = A(I) + B(I)
        A(I) = C(I) - B(I)
        D(I) = C(I) * B(I)
        A(I) = D(I) / B(I)
        D(I) = A(I) + B(I) - C(I) * A(I) / B(I)
  10  CONTINUE

      WRITE(6,*) A,B,C,D
      STOP
      END
