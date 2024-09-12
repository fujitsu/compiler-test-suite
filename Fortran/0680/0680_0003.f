      DIMENSION A(20),      C(20)
      DATA A/20*0/,B/   1.0/,C/20*2.0/
      DATA N/3/,M/10/

      S2=1.
      DO 100 J=1,N
      DO 10 I=1,M
        A(I) = B   *A(I)+C(I)
  10  CONTINUE

      S1=5.
      DO 20 I=1,M
        S1   = B   *S1-C(I)+S2
  20  CONTINUE

      S2=2.
      DO 30 I=1,M
        A(I) = B   *A(I)-C(I)*S2
  30  CONTINUE

      DO 40 I=1,M
        C(I) = B   *S2-C(I)*S1
  40  CONTINUE
 100  CONTINUE

      WRITE(6,*) A,S1,S2,C
      STOP
      END