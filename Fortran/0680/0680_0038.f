      DIMENSION A(20),B(20),C(20)
      DATA A/20*0/,B/20*1.0/,C/20*2.0/

      DO 10 J=1,3
      DO 10 I=1,19
        A(I+1) = B(I)*A(I)+C(I)
  10  CONTINUE

      S1=5.
      DO 20 J=1,9
      S1=S1+1.
      DO 20 I=1,9
        S1   = B(I)*S1-C(I)
  20  CONTINUE

      S2=2.
      DO 30 J=1,10
      DO 30 I=1,10
        A(I+2) = S2  *A(I+1)-S2
  30  CONTINUE

      DO 40 J=1,9
      S2=S2+A(J)
      DO 40 I=1,9
        S2   = B(I)*S2-C(I)
  40  CONTINUE

      WRITE(6,*) A,S1,S2
      STOP
      END
