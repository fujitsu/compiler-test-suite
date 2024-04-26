      IMPLICIT REAL*8(S,T)
      REAL*8  A(20),B(20),C(20)
      DATA  A/10*1.D0,10*3.D0/,B/20*4.D0/,C/20*3.D0/
      DO 5 I=1,20
        C(I)=DFLOAT(I)
  5   CONTINUE
      S1=0.D0
      S2=0.D0
      S3=0.D0
      S4=0.D0
      S5=0.D0
      S6=0.D0
      S7=0.D0
      S8=0.D0
      S9=0.D0
      DO 10 I=2,19

        T1 = S1 - A(I)
        S1  = B(I) + T1

        T2 = A(I) - C(I) - S2
        S2 = B(I) - T2

        T3 = S3 + A(I)
        T4 = T3 + A(I-1) + C(I)
        S3 = T4 - B(I)

        T5 = S4 + A(I)
        S4 = T5 - B(I) - C(I)

        T6 = S5 + A(I) - C(I-1)
        S5 = T6 - B(I) - C(I)

        T7 = S6 - A(I)
        S6 = T7 - C(I)

        T8 = S7 + A(I)
        S7 = T8 + B(I)

        T9 = S8 + A(I)
        S8 = T9

        T10= S9
        S9 = T10- C(I)
  10  CONTINUE
      WRITE(6,600) S1
      WRITE(6,600) S2
      WRITE(6,600) S3
      WRITE(6,600) S4
      WRITE(6,600) S5
      WRITE(6,600) S6
      WRITE(6,600) S7
      WRITE(6,600) S8
      WRITE(6,600) S9
 600  FORMAT(1H ,   D20.9)
      STOP
      END
