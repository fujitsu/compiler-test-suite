      REAL*4  A(20),B(20),C(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      S=0.
      DO 10 I=1,20
        T1 = S  + A(I)
        T2 = T1 + A(I)
        T3 = T2 + 1.
        T4 = T3 + 2.
        T5 = T4 + C(I)
        T6 = T5 - B(I)
        S  = T6 + C(I)
  10  CONTINUE
      WRITE(6,*) S
      STOP
      END
