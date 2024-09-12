      DIMENSION A(20),B(20),C(20)
      DATA A/20*0/,B/20*1.0/,C/20*2.0/
      DATA N/20/

      DO 10 I=1,N
        A(I)=B(I)+C(I)
  10  CONTINUE

      S1=5.
      A(2)=2.
      DO 20 I=1,N
        A(I) = A(I)+B(1)+C(I)+S1
  20  CONTINUE
      A(3)=1.
      C(1)=B(1)+S1

      S1=5.
      A(2)=2.
      DO 30 I=1,N
        B(I) = B(I)+A(1)+A(I)+S1
  30  CONTINUE
      B(3)=1.
      A(1)=A(1)+S1

      S1=5.
      A(2)=2.
      DO 40 I=1,N
        C(I) = C(I)+A(1)+A(I)+S1
  40  CONTINUE
      C(3)=1.
      C(1)=A(1)+S1

      WRITE(6,*) A,B,C
      STOP
      END
