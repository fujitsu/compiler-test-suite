      DIMENSION A(20),B(20),C(20)
      DATA A/20*0/,B/20*1.0/,C/20*2.0/
      DATA N/3/

      DO 100 J=1,N
      DO 10 I=1,19
        A(I+1) = B(I)*A(I)+C(I)
  10  CONTINUE

      S1=5.
      DO 20 I=1,9
        S1   = B(I)*S1-C(I)
  20  CONTINUE

      S2=2.
      DO 30 I=1,10
        A(I+1) = B(I)*A(I)-C(I)+S1
  30  CONTINUE

      DO 40 I=1,9
        S2   = B(I)*S2-C(I)
  40  CONTINUE
 100  CONTINUE

      WRITE(6,*) A,S1,S2
      STOP
      END
