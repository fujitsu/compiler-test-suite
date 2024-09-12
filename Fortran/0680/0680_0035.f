      DIMENSION A(20),B(20),C(20)
      DATA A/20*0/,B/20*1.0/,C/20*2.0/

      S1=5.
      S2=2.
      DO 10 I=1,19
        A(I+1) = B(I)*A(I)+C(I)
        S1   = B(I)*S1-C(I)
  10  CONTINUE

      DO 30 I=1,10
        A(1) = B(I)*A(1)-C(I)
        S2   = B(I)*S2-C(I)
  30  CONTINUE

      WRITE(6,*) A,S1,S2
      STOP
      END
