      DIMENSION A(2000),B(2000),C(2000)
      DATA A/2000*0/,B/2000*1.0/,C/2000*2.0/
      INTEGER*4 N/1500/,M/10/

      DO 10 J=1,M
      DO 10 I=1,N
        A(I+1) = B(I)*A(I)+C(I)
  10  CONTINUE

      S1=5.
      DO 20 J=1,M
      S1=S1+1.
      DO 20 I=1,N
        S1   = B(I)*S1-C(I)+A(I)
        C(I)=S1
  20  CONTINUE

      S1=100.
      S2=100.
      DO 30 J=1,N
      DO 30 I=1,M
        A(I) = S1  *A(I+1)-S2
  30  CONTINUE

      DO 40 J=1,N
      S2=MIN(1.0,S2+A(J))
      DO 40 I=1,M
        S2   = B(I)*S2-C(I)
  40  CONTINUE

      WRITE(6,*) A,S1,S2
      STOP
      END
