      REAL*4  A(20),B(20),C(20)
      DATA  A,B,C/60*1./
      S = 1.
      DO 10 I=1,20
        T1 = S + A(I)
        T2 = B(I) + T1
        S  = T2 - C(I)
  10  CONTINUE
      WRITE(6,*) S
      STOP
      END
