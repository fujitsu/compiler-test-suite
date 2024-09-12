      DIMENSION A(20),B(20),C(20)
      DATA A/20*0/,B/20*1.0/,C/20*2.0/
      DATA N/20/
      INTEGER*4 L(20)/1,2,3,20,0,6,7,8,9,10,11,1,13,0,15,16,17,0,19,20/

      DO 10 J=1,N
      DO 10 I=1,L(J)
        A(I)=B(I)+C(I)
  10  CONTINUE

      S1=5.
      A(2)=2.
      DO 20 J=1,N
      DO 20 I=1,L(J)
        A(I) = A(I)+B(1)+C(I)+S1
  20  CONTINUE
      A(3)=1.
      C(1)=B(1)+S1

      S1=5.
      A(2)=2.
      DO 30 J=1,N
      DO 30 I=1,L(J)
        B(I) = B(I)+A(1)+A(I)+S1
  30  CONTINUE
      B(3)=1.
      A(1)=A(1)+S1

      S1=5.
      A(2)=2.
      DO 40 J=1,N
      DO 40 I=1,L(J)
        C(I) = C(I)+A(1)+A(I)+S1
  40  CONTINUE
      C(3)=1.
      C(1)=A(1)+S1

      WRITE(6,*) A,B,C
      STOP
      END
