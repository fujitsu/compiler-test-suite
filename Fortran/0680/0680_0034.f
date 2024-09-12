      DIMENSION A(20),B(20),C(20)
      DATA A/20*0/,B/20*1.0/,C/20*2.0/

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

      WRITE(6,*) A,S1,S2
      STOP
      END
