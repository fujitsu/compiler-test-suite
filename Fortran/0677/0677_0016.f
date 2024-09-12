      INTEGER*4 A(10),B(10),C(10)
      DATA A/10*1/,B/10*2/
      COMMON /BLK/ D(10)
      INTEGER*4 D

      D(1)=5
      D(2)=9
      DO 10 I=1,10
        C(I) = A(B(I))
        D(A(I)) = C(I)
  10  CONTINUE

      WRITE(6,*) A,B,C,D(1),D(2)
      STOP
      END
